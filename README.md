# ShellScipts
Shell script for repeating tasks.

# set sublime as editor;
	git config --global core.editor "'C:/Program Files/Sublime Text 3/sublime_text.exe' -w" 

# Proxy setting for Github:
   git config --global http.https://domain.com.proxy http://proxyUsername:proxyPassword@proxy.server.com:port

    #.gitconfig file will look like :
    	
		[http "https://domain.com"]
			proxy = http://proxyUsername:proxyPassword@proxy.server.com:port

# Credential setting store in diffrent file like .git-credentials: 
	git config --global credential.helper store
	git config --global credential.https://domain.com.username username

		#.gitconfig file will look like :

	    		[credential]
			helper = store
			[credential "https://domain.com"]
	 		username = username
# SSL certificate problem:
	git config http.sslVerify false 


# Python script for downloading file 
	run below commands  
		pip3 install requests
		pip install tqdm
