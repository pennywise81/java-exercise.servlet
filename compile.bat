REM @TODO make all this more elegant
@echo off
set tomcat_path=C:\Program Files\apache-tomcat\apache-tomcat-9.0.31
set output_name=java-exercise-servlet
del /f /s /q out 1>nul
rd /s /q out 1>nul
if exist out rd /s /q out 1>nul
mkdir out
javac -classpath "%tomcat_path%\lib\servlet-api.jar" src\de\larsschweisthal\javaexercise\servlet\JavaExerciseServlet.java -d out\%output_name%\WEB-INF\classes\
copy src\web.xml out\%output_name%\WEB-INF