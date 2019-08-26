X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/08/26/1
Message-ID: <CAGrd=aPxL96DK6YLr30=Lw7si00wW=RHBmn7b5uSpHt1dQSBEQ@mail.gmail.com>
Date: Mon, 26 Aug 2019 09:25:18 -0300
From: Carlos Eduardo <carlosecg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2019-15525: Missing TLS/SSL certificate validation in pw3270
Content-Type: text/plain; charset=utf-8

CVE: Missing TLS/SSL certificate validation in pw3270

Affected versions: all versions before 5.1

Description:
pw3270 is a GTK based tn3270 terminal emulator. Versions up to 5.0 are
vulnerable to a TLS/SSL certificate validation flaw, leading to attackers
in a MitM position being able to affect confidentiality, integrity and
availability of traffic between the client and host, including credentials
used. This flaw was fixed in version 5.1.

Mitigation:
Upgrade to version 5.1 and up.

This vulnerability was discovered by Carlos Gonçalves.

---
Carlos Gonçalves
IT Security Analyst

