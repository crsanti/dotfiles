#!/usr/bin/env python3

def getUsername():
    import os
    import pwd
    userInfo = pwd.getpwuid(os.getuid())
    fullname = userInfo.pw_gecos.split(',')[0]
    if fullname and len(fullname) > 1:
        return fullname
    else:
        return userInfo.pw_name

