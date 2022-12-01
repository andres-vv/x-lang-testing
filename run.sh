export JOB_SERVER_PORT=8080  # Same port as before
export PATH=/Users/andresvervaecke/tools/apache-maven-3.8.6/bin:$PATH

export OUTPUT_FILE="src/main/resources/output"
export INPUT_FILE="src/main/resources/input.csv"
export MODEL_PATH="src/main/resources/model"

cd multi-language-beam
mvn compile exec:java -Dexec.mainClass=org.apache.beam.examples.multilanguage.SklearnMnistClassification \
    -Dexec.args="--runner=PortableRunner \
                 --jobEndpoint=localhost:$JOB_SERVER_PORT \
                 --output=$OUTPUT_FILE \
                 --input=$INPUT_FILE \
                 --modelPath=$MODEL_PATH" \
    -Pportable-runner