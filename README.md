# hangar-test-maven
Framework for testing Maven Integration on the Hangar Platform

### To Build
```
docker build . -t hangar-test-maven
```

### To Run
```
docker run -it --rm --name hangar-test-maven -w /usr/src/mymaven -e HANGAR_URL=http://127.0.0.1:8080/java hangar-test-maven:latest
```

*Note :*  When running this container against a locally-running version of your application, you will need to give the IP for your machine as the container sees it (usually the IP given as part of the virtual network that docker runs on - ipconfig or an equivalent will let you see those details) - it won't see 127.0.0.1 as your computer, it will see it as itself. 

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