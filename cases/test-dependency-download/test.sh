# SUMMARY: Tests a download of required dependencies through the artefact endpoint
# LABELS: maven
# AUTHOR: Stuart Davidson (@spedge)

set -e # Exit on error
# Source libraries. Uncomment if needed/defined
#. "${RT_LIB}"
#. "${RT_PROJECT_ROOT}/_lib/lib.sh"
# IMAGE_NAME=  # Use a env variable to name images/containers

clean_up() {
    # remove any files, containers, images etc
}
trap clean_up EXIT

# Test code goes here

mvn -s settings.xml package