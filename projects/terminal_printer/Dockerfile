# Using ubuntu image as the base one for this
FROM ubuntu:latest

# creates a new directory and cd to it 
WORKDIR /my-app

# Copies the bash to the app folder inside the container
COPY hello.sh /my-app/

# gives executable permission
RUN chmod +x hello.sh

# Executes the script upon container initialization
CMD ["./hello.sh"]
