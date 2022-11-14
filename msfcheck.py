#Metasploit is the world's most used penetration testing software.
# Uncover weaknesses in your defenses, focus on the right risks, and improve security.
#https://www.rapid7.com/products/metasploit/
#checking the metasploit modules path
import subprocess
from msfpath import check
def version():
    osfind = "uname"
    try:
        check = subprocess.call([osfind, '-a'],
                                stdout=subprocess.DEVNULL,
                                stderr=subprocess.STDOUT)
    except:
        print()
def check_path():
    osfind = "which"
    try:
        check=subprocess.call([osfind, 'msfvenom'],
    stdout=subprocess.DEVNULL,
    stderr=subprocess.STDOUT)
    except:
        print ()
check_path()
version()
#https://github.com/rapid7/metasploit-framework
