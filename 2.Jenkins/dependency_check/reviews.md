Date: 16-05-2026 


## 1. Jenkins Pipelines
- Reactjs Pipeline 
- Using tool in order to build the code in the pipeline
    - Jenkins to configure or manage tools ex. NodeJS, Gradle , Maven 
    - tool node-tls , npm --version , npm test 

- Check Code Quality with sonarqube 
- Webhook intergration to wait quality gate
- Telegram Notification Channel (ex. Gmail, Slack , .. )
- Build Docker images 
- Store / Push docker images to Dockerhub 

- Paramaterized Pipeline ( )
- Pramaterized stag ( ex. Stage ( Deploy ), ex. Option("Dev", "Stag", "Prod" ))
- **Credentials**: store secrets: password, api key, ssh private keys , secret text (token )... 
    - Intergration => Hashicorp Vault 
- Function to sending telgram message

### Jenkins Shared Library 
- COllection of code or functions to make it reusable in different pipeline configuration 
- **Step to achieve this** 
    - Create github repository for storing the configuration of the jenkins pipeline 
    - COnfigure the Jenkins to use the github repository as the Trusted Jenkins Library 
    - Follow the guided file , folder structure 

2. Role-based access control 
    - 1. Frontend 
    - 2. Backend
    - 3. Admin 