FROM semaphoreui/semaphore:v2.9.0
USER root
# Install python + pip (Alpine-based image)
RUN apk add --no-cache python3 py3-pip
# Install WinRM dependencies
RUN pip3 install --no-cache-dir pywinrm requests
USER semaphore
