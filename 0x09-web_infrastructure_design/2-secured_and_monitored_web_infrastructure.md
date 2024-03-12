## explain some specifics about this infrastructure:

# explanation why i am adding it:

1 - What are firewalls for

- Firewalls are placed between different components of the infrastructure 
to control and monitor incoming and outgoing traffic, preventing unauthorized 
access and protecting against various cyber threats.
- They help enforce security policies and restrict access based on 
predefined rules, adding an additional layer of defense to the infrastructure.

2 - Why is the traffic served over HTTPS

- Authentication: HTTPS enables server authentication, allowing the client to 
verify the identity of the web server it is communicating with. This helps prevent 
man-in-the-middle attacks where an attacker could impersonate the server and intercept 
sensitive information exchanged between the client and the legitimate server.
- Security: HTTPS encrypts the data transmitted between the web server and the client, 
making it unreadable to anyone who might intercept it. This encryption prevents unauthorized 
parties from eavesdropping on or tampering with the communication, enhancing the overall security 
and privacy of the website's users.
Data Integrity: HTTPS ensures data integrity by protecting against tampering during transmission. 
It verifies that the data received by the client has not been altered or corrupted en route, providing 
assurance that the information displayed on the website is accurate and trustworthy.

3 - What monitoring is used for

- Monitoring clients are installed on each server to collect various metrics and logs, 
which are then sent to a centralized monitoring service like Sumo Logic.
- Data collected includes server performance metrics, error logs, traffic patterns, and security events.

4 - How the monitoring tool is collecting data

- Monitoring clients are installed on each server to collect various metrics and logs, 
which are then sent to a centralized monitoring service like Sumo Logic.
- Monitoring is essential for identifying and resolving performance issues, 
security threats, and ensuring the overall health and availability of the infrastructure.
- Data collected includes server performance metrics, error logs, traffic patterns, and security events.

5 - Explain what to do if you want to monitor your web server QPS
- Configure monitoring clients to collect metrics related to web server performance, such as request count and response time.
- Set up custom dashboards or alerts within the monitoring service to track and analyze QPS trends and anomalies.
- Send these metrics to the centralized monitoring service.

## explain what the issues are with this infrastructure:

1 - Why terminating SSL at the load balancer level is an issue
- It can expose sensitive data transmitted between the load balancer and backend servers if the internal network is compromised.
- The SSL decryption/encryption process at the load balancer can become a bottleneck under heavy traffic.

2 - Why having only one MySQL server capable of accepting writes is an issue

- yes, this creates a single point of failure for write operations. If the primary server fails, it could lead to downtime and data loss.
- This creates a single point of failure for write operations. If the primary server fails, it could lead to downtime and data loss.

3 - Why having servers with all the same components (database, web server and application server) might be a problem

- It increases the vulnerability surface. If a vulnerability is discovered in one component (e.g., web server software), all servers are potentially affected.
- It limits the ability to optimize each server's configuration based on its specific role and workload, potentially leading to inefficiencies or performance issues.

