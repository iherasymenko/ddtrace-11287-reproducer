FROM python:3.12-slim
COPY test_pymongo_patching.py .
RUN pip install ddtrace==2.15.1 pytest==8.3.3 pymongo==4.10.1
CMD ["pytest", "test_pymongo_patching.py", "--ddtrace-patch-all"]