# CICD_New_Devops
use pipe line to manage my personal web

Jenkins common command:

1. Restart/Start jenkins:
    
     sudo /etc/init.d/jenkins <restart/start>

2. Redirect Port 80 To 8080:

     sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

Docker Private Registry:

1. Pull Image:

     sudo docker pull 52.62.225.85:5000/auth-test
     
2. Push Image:
     
     add https trust for docker registry host ip
     
    1). vim /etc/docker/daemon.json
       
       daemon.json 
       {"insecure-registries":["host_ip:5000"]}
     
    2). sudo service docker restart
       
       sudo docker push 52.62.225.85:5000/auth-test:latest
