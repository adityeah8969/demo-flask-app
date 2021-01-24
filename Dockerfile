FROM python:alpine3.7 
COPY . .
ENV FLASK_APP=server.py
RUN pip install -r requirements.txt 
RUN python build_database.py
EXPOSE 5000 
CMD ["python", "server.py"]
