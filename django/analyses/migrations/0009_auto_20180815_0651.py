# Generated by Django 2.0.5 on 2018-08-15 06:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('analyses', '0008_auto_20180814_1442'),
    ]

    operations = [
        migrations.RenameField(
            model_name='results_header',
            old_name='mc_ver',
            new_name='herwig_ver',
        ),
        migrations.AddField(
            model_name='results_header',
            name='rivet_ver',
            field=models.CharField(default='0.0.0', max_length=20),
        ),
        migrations.AlterField(
            model_name='attached_files',
            name='file',
            field=models.FileField(upload_to=''),
        ),
        migrations.AlterField(
            model_name='attached_papers',
            name='file',
            field=models.FileField(upload_to=''),
        ),
        migrations.AlterField(
            model_name='download',
            name='runcard_name',
            field=models.CharField(default='150820180651', max_length=200, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='runcard',
            name='runcard_name',
            field=models.CharField(default='150820180651', max_length=50, primary_key=True, serialize=False),
        ),
    ]
