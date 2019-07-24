X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/07/24/3
Message-ID: <CAG09ER1gaptDPN3W-03BTQh_-P1Ta-GWicCprr_VLOz_FARagA@mail.gmail.com>
Date: Wed, 24 Jul 2019 09:26:45 +0200
From: Stig Rohde Døssing <srdo@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2018-1320] Apache Storm vulnerable Thrift version
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2018-1320[PRODUCT]:Apache Storm[VERSION]:Apache Storm
0.9.1-incubating to 1.2.2[PROBLEMTYPE]:CWE-20: Input
Validation[DESCRIPTION]:Apache Storm versions 0.9.1-incubating to
1.2.2
              use Thrift library versions vulnerable to CVE-2018-1320.

Mitigation: Upgrade to Apache Storm 1.2.3 or later.

Credit: Arun Mahadevan for discovery and fix

