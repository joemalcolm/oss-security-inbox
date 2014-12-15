X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/15/1
Message-ID: <548EB12E.7080900@redhat.com>
Date: Mon, 15 Dec 2014 11:00:14 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: CVE request: glibc
Content-Type: text/plain; charset=utf-8

The getnetbyname function in glibc 2.21 in earlier will enter an 
infinite loop if the DNS backend is activated in the system Name Service 
Switch configuration, and the DNS resolver receives a positive answer 
while processing the network name.

Upstream reference:

   <https://sourceware.org/bugzilla/show_bug.cgi?id=17630>

-- 
Florian Weimer / Red Hat Product Security
