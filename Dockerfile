FROM rasa/rasa:3.1.0

USER root

COPY . .

RUN rasa train --fixed-model-name=credbot

CMD ["run" , "--enable-api", "--port", "8080", "--cors", "*"]