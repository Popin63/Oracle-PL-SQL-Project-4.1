drop database link server1;

create database link server1
 connect to system identified by "12345"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.0.103)
		 (PORT = 1620))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  