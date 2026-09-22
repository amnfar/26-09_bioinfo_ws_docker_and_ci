FROM python:3.14-slim-trixie
LABEL org.opencontainers.image.authors="amna.farooq@sus.no"
RUN echo "Hello world!" > greetings.txt
CMD ["cat","greetings.txt"]

COPY pyproject.toml /usr/src/greeter/
COPY src/ /usr/src/greeter/src/
RUN cd /usr/src/greeter && pip install --no-cache-dir .
CMD ["greeter"]