# Use the latest Ubuntu base image
FROM docker:rc-dind

COPY ./gotty ./gotty

COPY ./gotty.sh ./gotty.sh

# Ensure proper permissions on the extracted files
# Replace <extracted_folder> with the actual folder name from the tar extraction
RUN chmod -R 755 ./gotty

RUN chmod +x /gotty.sh

RUN apk add --no-cache libc6-compat

# Set the default command to run the extracted file with arguments
# Replace <executable_file> with the name of the executable file inside the extracted folder
# You can pass arguments at runtime by appending them to the 'docker run' command
CMD ["./gotty.sh"]
