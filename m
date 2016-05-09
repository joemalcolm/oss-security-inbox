X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/09/7
Message-ID: <CACn5sdRcbHO_PyXNSzX3ccs-xxHhGTkMoj5Xi0O6LGZb1cTJyw@mail.gmail.com>
Date: Mon, 9 May 2016 19:28:12 +0200
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-2099: use-after-free in Xerces 3.1.3
Content-Type: text/plain; charset=utf-8

Hi,

We found a use-after-free in Xerces 3.1.3 parsing an xml file (also
affecting older versions). Technical details and a patch are available
here:

https://issues.apache.org/jira/browse/XERCESC-2066

Regards,
Gustavo.
