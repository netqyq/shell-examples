#ip_login.sh
#!/bin/bash 
  
ipAddrArray=( [0]="192.168.158.128" [1]="192.168.158.129" [2]="192.168.158.130" )
 
ip_right_or_not()
{
    remoteIpAddr=$1
 
    if [ "$remoteIpAddr" != "" ] 
    then 
        i=0 
        
         while (( i < ${#ipAddrArray[*]} ))
         do 
              if [ $remoteIpAddr = ${ipAddrArray[i]} ] 
             then    
               return 0   
             fi

           let "i++"
         done
         
         return 1
    else
       return 1
    fi  
}

echo "Please input the IP address." 
read ipAddr

if ip_right_or_not $ipAddr
then
    echo "Connecting to $ipAddr ..."
    ssh web@$ ipAddr   
else
    echo "what you input is null or wrong. "    
fi

