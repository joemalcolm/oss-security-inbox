X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/06/03/4
Message-ID: <20090603150743.GA10860@redhat.com>
Date: Wed, 3 Jun 2009 16:07:43 +0100
From: Joe Orton <jorton@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: "billion laughs" attack against Apache APR
Content-Type: text/plain; charset=utf-8

Hi, could a CVE name be allocated for this issue:

The expat XML parser is vulnerable to the "billion laughs" entity 
expansion attack.  This results in a denial of service vulnerability in 
any network-facing service which uses the Apache "APR-util" library's 
wrapper interface for expat to parse untrusted XML documents.  The 
Apache httpd WebDAV module "mod_dav" is such a service.

References: 
http://milw0rm.com/exploits/8842 
http://marc.info/?l=apr-dev&m=124396021826125&w=2
http://svn.apache.org/viewvc?rev=781403&view=rev

Affected versions: 
APR-util <= 1.3.4
