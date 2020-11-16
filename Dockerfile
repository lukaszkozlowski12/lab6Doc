FROM scratch as builder 

WORKDIR /python-http-hello-world/

ADD https://raw.githubusercontent.com/lukaszkozlowski12/lab_6_chmura/main/lab6.py
FROM python:3.8-buster
RUN pip install --upgrade pip && \    
    pip install --no-cache-dir flask flask-restful
COPY --from=builder /python-http-hello-world/plikPython.py .
ENTRYPOINT ["python"]
CMD ["plikPython.py"]
