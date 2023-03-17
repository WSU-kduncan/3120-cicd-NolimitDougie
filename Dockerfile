# FROM python:3

FROM python:3

# Installed dependencies
#RUN 


# Copy our project files to somewhere on the container filesystem

COPY code.py /code/ 

# CMD python code.py (based on location in the container)
CMD["python", "/code/code.py"]
