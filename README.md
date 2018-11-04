# hangar-test-maven
Framework for testing Maven Integration on the Hangar Platform

### To Build
```
docker build . -t hangar-test-maven
```

### To Run
```
docker run -it --rm --name hangar-test-maven -w /usr/src/mymaven hangar-test-maven:latest
```

### Example Output
```
[PASS    ] .test-dependency-download 25.31s
[SUMMARY ] LogDir: 65d4126f-dd6f-483d-8195-d8ea60cb9d79
[SUMMARY ] Version: UNKNOWN
[SUMMARY ] Passed: 1
[SUMMARY ] Failed: 0
[SUMMARY ] Cancelled: 0
[SUMMARY ] Skipped: 0
[SUMMARY ] Duration: 25.31s
```
