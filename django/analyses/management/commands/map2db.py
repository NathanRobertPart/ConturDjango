import os
import glob
from argparse import ArgumentParser
import django
import sys
import pickle

CURRENT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.dirname(os.path.dirname(CURRENT_DIR)))
sys.path.append(os.path.dirname(os.path.dirname(os.path.dirname(CURRENT_DIR))))

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "contur_db.settings")
django.setup()

from analyses.models import map_data, runcard, results_header, map_header, map_pickle

class file_discovery(object):

    def __init__(self, directory):

        self.map_list = []
        self.dir_path = os.path.dirname(os.path.realpath(__file__)) + "/" + directory
        self.map_count = 0
        self.file_dict = []

        self.get_files()
        self.identify_relevent()

    def get_files(self):
        print(self.dir_path)
        for filename in glob.iglob(self.dir_path + '/**/.map', recursive=True):
            print(filename)
            self.map_list.append(filename)

    def identify_relevent(self):
        for item in self.map_list:
            address = item.split('/')
            name = address[-1]
            self.file_dict.append(item)


class store_data(object):

    def __init__(self,file_dict):
        self.file_dict = file_dict
        self.map_dict = dict()
        self.entry = 0
        self.read_map()

    def read_map(self):
        for file_name in self.file_dict:
            print(file_name)
            self.file_id = file_name.split("/")[-1]
            with open(file_name, 'r+b') as myfile:
                data = pickle.load(myfile)
                print(data)
                self.map_dict[self.file_id] = data


class db_upload(object):

    def __init__(self,map_dict,rc_name):
        self.map_dict = map_dict
        self.i = 0
        self.runcard = rc_name
        self.upload()


    def upload(self):
        header = self.upload_header()
        for item in self.map_dict:

            self.upload_map_position(item,header)


    def upload_header(self):
        db = runcard.objects.filter(runcard_name=str(self.runcard))
        if len(db) == 0:
            print("Runcard Not Found. Please select a runcard from the following list:")
            print(runcard.objects.all())
        else:
            runcard_object,runcard_created = runcard.objects.get_or_create(runcard_name=str(self.runcard))
            results_object = input("Please enter a name for the results object: ")

            upload_header, created_header =\
                results_header.objects.get_or_create(
                    name=str(results_object),
                    runcard=runcard_object,
                    mc_ver="0.0.0",
                    contur_ver="0.0.0",
                    parent=None)

            upload_header.save()

            return upload_header

    def upload_map_position(self,item,header):
        upload_pos, created_position = \
            map_header.objects.get_or_create(analyses=str(item), parent=header)

        upload_pos.save()
        print("Uploaded")
        self.upload_map_data(upload_pos, self.map_dict[item], item)


    def upload_map_data(self,header,select_dict,item):
        upload_object, created_object = \
                            map_pickle.objects.get_or_create(
                                parent=header,
                                pickle=select_dict,
                         )
        upload_object.save()


if __name__ == "__main__":
    parser = ArgumentParser(description="Create Yoda File from Database")
    parser.add_argument('--id', '-i')
    arguments = parser.parse_args()


