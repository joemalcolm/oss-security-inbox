X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/07/24/4
Message-ID: <CAG09ER1O_+YYQzj9dmTJ225JtiB-qLeMJe=ztPO1bPF0ukiLcA@mail.gmail.com>
Date: Wed, 24 Jul 2019 09:27:15 +0200
From: Stig Rohde Døssing <srdo@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2018-11779] Apache Storm UI Java deserialization vulnerability
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2018-11779[PRODUCT]:Apache Storm[VERSION]:Apache Storm
1.1.0 to 1.2.2[PROBLEMTYPE]:CWE-502: Deserialization of Untrusted
Data[DESCRIPTION]:In Apache Storm versions 1.1.0 to 1.2.2,
              when the user is using the storm-kafka-client or
storm-kafka modules,
              it is possible to cause the Storm UI daemon to
deserialize user provided bytes into a Java class.

Mitigation: Upgrade to Apache Storm 1.2.3 or later.

Credit: Bobby Evans for discovery and fix

