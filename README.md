1. docker run -d --name csvserver infracloudio/csvserver:latest
2. docker ps -a
3. docker ps
4. docker logs csvserver
5. write a bash script named as "gencsv.sh" 
  #!/bin/bash
start=$1
end=$2
filename="inputFile"

rm -f $filename
touch $filename

for i in $(seq $start $end); do
  echo "$i, $((RANDOM % 1000))" >> $filename
done
#!/bin/bash
start=$1
end=$2
filename="inputFile"

rm -f $filename
touch $filename

for i in $(seq $start $end); do
  echo "$i, $((RANDOM % 1000))" >> $filename
done

6. chmod +x gencsv.sh
7. ./gencsv.sh 2 8

8. cat inputFile

9. docker run -d --name csvserver -v $(pwd)/inputFile:csvserver/inputdata infracloudio/csvserver:latest
10. docker ps
11. docker exec -it csvserver sh
12. netstat -tuln
13. docker stop csvserver
14. docker rm csvserver 

