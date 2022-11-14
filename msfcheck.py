#Metasploit is the world's most used penetration testing software.
# Uncover weaknesses in your defenses, focus on the right risks, and improve security.
#https://www.rapid7.com/products/metasploit/
import subprocess
from msfpath import check
def version():
    cmd = "uname"
    try:
        check = subprocess.call([cmd, '-a'],
                                stdout=subprocess.DEVNULL,
                                stderr=subprocess.STDOUT)
    except:
        print()
def check_path():
    cmd = "which"
    try:
        check=subprocess.call([cmd, 'msfvenom'],
    stdout=subprocess.DEVNULL,
    stderr=subprocess.STDOUT)
    except:
        print ()
check_path()
version()
