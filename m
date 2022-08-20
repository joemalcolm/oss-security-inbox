X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/20/1
Message-ID: <7d1f3488-dc28-e05a-1eb7-3a1a7efc9901@apache.org>
Date: Sat, 20 Aug 2022 22:55:58 +0000
From: Ralph Goers <rgoers@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-34916: Apache Flume: Improper Input Validation (JNDI Injection) in JMSMessageConsumer 
Content-Type: text/plain; charset=utf-8

Description:

Apache Flume versions 1.4.0 through 1.10.0 are vulnerable to a remote code execution (RCE) attack when a configuration uses a JMS Source with a JNDI LDAP data source URI when an attacker has control of the target LDAP server. This issue is fixed by limiting JNDI to allow only the use of the java protocol or no protocol. 

This issue is being tracked as FLUME-3428

Credit:

Apache Flume would like to thank Frentzen Amaral for reporting this issue.

References:

https://issues.apache.org/jira/browse/FLUME-3428
https://lists.apache.org/thread/qkmt4r2t9tbrxrdbjg1m2oczbvczd9zn

