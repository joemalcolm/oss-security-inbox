X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/26/14
Message-ID: <1385507213.8432.15.camel@banzai>
Date: Wed, 27 Nov 2013 00:06:53 +0100
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: CVE request: Apache Solr 4.6.0
Content-Type: text/plain; charset=utf-8

Hello,

Apache Solr 4.6.0 was released a few days ago. This version includes a
fix for bug SOLR-4882 (directory traversal when accessing XSLT
stylesheets and Velocity templates):
http://lucene.apache.org/solr/4_6_0/changes/Changes.html#v4.6.0.security
https://issues.apache.org/jira/browse/SOLR-4882

If the user can store his own files on the server, this vulnerability
could be abused to gain remote code execution.

Regards,
Nicolas Grégoire



