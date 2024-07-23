### warのdeploy
```
curl --upload-file ./sample.war "http://tomcat:tomcat@localhost/manager/text/deploy?path=/sample&update=true"
```

### warのundeploy
```
curl "http://tomcat:tomcat@localhost/manager/text/undeploy?path=/sample"

```