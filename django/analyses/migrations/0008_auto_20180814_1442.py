# Generated by Django 2.0.5 on 2018-08-14 14:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('analyses', '0007_auto_20180814_1420'),
    ]

    operations = [
        migrations.AlterField(
            model_name='download',
            name='runcard_name',
            field=models.CharField(default='140820181442', max_length=200, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='runcard',
            name='runcard_name',
            field=models.CharField(default='140820181442', max_length=50, primary_key=True, serialize=False),
        ),
    ]
