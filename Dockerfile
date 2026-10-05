FROM python:3.14.8-alpine

WORKDIR /opt/get-language-versions
COPY pyproject.toml README.md LICENCE ./
COPY src ./src
RUN pip install --no-cache-dir .

COPY entrypoint.py /entrypoint.py

ENTRYPOINT ["python", "/entrypoint.py"]
