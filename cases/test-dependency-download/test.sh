# SUMMARY: Tests a download of required dependencies through the artefact endpoint
# AUTHOR: Stuart Davidson (@spedge)

set -e # Exit on error
# Source libraries. Uncomment if needed/defined
#. "${RT_LIB}"
#. "${RT_PROJECT_ROOT}/_lib/lib.sh"
# IMAGE_NAME=  # Use a env variable to name images/containers

clean_up() {
    rm -rf /usr/src/mymaven/storage
	rm -rf /usr/src/mymaven/target
}
trap clean_up EXIT

# Test code goes here

mvn -s settings.xml package

# Test the file we wanted was created.
[ -s /usr/src/mymaven/cases/test-dependency-download/target/hangar-test-project1-0.0.1-SNAPSHOT.jar ]

# Test that the number of downloaded dependencies and transitive dependencies were correct.
[ "$(find /usr/src/mymaven/storage/ -type f | wc -l)" -eq "1275" ] 

# Test all passed.
exit 0
