# prj-bse-gpu CI/CD

## Jenkins configuration
### Prerequisites
1. run install.sh (installing Jenkins locally) optional
2. docker logs <customjenkins id> -> get admin password (if it is a first installation)

### Configuration
1. Jenkins menu
2. create new job 
3. pipeline 
4. select this project is parameterized
5. add string parameters
   - BSE_GPU_URL : git@github.com:quantori/prj-bse-gpu.git
   - BSE_GPU_BRANCH : feature/BSE-729/docker-image-creation
   - BSE_GPU_CREDENTIALS_ID : github (from Jenkins credentials)
   - PIPELINE_JOB_NAME : GPU-Service/pipeline (from Jenkins)
6. pipeline script from SCM-git 
7. Config Repository and Branch and Script Patch : 
    - Repository URL : ${BSE_GPU_URL}
    - Select credentials : ${BSE_GPU_CREDENTIALS_ID}
    - Branch Specifier : <git branch>
    - Script Path : Jenkinsfile

