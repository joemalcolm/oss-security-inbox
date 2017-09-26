X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/26/14
Message-ID: <CAPNiXbHGAzwC69b4pYbqyF2+kL+EH5HSRBeJaYa4fHtwQSBq2Q@mail.gmail.com>
Date: Tue, 26 Sep 2017 16:55:22 +0200
From: Alex R <alexr@...che.org>
To: dev <dev@...os.apache.org>, user <user@...os.apache.org>,  Amon Flair <amon@...dynarwhals.org>, Lyon Yang <lyon.yang.s@...il.com>,  security <security@...che.org>, oss-security@...ts.openwall.com
Subject: CVE-2017-7687: Libprocess might crash when decoding a malformed request.
Content-Type: text/plain; charset=utf-8

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.1.0 to 1.3.0
The unsupported Apache Mesos 1.0.x as well as 0.x versions may be also
affected.

Description:
When handling a decoding failure for a malformed URL path of an HTTP
request, libprocess might crash because the code accidentally calls
inappropriate function. A malicious actor can therefore cause a denial
of service of Mesos masters rendering the Mesos-controlled cluster
inoperable.

Mitigation:
pre-1.1.x users should upgrade to at least 1.1.3
1.1.x users should upgrade to 1.1.3
1.2.x users should upgrade to 1.2.2
1.3.0 users should upgrade to 1.3.1
1.4.0-dev users should obtain Mesos 1.4.0

Credit:
This issue was discovered by Lyon Yang and Jeremy Heng

Alex on behalf of Mesos PMC.

