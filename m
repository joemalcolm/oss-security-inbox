X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/20/5
Message-ID: <194812936.50116688.1355999759872.JavaMail.root@redhat.com>
Date: Thu, 20 Dec 2012 05:35:59 -0500 (EST)
From: Amos Benari <abenari@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Multiple SQL injection vulnerabilities in the puppetclass.rb and search.rb scripts in Foreman 1.0.1
Content-Type: text/plain; charset=utf-8

Multiple SQL injection vulnerabilities in the puppetclass.rb and search.rb scripts in Foreman 1.0.1 allow remote attackers to execute arbitrary SQL commands via multiple parameters. These issues have been assigned the identifier CVE-2012-5648. Source code updates are available at: https://github.com/theforeman/foreman/commit/387b764b614170f23b3552aca498612e341652db
The issue is now solved in Foreman 1.0.2

