FROM python:2.7-slim
LABEL description="测试阿里云镜像自动构建"
WORKDIR /app

#Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

ENV NAME world

CMD ["python", "app.py"]
