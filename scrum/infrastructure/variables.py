import os

CUR_DIR = os.path.realpath(os.path.dirname(os.path.realpath(__file__)))

#Grandparent dir : D
IMMEDIATE_DIR = os.path.abspath(os.path.join(CUR_DIR, os.pardir))
PROJECT_DIR = os.path.abspath(os.path.join(IMMEDIATE_DIR, os.pardir))

print(PROJECT_DIR + "\VERSION")