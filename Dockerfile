FROM python:3.8
WORKDIR /streamlit_app
RUN apt-get update && apt-get install -y
COPY . /streamlit_app
RUN pip install -r requirements.txt
EXPOSE 8501
ENTRYPOINT ["streamlit","RUN","streamlit_app.py","--server.port=8501","--server.address=0.0.0.0"]
