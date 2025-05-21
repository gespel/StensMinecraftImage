FROM fedora:latest

RUN dnf upgrade -y
RUN dnf install -y htop java-21-openjdk-devel wget git
RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
RUN java -jar BuildTools.jar
COPY entry.sh entry.sh
RUN chmod +x entry.sh
RUN echo "eula=true" > eula.txt
CMD ["./entry.sh"]
