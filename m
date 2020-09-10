X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/10/3
Message-Id: <63E9EEC8-9E07-4CE5-B5EE-406FAFFBC1F4@nanthrax.net>
Date: Thu, 10 Sep 2020 11:45:14 +0200
From: Jean-Baptiste Onofre <jb@...thrax.net>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-11998] Apache ActiveMQ JMX remote client could execute arbitrary code
Content-Type: text/plain; charset=utf-8

CVE-2020-11998: Apache ActiveMQ JMX remote client could execute arbitrary code

Severity: Moderate

Vendor: The Apache Software Foundation

Affected Version: only Apache ActiveMQ 5.15.12

Vulnerability details: 
A regression has been introduced in the commit preventing JMX re-bind.
By passing an empty environment map to RMIConnectorServer, instead of the map that contains
he authentication credentials, it leaves ActiveMQ open to the following attack:

 https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html

"A remote client could create a javax.management.loading.MLet MBean and use
it to create new MBeans from arbitrary URLs, at least if there is no
security manager. In other words, a rogue remote client could make your
Java application execute arbitrary code."

Mitigation: Upgrade to Apache ActiveMQ 5.15.13

Credit: Jonathan Gallimore & Colm O hEigeartaigh

