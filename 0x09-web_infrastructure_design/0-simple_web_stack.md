## About the Web Infrastructure Design:

1 - Server: The server hosts all components of the web infrastructure, including the web server, application server, and database. It is responsible for processing requests and serving content to users.

2 - Web Server (Nginx): Nginx is responsible for handling incoming HTTP requests from users' browsers and serving static content. It also acts as a reverse proxy to forward dynamic requests to the application server.

3 - Application Server: The application server hosts the application codebase. It processes dynamic requests, executes business logic, interacts with the database, and generates dynamic content to be sent back to the web server for delivery to users.

5 - Application Files (Code Base): This includes all the files comprising the website/application, such as HTML, CSS, JavaScript, server-side scripts (e.g., PHP, Python, Node.js), and any other necessary resources.

6 - Database (MySQL): MySQL is used to store and manage the website's data. It handles data storage, retrieval, and manipulation operations, ensuring persistent data storage for the application.

7 - Domain Name (www.foobar.com): The domain name acts as a human-readable address for accessing the website. It is mapped to the server's IP address (8.8.8.8) using DNS records, allowing users to access the website via a memorable name instead of numerical IP addresses.

## Specifics about this infrastructure:

1 - Server: A physical or virtual machine responsible for hosting the web infrastructure components.

2 - Domain Name: A human-readable alias for the server's IP address, facilitating easy access to the website.

3 - www Record: The "www" DNS record is a subdomain prefix indicating the World Wide Web. In www.foobar.com, it specifies the web server where the website content is hosted.

4 - Web Server: Nginx serves as the entry point for incoming HTTP requests, handling static content delivery and forwarding dynamic requests to the application server.

5 - Application Server: Responsible for executing application logic, processing dynamic requests, and generating responses based on the application codebase.

6 - Database: MySQL manages data storage and retrieval, ensuring data persistence for the website/application.

7 - Communication with User's Computer: The server communicates with the user's computer over the Internet using the HTTP(S) protocol. When a user requests the website, their browser sends an HTTP request to the server, which responds with the requested content.

## Issues with the Infrastructure:

1 - SPOF (Single Point of Failure): Since all components are hosted on a single server, any failure in hardware or software can lead to downtime for the entire website.

2 - Downtime during Maintenance: Performing maintenance tasks such as deploying new code or restarting the web server may result in downtime, affecting user access to the website.

3 - Limited Scalability: The infrastructure may struggle to handle large volumes of incoming traffic, leading to performance issues or downtime during peak periods. Scaling resources horizontally (adding more servers) becomes challenging with this setup.
