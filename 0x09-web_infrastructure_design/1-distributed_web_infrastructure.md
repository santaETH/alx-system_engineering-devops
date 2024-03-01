# Distributed Web Infrastructure

## About This Infrastructure

# Additional Elements and Explanation:

- Load Balancer (HAProxy): Added to distribute incoming traffic across multiple servers, improving scalability, fault tolerance, and performance. It ensures that requests are evenly distributed among the available servers.

- Database (MySQL): Added to store and manage the website/application's data. It provides data persistence and facilitates efficient data retrieval and manipulation.



# Issues with this Infrastructure:

- SPOF: The load balancer server represents a single point of failure. If it fails, incoming traffic won't be distributed, leading to potential downtime.

- Security Issues: Lack of firewall configuration exposes servers to potential security threats. Additionally, the absence of HTTPS encryption exposes sensitive data transmitted between clients and servers to interception and manipulation.

- No Monitoring: Without monitoring tools in place, it's challenging to proactively identify and address performance issues, security breaches, or infrastructure failures. Monitoring is crucial for ensuring uptime, performance optimization, and security enforcement.
