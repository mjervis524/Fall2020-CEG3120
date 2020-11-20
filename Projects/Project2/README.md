# Project 2-3

## 1. Load balancer with HAProxy

- Stand up proxy server (HAProxy)
- Stand up two apache or nginx servers
- Place a different `index.html` page on each server
  - You can use mine in the Project 2 folder
- Create a private / public key
  - put public key on each server (**don't override the AWS key**)
  - put private key on the proxy
    - Hint: `sftp` instead of `ssh` and get the private key
- Security groups should be changed to the following rules:
  - Port 80 traffic from external
  - Port 22 traffic from external
  - Port 80 traffic in private subnet
  - Port 22 traffic in private subnet
- The final product should NOT have elastic IPs for the webservers. The webservers will only use their private IPs

### Deliverables:

- CloudFormation template with everything **you** can automate
  - Note: this means best effort will be counted
  - Hint: this snippet disables automatic elastic IP address creation:

```
#AssociatePublicIpAddress: 'true'
DeviceIndex: '0'
#DeleteOnTermination: 'true'
```

- Documentation of what needed to be configured outside of the template, and what you did to make it happen.

**Resources**

- [HAProxy Load Balancer Ubuntu](https://upcloud.com/community/tutorials/haproxy-load-balancer-ubuntu/)
- [HAProxy & Loab Balancing Concepts](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
- [Configuring HAProxy to Set Up HTTP Load Balancing (Layer 4)](https://www.digitalocean.com/community/tutorials/how-to-use-haproxy-to-set-up-http-load-balancing-on-an-ubuntu-vps)
- [Configuring HAProxy for Layer 7 Load Balancing](https://www.digitalocean.com/community/tutorials/how-to-use-haproxy-as-a-layer-7-load-balancer-for-wordpress-and-nginx-on-ubuntu-14-04)

## 2. Implement Continuous Deployment (CD) - NOT FINALIZED

- On the server side, create a git hook that pushes an update to the webservers everytime an update is made.

**Resources**

- [Hosting site from file server](https://www.digitalocean.com/community/tutorials/how-to-use-haproxy-as-a-layer-4-load-balancer-for-wordpress-application-servers-on-ubuntu-14-04)
