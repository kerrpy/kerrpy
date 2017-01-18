import os
from setuptools import setup, find_packages
import pip.download
from pip.req import parse_requirements


# Utility function to read the README file.
# Used for the long_description.  It's nice, because now 1) we have a top level
# README file and 2) it's easier to type in the README file than to put a raw
# string in below ...
def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()


install_reqs = parse_requirements(os.path.join(os.path.dirname(__file__), 'requirements.txt'), session=pip.download.PipSession())
reqs = [str(ir.req) for ir in install_reqs]

setup(
    name="kerrpy",
    version="0.0.1",
    author="Pablo Galindo and Alejandro García",
    author_email="pablogsal@gmail.com",
    description="A Free Software General Relativity Raytracer",
    license="BSD",
    # keywords = "example documentation tutorial",
    url="https://github.com/kerrpy/kerrpy",
    install_requires=reqs,
    packages=find_packages(os.path.dirname(__file__)),
    scripts=['GUI/kerrpy_gui'],
    include_package_data=True,
    long_description=read('README.md'),
    # classifiers=[
    #     "Development Status :: 3 - Alpha",
    #     "Topic :: Utilities",
    #     "License :: OSI Approved :: BSD License",
    # ],
)
