export BEAM_VERSION=2.43.0
# add maven to path
export PATH=/Users/andresvervaecke/tools/apache-maven-3.8.6/bin:$PATH

mvn archetype:generate \
    -DarchetypeGroupId=org.apache.beam \
    -DarchetypeArtifactId=beam-sdks-java-maven-archetypes-examples \
    -DarchetypeVersion=$BEAM_VERSION \
    -DgroupId=org.example \
    -DartifactId=multi-language-beam \
    -Dversion="0.1" \
    -Dpackage=org.apache.beam.examples \
    -DinteractiveMode=false