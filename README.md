Prerequisites
Before running this pipeline:

✅ Jenkins should have Maven, Docker, and SonarQube properly configured.

✅ Install required plugins:

Pipeline

Docker Pipeline

Kubernetes CLI

Git

SonarQube Scanner

JUnit

✅ Add credentials:

DockerHub (if needed)

Kubeconfig file

SonarQube token

1. Maven
🔧 What You Need to Do:
Install Maven on the Jenkins machine (Linux: apt install maven, Windows: manually install and set PATH).

In Jenkins:

Go to Manage Jenkins → Global Tool Configuration

Under Maven, click Add Maven

Name it (e.g., Maven 3.8.5)

Either install automatically or give the path to the installed Maven.

✅ Plugins:
Maven Integration Plugin (to use Maven in your pipeline)

🐳 2. Docker
🔧 What You Need to Do:
Install Docker on the Jenkins agent (where the build runs). Jenkins will use Docker CLI to build/push images.

Make sure Jenkins user has access to Docker (e.g., sudo usermod -aG docker jenkins).

You may use Docker-in-Docker if running Jenkins inside a container (advanced).

✅ Plugins:
Docker Pipeline Plugin (allows docker.build().push() syntax)

🧠 3. SonarQube
🔧 What You Need to Do:
Install SonarQube Server (locally or on a separate machine/cloud).

Create an authentication token on the SonarQube dashboard.

In Jenkins:

Go to Manage Jenkins → Configure System

Add a SonarQube server under “SonarQube Servers”

Add SonarQube token as a Jenkins credential.

✅ Plugins:
SonarQube Scanner for Jenkins

Optional: Pipeline Utility Steps Plugin (if using in scripts)

Summary Table
Tool	                  Install on Jenkins Machine	              Jenkins Plugin Needed	                      Configure in Jenkins UI
Maven	                 ✅ Required	                              ✅ Maven Integration Plugin	                ✅ Global Tool Configuration
Docker	               ✅ Required	                              ✅ Docker Pipeline Plugin	                  ✅ Docker access for Jenkins
SonarQube	             ✅ Required (external OK)	                ✅ SonarQube Scanner Plugin	                ✅ Configure Sonar Server & Token

