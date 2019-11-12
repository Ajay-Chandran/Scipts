# The below is only for those who want to work in two diffrent web-based Git repository hosting service.
 
#Enter your github account url
url=https://github.com/username/
#list your repository names here
projectName=(Repo1 Repo2 Repo3 Repo4 Repo5 Repo6)

echo "##################################################################"
echo -e "\e[91m \t Clone repository and update local config \e[0m"
echo "################################################################## "
echo -e "\e[92m \n Cloning "${#projectName[@]}" repository \n \e[0m"
for i in "${projectName[@]}"
do
	echo -e "\n \e[93m \n git clone" $url$i.git "\e[0m"
	git clone $url$i.git
	echo -e "\e[96m \n Setting git local config \e[0m " 
	cd $i
	git config --local user.email "youremail@abc.com"
	git config --local user.name "username"
	cd ..
done
echo -e "\n"
read -p "  Press Enter key to exit" enter

