FROM python.3.6.alpha

LABEL maintainer="Fulano <fulano@gmail.com>

RUN apk update && \
	apk update && \
	apk --no-cache add linux-headers build-base curl-dev postgresql-client postgresql-dev
	
	WORKDIR /opt/app/ecom-app
	
	COPY /app .
	
RUN pip3 install --upgrade pip \
  && pip3 install -r /opt/app/ecom-app/requirements.txt \
  && pip3 install flask_wtf
