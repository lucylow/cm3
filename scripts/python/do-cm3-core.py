#! /usr/bin/env python
# $Id$

from pylib import *
import pylib
import sys
import os.path

DoPackage(sys.argv, pylib.PackageSets["core"]) or sys.exit(1)

print("%s: Success." % os.path.basename(sys.argv[0]))
