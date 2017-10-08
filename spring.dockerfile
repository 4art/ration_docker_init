FROM java:8
RUN \
	apt update && \
	apt install -y git vim wget curl maven && \
	git clone https://github.com/4art/ration_counter_spring.git

VOLUME /vol/development
# create working directory
RUN mkdir -p /vol/development
WORKDIR /vol/development
# maven exec
CMD ["mvn", "clean", "package", "exec:java"]
