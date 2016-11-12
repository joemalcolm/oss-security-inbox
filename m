X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/12/4
Message-Id: <041433EB-C484-41D5-8589-A5CE9F8BA0E7@beckweb.net>
Date: Sun, 13 Nov 2016 00:13:40 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: CVE request: Jenkins remote code execution vulnerability
Content-Type: text/plain; charset=utf-8

Hello,

An unauthenticated remote code execution vulnerability was discovered in the
Jenkins continuous integration and continuous delivery automation server.
A serialized Java object transferred to the Jenkins CLI can make Jenkins
connect to an attacker-controlled LDAP server, which in turn can send a
serialized payload leading to code execution, bypassing existing protection
mechanisms.

The Jenkins project tracks this as SECURITY-360. Releases with the fix are
planned for Wednesday, November 16.

Please assign a CVE to this issue.

References:

Jenkins website:
https://jenkins.io/

Publication of the vulnerability in this talk:
https://www.deepsec.net/speaker.html#PSLOT250

Notification and workaround by the Jenkins project here:
https://groups.google.com/d/msg/jenkinsci-advisories/-fc-w9tNEJE/GRvEzWoJBgAJ

