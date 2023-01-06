FROM python:3.8

WORKDIR .
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
ADD . app/
WORKDIR app/

ENTRYPOINT ["streamlit", "run"]
CMD ["main_boleto.py", "--server.port=8501"]
