#!/usr/bin/bash   
# comment multiple lines cntrl + / same for uncomment
# cd /mnt/c/Users/Progressive/Desktop        ./Study.sh 

# # coding starts here
# echo "how are you" #this is how you print in bash
# #capital letter is used to show sytem varaible and small leter for user define variable
# echo $BASH   #this command is used to get your b_ash directory 
# echo $BASH_VERSION 
# echo the present working directory is ;$PWD

# mer=dada #variable declrtn there mustnt be space , variable name musnt start with number eg 10mer=vari
# echo the variable name is $mer # this is how you echo variable inclusive strings
# a=10
# b=21
# c=a*b
# echo the multiplication of a and b is $c #this didnt work as expected 
# #reading variables from user 
# echo "please enter a name; "
# read name #this functin read from user 
# echo the name i got is $name 

#   #multiple read should use array
# read -p "enter the second name " name   #flag -p help to remove \n in echo function, read used in position of echo
# read -sp "enter a password sample;" pass    # flag -sp makes password not visible during inputs 
# echo the second name i got is $name
# echo the password entered is $pass 

# #indexing varaible stored in an array
# echo "you can enter multiple names"
# read -a  multi_name  #flag -a is used to declare array 
# echo "the name with index 0 and 1; ${multi_name[0]} , ${multi_name[1]}" #indexing the array


#parsing argument
# #echo $0 $1 $2 ' echo $1 $2 '  #eg you run this ./Study.sh mark tunde ,$0 help show script name too
# arg=("$@") # this is an alternative to the above but you parsing it here in an array infinite entry 
# echo ${arg[0]} , ${arg[1]} ,${arg[3]} . # print indexed array inx 0 isnt script name but actual argument 
# echo $@ # to print all arg parsed 
# echo $# #to print nos of args parsed 

# #if else  
# echo "input a char called werd"
# # werd=n 
# read werd
# if [[ $werd == "b" ]] #make sur space is btw conditions and [[]]
#  then 
#   echo "werd is b"
# elif [[ $werd = "n" ]] #instead [[]] sometimes (()) is used you need to check cheat book to know which suits 
#  then 
#    echo "werd is n"
# else 
#    echo "werd isnt correct" 
# fi

# #file test operators 

# echo -e "please enter your file name you wanna check for \c"
# read file_name

# if [ -e $file_name ]  #flag -e check for file availablity , -f is for if the file exist and if its a regular file/not , -d is to check for file directory ,-b block special file (eg image ,vid all binary file generally) ,-c character special file eg txt, word etc filled with char 
#  #flag -s checks if file is empty or not ,-w .-x . -r check if file is writable,executable or readable , if not use chmod +r /+x/+w file_name to correct accordingly,(chmod -r /-x/-w file_name) removes permsns too.  cmd "cat > file_name" can be used to append text to the file from cmd propmt ,ctrl+d to exit cat , "cat file_name" shows file content
#  then
#   echo "$file_name found here"
# else 
#   echo "$file_name not found"
# fi

# #LOGICAL OPERATORS 
# age=55
# if [ $age -gt 18 ] || [ $age -lt 45 ] # || is used for OR as && is used as AND . see the maths flag sheet for other flags like -eq/=
#  then 
#   echo "age is in correct range"
# else
#   echo "age isnt correct range"
# fi
    
#      #MATH OPERATIONS
# n1=25
# n2=6

# echo $((n1 + n2)) #method 1
# echo $(expr $n1 + $n2) #method 2
# echo $((n1 * n2))
# echo $(expr $n1 \* $n2) #its only for *(mul) you use \*=* when using expr method 
# echo $(expr $n1 / $n2)
# echo $((n1 % n2))
# #echo "scale=2;$n1/$n2" | bc method 3 is only used when you deal with fraction likely results 
 

#  #switch and case 
# female_name=$1  #remeber this takes argument
# case $female_name in 
#  "tade")
#     echo "$female_name is a good female name" ;;
#   "tayo")  #a case  statement 
#     echo "$female_name is a good female name" ;;
#   "temi")
#     echo "$female_name is a good female name" ;;
#    * )   #this is the default condition
#     echo "$female_name is unknown to us" ;;
# esac

# # echo -p "give me a char i will tell you what you gave me "
# # read xer
# read -p "give me a char i will tell you what you gave me " xer

# case $xer in 
#  [a-z]) #accept any char btw A-Z Small letter
#    echo "you gave me small $xer";;
#  [A-Z]) #accept any char btw A-Z capital letter
#    echo "you gave me big $xer";;
#  ?)    #catches single non alphabet letter eg special chars 
#    echo "you gave me $xer";;
#  *)   #catches multiple chars/string
#    echo "you gave me $xer";;
# esac 
  
#      #WHILE LOOP  
# n=1
# while [ $n -le 3 ]  #le <=
# do

#  echo $n
#  sleep 1  #delay 1 sec
# # n=$((n+1))
#  ((n++)) #no pre/post incraement rule is followed here its always teated as n=n+1

# done 

#    #reading file content 
# while read p  # cat test | while read p #can be used as alternative which ends only with done (not done < test). cat cmd reads file into while loop
# do 
#  echo $p
# done < test #reading the content of test file to be printed in my terminal


#     #UNTIL loop 
# n=1
# until [ $n -gt 3 ]  #gt >
# do

#  echo $n
#  sleep 1  #delay 1 sec
# # n=$((n+1))
#  ((n++)) #no pre/post incraement rule is followed here its always teated as n=n+1

# done 

#     #FOR loop
# for ((i=0 ; $i <= 6 ; i++ )) 
#  do
#    echo $i
#    sleep .5  # delay .5 sec
#  done 

#      #select loop (menu structure)  #ctrl + d to exit select loop 

# select name in books drugs cars 
#  do
#    echo "$name selected"
#  done 

#  select name in books drugs cars 
#   do
#    case $name in 
#     books)
#        select book in Quran ajrumiyyah sarfu_kaafi 
#          do
#          #echo "you want to buy $book";;
#          done 
#     drugs)
#        select drug in paracetamol vencik panadol 
#          do
#          echo "you want to buy $drug";;
#          done 
#     cars)
#        select car in toyota mazda ferari 
#          do
#          echo "you want to buy $car";;
#          done 
#      esac
#   done
 




#always use ctrl +d to go to previous menu and eventually exit at last menu
#this project is about cart item selection and checkout after you must have been done shopping
  output= 0
  select name in books drugs cars outputs
  do
   case $name in 
    books)
        select book in Quran ajrumiyyah sarfu_kaafi 
          do
           echo "you want to buy $book"
           if [ $book == "Quran" ]
           then
              output=$((output + 1500))
              echo "Quran price is only 1500, your total checkout price is below"
           elif [ $book == "ajrumiyyah" ]
            then 
              output=$((output + 250))
              echo "ajrumiyyah price is only 250, your total checkout price is below"
           elif [ $book == "sarfu_kaafi" ]
            then 
              output=$((output + 2500)) 
             echo "sarfu_kaafi price is only 2500, your total checkout price is below" 
           else
              echo "incorrect input"
           fi
           echo "your present total is  $output"

          done;;
     drugs)
         select drug in paracetamol vencik panadol 
           do
          echo "you want to buy $drug"
          if [ $drug == "paracetamol" ]
           then
              output=$((output + 200))
              echo "paracetamol price is only 200, your total checkout price is below"
           elif [ $drug == "vencik" ]
            then 
              output=$((output + 220))
              echo "vencik price is only 220, your total checkout price is below"
           elif [ $drug == "panadol" ]
            then 
              output=$((output + 1000))
              echo "panadol price is only 1000, your total checkout price is below"  
           else
              echo "incorrect input"
           fi
           echo "your present total is  $output"
           done;; 
     cars)
       select car in toyota mazda ferari 
         do
         echo "you want to buy $car"
          if [ $car == "toyota" ]
           then
              output=$((output + 4500))
              echo "toyota price is only 4500, your total checkout price is below"
           elif [ $car == "mazda" ]
            then 
              output=$((output + 4000))
              echo "mazda price is only 4000, your total checkout price is below"
           elif [ $car == "ferari" ]
            then 
              output=$((output + 6000))
              echo "ferari price is only 6000, your total checkout price is below"  
           else
              echo "incorrect input"
           fi
           echo "your present total is  $output"        
          done;; 
     outputs)
         echo "your total checkout cost $output";;
     ?)    #catches single non alphabet letter eg special chars 
        echo "you gave me $name";;
     *)   #catches multiple chars/string
          echo "you gave me $name";;
     esac
  done
 