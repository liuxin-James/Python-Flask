FROM python:3.8 
# EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
# RUN pip install flask
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]