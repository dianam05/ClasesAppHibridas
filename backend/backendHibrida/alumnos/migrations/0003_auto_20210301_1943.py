# Generated by Django 3.1.7 on 2021-03-02 00:43

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('alumnos', '0002_auto_20210226_2035'),
    ]

    operations = [
        migrations.CreateModel(
            name='Curso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField()),
                ('curso', models.CharField(max_length=200)),
                ('codigo', models.IntegerField()),
                ('estado', models.BooleanField()),
                ('promedio', models.FloatField()),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='alumno',
            name='curso',
        ),
        migrations.AddField(
            model_name='alumno',
            name='cursos',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='alumnos.curso'),
            preserve_default=False,
        ),
    ]
