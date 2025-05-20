# Base image
FROM alpine:3.15

# Add common packages known to have CVEs in older versions
RUN apk add --no-cache \
    bash \
    curl \
    openssl \
    git \
    busybox \
    libssl1.1 \
    wget \
    openjdk8-jre

# Optional: Install pip + a Python package with vulnerabilities
RUN apk add --no-cache python3 py3-pip && \
    pip3 install requests==2.19.1  # old version with known issues

# Create a dummy file to verify image content
RUN echo "This image is intentionally vulnerable for testing scanners." > /VULN-README.txt

CMD ["cat", "/VULN-README.txt"]
