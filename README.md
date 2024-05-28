This Bash script systematically processes each ZIP file in the current directory by generating a hash file using zip2john and attempting password cracking with John the Ripper, utilizing a rockyou wordlist and PKZIP format. The script concludes by presenting the successfully cracked passwords for each ZIP file.


```
chmod +x zip-crack.sh
./zip-crack.sh
```
