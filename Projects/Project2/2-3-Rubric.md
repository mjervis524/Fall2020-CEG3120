# Project 2 - Milestone 3 Rubric

/ 20

1. Cloud Template & Systems Configuration: / 8
   The following should be configured in the template OR documented.  
   One point per primary bulleted topic

- Cloud formation template
- Security groups:
  - Traffic to port 22 from external (or with appropriate restrictions)
  - Traffic to port 80 from external
  - Traffic to port 22 from internal (10.0.0.0/24)
  - Traffic to port 80 from internal (10.0.0.0/24)
- Proxy server created
- Proxy server configured
- Web servers created
- Web servers have page published
- Place a public key on all servers
- Place a private key on one or more servers

2. Implement Continuous Deployment (CD): / 12  
   Two points per primary bulleted topic

- Handles permissions issue (where /var/www/html/ is owned by root by default)
- Git repository (or repositories) are created on server
- Git repository is cloned to another machine, such as the local system
- `post-receive` hook is created
- Web servers use hook(s) to publish page(s) from repository
- Screenshots of working implementation - from push to automated deployment
