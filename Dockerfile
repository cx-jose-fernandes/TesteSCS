# Use a clean base image
FROM alpine:3.19

# Add some packages to create vulnerabilities or bloat
RUN apk add --no-cache curl bash git

# Create a dummy file
RUN echo "Hello, this is a test image!" > /hello.txt

# Default command
CMD ["cat", "/hello.txt"]
