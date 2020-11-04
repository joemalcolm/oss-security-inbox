X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/04/7
Message-ID: <CAH9eYVpmWAVAnUm5=7ASohtnOyWsN5zoeZ7ieDCeaML_tvq35w@mail.gmail.com>
Date: Wed, 4 Nov 2020 16:30:27 -0500
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Cc: security <security@...ro.apache.org>
Subject: [CVE-2020-17510] Apache Shiro Authentication Bypass Vulnerability
Content-Type: text/plain; charset=utf-8

Apache Shiro before 1.7.0, when using Apache Shiro with Spring, a specially
crafted HTTP request may cause an authentication bypass.

If you are NOT using Shiro’s Spring Boot Starter
(`shiro-spring-boot-web-starter`), you must configure add the
ShiroRequestMappingConfig auto configuration[1] to your application or
configure the equivalent manually[2].

[0] https://www.apache.org/security/
[1] https://shiro.apache.org/spring-framework.html#SpringFramework-WebConfig
[2]
https://github.com/apache/shiro/blob/shiro-root-1.7.0/support/spring/src/main/java/org/apache/shiro/spring/web/config/ShiroRequestMappingConfig.java#L28-L30

