#pull a base image which gives all required tools and libraries
FROM openjdk:17-jdk-alpine

#create a folder where the app code will stored
WORKDIR /app

#Copy the source code from your HOST machine to your container
COPY src/Main.java /app/Main.java

#Compile the application code
RUN javac Main.java

#run the application when the conatiner starts
CMD ["java","Main"]
