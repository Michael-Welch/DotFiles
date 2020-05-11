To clone, run: git clone git@github.com:Michael-Welch/DotFiles.git

Make sure to add an ssh key

    Step 1: ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    
    Step 2: ssh-add ~/.ssh/id_rsa
    
    Step 3: Copy contents of ~/.ssh/id_rsa.pub
    
    Step 4: Add a new SSH key in github


Then just run ./setup.sh

After installation, in the DotFiles folder, run: vim test.txt

Run :PluginInstall to install the Vundle plugins

Also to update the bash, restart .bashrc with: source ~/.bashrc

