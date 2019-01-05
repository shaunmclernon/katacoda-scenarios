You can load the Jenkins' dashboard via the following URL (or click on the `Jenkins` tab to the right of this window)
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

The username is `admin` with the password the password can be found via `docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`{{copy}}

NOTE: It may take a couple of seconds for Jenkins to finish starting and be available.