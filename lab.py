import subprocess
import os

def main():
  student_password = input("Haslo studenta: ")
  if len(student_password) < 8:
    raise Exception(f"Haslo studenta za krotkie: {student_password}")
  return subprocess.call(f"echo {student_password}", shell=True)

if __name__ == "__main__":
  main()
