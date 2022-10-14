#!/bin/bash

MY_INPUT='/home/caca/shell_exe/Job9/Shell_Userlist.csv'

while IFS=, read -r columnID columnPrenom columnNom columnMdp columnRole || [ -n "$columnRole" ];
do
	varusername=$columnPrenom$columnPrenom
	cleanvarusername="$(echo "${varusername}" | tr -d '[:space:]')"
	sudo useradd -p $(openssl passwd -1 $columnMdp) $cleanvarusername

	if [ $columnRole=Admin* ];
	then
		sudo usermod -aG sudo $cleanvarusername
	fi

done < $MY_INPUT
