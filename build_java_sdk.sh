export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.16.1.jdk/Contents/Home
cd /Users/andresvervaecke/projects/client-work/Beam/beam

./gradlew :sdks:java:container:java11:docker -Pjava11Home=$JAVA_HOME