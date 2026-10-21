FROM python:3.10
ENV PYTHONUNBUFFERED=1

RUN pip install --upgrade pip 

RUN apt-get update && apt-get install

COPY requirements.txt . 

RUN pip install --no-cache-dir -r requirements.txt -v

WORKDIR /app
COPY . /app/

EXPOSE 8888



#CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--port=8888", "--no-browser"]

