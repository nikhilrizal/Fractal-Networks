
FROM public.ecr.aws/docker/library/hello-world:nanoserver

LABEL maintainer="nikdevcloud@gmail.com"

ENV PYTHONUNBUFFERED=1


WORKDIR /FractalNetworks



# RUN apt-get update && apt-get install -y     --no-install-recommends \
#     wget netcat-openbsd  postgresql-client gcc python3-dev   binutils libproj-dev gdal-bin

RUN apt-get install -y nano

RUN mkdir static

COPY App /FractalNetworks/


# COPY requirements.txt /FractalNetworks/







# RUN pip install --upgrade pip
# RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install gunicorn


# ENTRYPOINT ["./entrypoints.sh"]
