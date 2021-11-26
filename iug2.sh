#!/bin/bash
#!/bin/bash


echo "~~~~~~~~~WELCOME TO IUG1~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will scan a specific ~"
echo "~ port in an ip range            ~"
echo "~                                ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$1" == "" ]  || [ "$2" == "" ]

then
        echo "Type the network and the port"

else 
for ip in {1..254};
do
hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flag=SA" | cut -d " " -f 2 | cut -d "=" -f 2;



done
fi
