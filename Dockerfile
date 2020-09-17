#Container image that runs your code
FROM debian:9.5-slim

# COPY or ADD your code file from your action repository to the filesystem path '/' of the container
ADD entrypoint.sh /entrypoint.sh

# Change permissoins to make your script executable
RUN chmod +x /entrypoint.sh

# Code file to execuite when the docer container starts up (entrypoint.sh)
ENTRYPOINT ["/entrypoint.sh"]
