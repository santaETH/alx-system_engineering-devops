# Infrastructure Overview:
In this infrastructure setup, we will have a combination of servers including a load balancer (HAProxy), web server, application server, and database server. Each component will be deployed on its own server to ensure modularity, scalability, and efficient resource utilization.

# explain some specifics about this infrastructure:

- The addition of a firewall between each server.

This protects each server from unwanted and unauthorized users rather than protecting a single server.

# Issues With This Infrastructure

- High Availability: By configuring HAProxy in a cluster, we ensure high availability and fault tolerance. If one load balancer fails, the other can seamlessly take over.

- High maintenance costs: Moving each of the major components to its own server, means that more servers would have to be bought and the company's electricity bill would rise along with the introduction of new servers. Some of the company's funds would have to be used to buy the servers and pay for the electricity consumption needed to keep the servers (including the new and old ones) running.
