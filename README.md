- I have used LoadBalancer ServiceType in deploying tomcat and mongodb services which exposes service to external world.
- Taken Deployment Kubernetes object for pods creation, as it is more advanced and automatically creates replica set as well.
- Written deployment and service object specification files via yaml for both services tomcat and mongodb
- Created helm chart with name "mytestchart" and resource name "mytestchart" which automatically creates all the kubernetes objects in a single step, helm is more helpful in managing specification data for all objects as it serves as package manager.
- helm install <chart-name> ; helm install mytestchart # will create all kubernetes objects i.e pod, repliasets and service for tomcat and mongodb
- Check that pods are running state for both tomcat and mongodb using "kubectl get pods"
- Check that services are created using kubectl get services
- Access the services tomcat and mongodb using curl <external-IP>:<PORT>, can be accessed through browser as well using http://<external-IP>:<PORT>

ASSUMPTIONS:
- I have taken "tomcat:latest" image in the test, if we need to launch customised HTML page using tomcat server, then user should 
  1. Write Dockerfile which executes simple application (script/code file written to supply content to HTML page based on successful access to tomcat service endpoint)
  2. Build docker image with existing simple application supplied in Dockerfile
  3. Push that newly created docker image to Docker hub
  3. Provide newly created docker image name in "Deployment" specification under Container: image section.
