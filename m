X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/13/3
Message-ID: <73d1e766-20ed-6907-d8c1-781c015a2359@apache.org>
Date: Fri, 13 Jan 2023 17:18:24 +0000
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-22602: Apache Shiro before 1.11.0, when used with Spring Boot 2.6+, may allow authentication bypass through a specially crafted HTTP request 
Content-Type: text/plain; charset=utf-8

Description:

When using Apache Shiro before 1.11.0 together with Spring Boot 2.6+, a specially crafted HTTP request may cause an authentication bypass.

The authentication bypass occurs when Shiro and Spring Boot are using different pattern-matching techniques. Both Shiro and Spring Boot < 2.6 default to Ant style pattern matching.
Mitigation: Update to Apache Shiro 1.11.0, or set the following Spring Boot configuration value:  `spring.mvc.pathmatch.matching-strategy = ant_path_matcher`

Credit:

v3ged0ge and Adamytd (finder)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-22602

