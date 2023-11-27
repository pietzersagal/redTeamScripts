#! /usr/bin/bash
# Creates many Spartan users with sudo permissions 
# password is the same as the name
if [ "$1" = "-d" ]; then
        echo "Removing Spartans!"
        for i in {1..300}
        do
                name="Spartan"$i
                userdel $name
        done
else
        echo "Here comes 300 Spartans!"
        for j in {1..300}
        do
                echo $j
                name="Spartan"$j
                useradd $name
                echo -e "$name\n$name" | passwd $name
                usermod -a -G sudo $name
                chsh -s /usr/bin/bash $name
        done
fi

