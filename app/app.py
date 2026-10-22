import os
 
name = os.getenv("STUDENT_NAME", "Aishah")
surname = os.getenv("STUDENT_SURNAME", "Kali")
group = os.getenv("STUDENT_GROUP", "IT2-2309")
student_id = os.getenv("STUDENT_ID", "37830")
course = os.getenv("COURSE", "DevOps")
 
print("========================================")
print("DevOps Student Application")
print("========================================")
print()
print(f"Name: {name}")
print(f"Surname: {surname}")
print(f"Group: {group}")
print(f"Student ID: {student_id}")
print()
print("Application is running successfully!")

