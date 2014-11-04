X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/05/2
Message-ID: <CAN-Kwu21zU-U51B-_fM21MnOEPc6Ssh9wmjRTGS-Bth_SpAJtQ@mail.gmail.com>
Date: Tue, 4 Nov 2014 12:20:02 -0600
From: Ian Cordasco <graffatcolmingov@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request for requests-kerberos
Content-Type: text/plain; charset=utf-8

Hello all,

A fix was merged and released today for the package which performs
kerberos authentication when using python-requests. Prior to this,
every version of the package did not properly handle mutual
authentication which means that the client did not verify that the
user was communicating with a trusted server. The version which
contains the fix is 0.6 and all prior versions are considered
vulnerable.

Please assign a CVE to this issue.

Cheers,
Ian
