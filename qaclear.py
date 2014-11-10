#!/usr/bin/python
import pexpect
import os
print 'Login into qa'
os.system('ssh qa@qa.creyate.com')
print 'Clearing cache'
child =  pexpect.spawn('clearcache')
child.expect('Password:')
child.sendline('creyate123')
