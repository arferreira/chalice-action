FROM python:3.7

LABEL version="1.0.1"
LABEL repository="https://github.com/arferreira/chalice-action"
LABEL homepage="https://github.com/arferreira/chalice-action"
LABEL maintainer="Antonio Souza <arfs.antonio@gmail.com> (https://iamantoniosouza.com)"

COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip
RUN pip install chalice
RUN pip install requests

ENTRYPOINT ["/entrypoint.sh"]
