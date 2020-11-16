FROM scratch as builder 

WORKDIR /hello-world/

COPY hello.py .
FROM python:latest

COPY --from=builder /hello-world/hello.py .
ENTRYPOINT ["python"]
CMD ["hello.py"]
