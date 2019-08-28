FROM python:3-slim
COPY . /app
WORKDIR /app
RUN pip install --trusted-host production.cloudflare.docker.com  --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
ENTRYPOINT ["python"]
CMD ["teste.py"]
EXPOSE 5000

