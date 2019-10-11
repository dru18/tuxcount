#Defining Bash Interpreter
#! /bin/bash

# If not all.
if [ -z $2 ]; 
then
  # If no input 
  if [ -z $1 ]; 
  then
    # Count for working directory.
    for file in $(ls); 
    do
      # Count for files only.
      if [ -f ${file} ]; 
      then
        echo -e "\n\n[+] $(cat ${file} | wc -l) lines, $(cat ${file} | wc -w) words, $(cat ${file} | wc -c) charactors [${file}]\n\n";
      fi
    done
    echo -e "\n\n[.] $(ls $1 | wc -l) lines, $(ls $1 | wc -w) words, $(ls $1 | wc -c) charactors [.]"
 else
    # If asking for help.
    if [ $1 == '--help' ]; 
    then
      echo "$(cat about/manual)"
    else
      # If asking for version.
      if [ $1 == '--version' ]; 
      then
        echo "Version: tuxcount[$(cat about/version)]";
      else
        # If asking about tuxcount.
        if [ $1 == '--show' ]; 
        then
          echo "Description: $(cat about/description)";
        else
          # If default all
          if [ $1 == '--all' ]; 
          then
            # Count all for working directory.
            for file in $(ls -a); do
              # Count for files only.
              if [ -f ${file} ]
              then
                echo -e "\n\n[+] $(cat ${file} | wc -l) lines, $(cat ${file} | wc -w) words, $(cat ${file} | wc -c) charactors [${file}]\n\n";
              else
              echo -e "\n\n[+] $(ls ${file} | wc -l) lines, $(ls ${file} | wc -w) words, $(ls ${file} | wc -c) charactors [${file}]\n\n"
              fi
            done
            echo -e "\n\n[.] $(ls -a $1 | wc -l) lines, $(ls -a $1 | wc -w) words, $(ls -a $1 | wc -c) charactors [.]"
          else
            # If input exist.
            if [ -e $1 ]; 
            then
              #If input is a file.
              if [ -f $1 ]; 
              then
                echo -e "\n\n[+] $(cat $1 | wc -l) lines, $(cat $1 | wc -w) words, $(cat $1 | wc -c) charactors [$1]\n\n";
              fi
              # If input is a directory.
              if [ -d $1 ]; 
              then 
                # Count all for working directory.
                for file in $(ls $1); 
                do
                  # Count for files only.
                  if [ -f ${file} ]
                  then
                    echo -e "\n\n[+] $(cat ${file} | wc -l) lines, $(cat ${file} | wc -w) words, $(cat ${file} | wc -c) charactors ${file}\n\n";
                  else
                  echo -e "\n\n[+] $(ls ${file} | wc -l) lines, $(ls ${file} | wc -w) words, $(ls ${file} | wc -c) charactors [${file}]\n\n"
                  fi
                done
                echo -e "\n\n[.] $(ls $1 | wc -l) lines, $(ls $1 | wc -w) words, $(ls $1 | wc -c) charactors [$1]"
              fi
            #IF file doesn't exist.
            else
            echo "[!] [$1] don't exist"
            fi
          fi
        fi
      fi
    fi
  fi
else
  if [ $2 == '--all' ]; 
  then
    #If input exist.
    if [ -e $1 ]; 
    then
      #If input is a directory.
      if [ -d $1 ]; 
      then
        # count all for input directory.
        for file in $(ls -a $1); 
        do
          # Count for files only.
          if [ -f ${file} ]
          then
            echo -e "\n\n[+] $(cat ${file} | wc -l) lines, $(cat ${file} | wc -w) words, $(cat ${file} | wc -c) charactors [$file]\n\n";
          fi
        done
        echo -e "\n\n[.] $(ls -a $1 | wc -l) lines, $(ls -a $1 | wc -w) words, $(ls -a $1 | wc -c) charactors [$1]"
      else
      echo "[!] [$1] is not a directory."
      fi
    #IF file don't exist
    else
    echo "[!] [$1] don't exist"
    fi
  # If wrong input at [2].
  else
  echo "[!] $2 is wrong input."
  fi
fi | cowsay -f tux | toilet -f term --gay
