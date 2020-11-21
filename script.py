#!/bin/env python3
# -*- encoding: utf-8 -*-

import os
import fileinput
import hashlib
import random
from ipython_genutils.py3compat import cast_bytes, str_to_bytes

# Get the password from the environment
env_pass = os.environ.get('JUP_PASSWD')
if env_pass == "":
    exit()

# Hash the password, this is taken from
# https://github.com/jupyter/notebook/blob/master/notebook/auth/security.py
salt_len = 12
algorithm = 'sha1'
h = hashlib.new(algorithm)
salt = ('%0' + str(salt_len) + 'x') % random.getrandbits(4 * salt_len)
h.update(cast_bytes(env_pass, 'utf-8') + str_to_bytes(salt, 'ascii'))
password = ':'.join((algorithm, salt, h.hexdigest()))
print(password)
