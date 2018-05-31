

# Pre-requisites
[ -f ~/.bashrc.pre ] && source ~/.bashrc.pre
[ ! -d ~/.bashrc.d ] && mkdir -v ~/.bashrc.d

echo "" >> ~/.bashrc.log
echo "$(printDate): New shell, initializing bash" >> ~/.bashrc.log

for F in ~/.bashrc.d/*.sh ; do 
	echo "$(printDate): Sourcing ${F}" >> ~/.bashrc.log
	source ${F}
	echo "$(printDate) ${F} loaded" >> ~/.bashrc.log
done

#source ~/.bashrc.d/colors.sh
#source ~/.bashrc.d/ps1.sh

