FROM public.ecr.aws/docker/library/alpine:3.20

RUN apk add py3-pip \
    && pip install --upgrade pip

WORKDIR /app
COPY . /app/
    
RUN pip install -r src/requirements.txt

EXPOSE 5000

CMD ["python3", "src/application.py"]