FROM tomcat:9.0.91-jdk11-corretto

# tomcat managerのリソースを配置する
RUN cp -R /usr/local/tomcat/webapps.dist/manager/ /usr/local/tomcat/webapps/manager/

# manager-gui,manager-scriptロールを有効化する。
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
# ローカルホスト以外からアクセスできない制限を解除する。
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
