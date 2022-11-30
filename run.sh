export JOB_SERVER_PORT=8080  # Same port as before
export OUTPUT_FILE="output"
export PATH=/Users/andresvervaecke/tools/apache-maven-3.8.6/bin:$PATH

cd multi-language-beam
mvn compile exec:java -Dexec.mainClass=org.apache.beam.examples.multilanguage.SklearnMnistClassification \
    -Dexec.args="--runner=PortableRunner \
                 --jobEndpoint=localhost:$JOB_SERVER_PORT \
                 --output=$OUTPUT_FILE" \
    -Pportable-runner