# Django Dockerization Demo

## Author: Nikhil Rizal
Contact: nikdevcloud@gmail.com

---

### Overview:

This is a simple Django application designed to demonstrate the configuration of Dockerization using Docker Compose for orchestration.

---

### How to Use:

1. **App URL:**
   - Access the application through: http://localhost:9002/

2. **Test Cases:**
   - Run the following command for testing:
     ```
     docker-compose exec backend python manage.py test postGisApp.test
     ```

3. **Create Superuser:**
   - To create a superuser, use the following command:
     ```
     docker-compose exec backend python manage.py createsuperuser
     ```

---

### Notes:

This app serves as a simple demonstration of Docker and Dockerization. It showcases the configuration of a Django app using Docker Compose for easy deployment and management.


---
