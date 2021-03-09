X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/09/2
Message-ID: <CAHydKRCvKgWUm=J=WYJ=UWEfAsO67UDjo2ReDwq6fd=da4amqg@mail.gmail.com>
Date: Tue, 9 Mar 2021 16:02:23 +0100
From: Gézapeti Cseh <gezapeti@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-35451: Oozie local privilege escalation
Content-Type: text/plain; charset=utf-8

Description:

There is a race condition in OozieSharelibCLI which allows a malicious
attacker to replace the files in Oozie's sharelib during it's
creation.

A race condition in OozieSharelibCLI allows an attacker to replace the
contents of the sharelib.  This issue affects Apache Oozie versions
prior to 5.2.1.

Mitigation:

Validate the contents of the sharelib after uploading.

Credit:

The Apache Oozie PMC would like to thank Jonathan Leitschuh for
reporting the issue
