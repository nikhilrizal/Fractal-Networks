# Django Dockerization Demo

## Author: Nikhil Rizal
Contact: nikdevcloud@gmail.com

---

### Overview:

This is a simple Django application designed to demonstrate the configuration of Dockerization using Docker Compose for orchestration.

---

### How to Use:

1. **Build Docker Containers:**
   - Run the following command to build the Docker containers:
     ```bash
     docker-compose build
     ```

2. **Run Docker Containers:**
   - Start the application and services using the following command:
     ```bash
     docker-compose up
     ```
   
   - Access the application through: http://localhost:9002/

3. **Test Cases:**
   - Run the following command for testing:
     ```bash
     docker-compose exec backend python manage.py test postGisApp.test
     ```

4. **Create Superuser:**
   - To create a superuser, use the following command:
     ```bash
     docker-compose exec backend python manage.py createsuperuser
     ```

---

### Notes:

This app serves as a simple demonstration of Docker and Dockerization. It showcases the configuration of a Django app using Docker Compose for easy deployment and management.

