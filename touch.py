"""
  Quick remake of touch from Linux for windows
  v1.1
"""
import os
import sys

def app(n):
  os.system(f'type nul > {n}')
  print(f"Created {n}")

if __name__ == '__main__':
  try:
    name = sys.argv[1]
    print(name)
    if name == None: 
      raise Exception("You must pass a name for the file")
    else: 
      app(name)
    exit()
  except IndexError:
    print("Error: No filename provided. Please provide a filename as an argument.")
    sys.exit(1)
  except Exception as e:
    print(f"Error: {str(e)}")
    sys.exit(1) 