Objective: insert,delete and update records using shell script
Author Name: Shravani Anil Jadhav
Rno: 66
PRN Number: UCS21F1066
Batch: AS4
'''




while true
do

echo "1.Insert 2.Display 3.Update 0.Exit"
echo "Enter your choice: "
read ch
case $ch in
1)

 echo " Enter roll no| Name | age"
 read r
 read n
 read a
 echo "use student;" > student.sql
 echo "insert into St values($r,'$n',$a);" >> student.sql
 echo "Stored"
 ;;
2)

 echo "select * from St;" >> student.sql
 sudo mysql -u root < student.sql
 ;;
3)

 echo "Enter roll number : "
 read roll
 echo " Enter new roll no| Name | age"
 read r
 read n
 read a
 echo "update St set rn=$r,nm='$n',age=$a where rn=$roll;">>student.sql
 echo "updated successfully"
 ;;
0)
 exit
esac
done




'''
1.Insert 2.Display 3.Update 0.Exit
Enter your choice: 
1
 Enter roll no| Name | age
66
shravani
20
Stored
1.Insert 2.Display 3.Update 0.Exit
Enter your choice: 
2
rn	nm	age
17	wer	45
2	ee	35
2	ee	35
2	ee	35
2	ee	35
2	ee	35
2	ee	35
2	ee	35
5	ehytrgh	34
5	ehytrgh	34
46	shravani	20
46	pratiksha	20
47	ram	20
1.Insert 2.Display 3.Update 0.Exit
Enter your choice: 
3
Enter roll number : 
66
 Enter new roll no| Name | age
66
shravani j
20
updated successfully
1.Insert 2.Display 3.Update 0.Exit
Enter your choice: 
2
rn	nm	age
2	ee	35
5	ehytrgh	34
64	pratiksha	20
66	shravani j	20
1.Insert 2.Display 3.Update 0.Exit
Enter your choice: 
0


