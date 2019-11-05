X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/05/2
Message-ID: <CAB8XdGA+QOBH2ztTP4T+Nk_YSRO7oJCK1O3UZTGh6K313ma-WA@mail.gmail.com>
Date: Tue, 5 Nov 2019 15:53:54 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-12406] Apache CXF does not restrict the number of message attachments
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2019-12406
[PRODUCT]:Apache CXF
[VERSION]:Apache CXF versions before 3.3.4 and 3.2.11
[PROBLEMTYPE]:Denial of Service
[REFERENCES]:
http://cxf.apache.org/security-advisories.data/CVE-2019-12406.txt.asc
[DESCRIPTION]:Apache CXF does not restrict the number of message
attachments present in a
              given message. This leaves open the possibility of a denial
of service type
              attack, where a malicious user crafts a message containing a
very large number
              of message attachments.

              From the 3.3.4 and 3.2.11 releases, a default limit of 50
message attachments
              is enforced. This is configurable via the message property
              "attachment-max-count".

