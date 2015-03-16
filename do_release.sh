#!/bin/bash
# Lowell's release script

# Install setuptools with less fuss 
#python ez_setup.py --user 
VER=`bzr version-info --custom --template '{revision_id} {date} [{clean}]'`
sed -i src/cloghandler.py -re "s/^__version__.*/__version__ = '$VER'/"

python setup.py sdist bdist_egg
python2.6 setup.py bdist_egg
python2.7 setup.py bdist_egg
python3.2 setup.py bdist_egg


#python setup.py build register sdist bdist_egg upload
#python2.7 setup.py bdist_egg upload
#python3.2 setup.py bdist_egg upload


