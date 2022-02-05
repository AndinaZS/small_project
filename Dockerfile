FROM python

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY apache_logs.txt .

CMD flask run -h 0.0.0.0 -p 80