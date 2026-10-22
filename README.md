# kali-aishah-devops
 
Individual DevOps laboratory work: Linux -> Git -> GitHub -> Docker -> Jenkins.
 
**Student:** Aishah Kali | **Group:** IT2-2309 | **Student ID:** 37830
 
## Structure
- `app/app.py` - Python application that prints student information (reads STUDENT_* variables)
- `scripts/Kali_Aishah_system.sh` - Bash script with student and system information
- `config/app.conf` - application configuration
- `Dockerfile`, `docker-compose.yml` - container configuration
- `Jenkinsfile` - CI/CD pipeline (Checkout, Build, Test, Docker Build, Docker Run)
- `.gitignore` - ignores *.log, backup/, .env
 
## Run locally
    python3 app/app.py
    docker build -t kali-aishah-devops .
    docker run --name kali-aishah-container kali-aishah-devops
    docker compose up

