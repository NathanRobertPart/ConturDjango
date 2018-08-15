# Generated by Django 2.0.5 on 2018-08-14 14:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('analyses', '0006_auto_20180813_1135'),
    ]

    operations = [
        migrations.CreateModel(
            name='attached_files',
            fields=[
                ('name', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('file', models.FileField(upload_to='', verbose_name=models.Model)),
                ('parent', models.ForeignKey(db_column='results_header', on_delete=django.db.models.deletion.DO_NOTHING, to='analyses.results_header')),
            ],
        ),
        migrations.CreateModel(
            name='attached_papers',
            fields=[
                ('name', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('file', models.FileField(upload_to='', verbose_name=models.Model)),
                ('parent', models.ForeignKey(db_column='results_header', on_delete=django.db.models.deletion.DO_NOTHING, to='analyses.results_header')),
            ],
        ),
        migrations.AlterField(
            model_name='download',
            name='runcard_name',
            field=models.CharField(default='140820181420', max_length=200, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='runcard',
            name='runcard_name',
            field=models.CharField(default='140820181420', max_length=50, primary_key=True, serialize=False),
        ),
    ]