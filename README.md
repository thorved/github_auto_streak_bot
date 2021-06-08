# github_auto_streak_bot

<pre>
1. Generate an SSH key
Linux/Mac
Open terminal to create ssh keys:

cd ~                 #Your home directory
ssh-keygen -t rsa    #Press enter for all values
For Windows
(Only works if the commit program is capable of using certificates/private & public ssh keys)

Use Putty Gen to generate a key
Export the key as an open SSH key
Here is a walkthrough on putty gen for the above steps

2. Associate the SSH key with the remote repository
This step varies, depending on how your remote is set up.

If it is a GitHub repository and you have administrative privileges, go to settings and click 'add SSH key'. Copy the contents of your ~/.ssh/id_rsa.pub into the field labeled 'Key'.

If your repository is administered by somebody else, give the administrator your id_rsa.pub.

If your remote repository is administered by your, you can use this command for example:

scp ~/.ssh/id_rsa.pub YOUR_USER@YOUR_IP:~/.ssh/authorized_keys/id_rsa.pub

3. Set your remote URL to a form that supports SSH 1
If you have done the steps above and are still getting the password prompt, make sure your repo URL is in the form

git+ssh://git@github.com/username/reponame.git
as opposed to

https://github.com/username/reponame.git
To see your repo URL, run:

git remote show origin
You can change the URL with:

git remote set-url origin git+ssh://git@github.com/username/reponame.git
</pre>

