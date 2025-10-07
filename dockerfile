
#use an official openJDK runtime as a parent image 
FROM openjdk:17-jdk-slim

#set the working directory inside the container
WORKDIR /app

#copy the current directory contents into the container
COPY . .

#compile the java program
RUN javac fibonacci.java

#command to run the program
CMD ["java","fibonacci"]
