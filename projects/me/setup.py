# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

with open('README.rst') as f:
    readme = f.read()

with open('LICENSE') as f:
    license = f.read()

setup(
    name='me',
    version='0.1.0',
    description='Me package for personal project',
    long_description=readme,
    author='Flor Silvestre',
    author_email='florsilvestre91@gmail.com',
    url='https://github.com/flor91',
    license=license,
    packages=find_packages(exclude=('tests', 'docs'))
)
