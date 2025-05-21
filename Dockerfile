FROM fedora:latest

RUN dnf upgrade -y
RUN dnf install -y java-latest-openjdk.x86_64 htop wget git
RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
RUN java -jar BuildTools.jar