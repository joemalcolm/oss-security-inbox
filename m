X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/15/1
Message-ID: <CANh7qnT+p-gxLVQLTSNxQAX2KQL1A9iTCD7bVPqXW1QfOkfRAw@mail.gmail.com>
Date: Mon, 15 Jun 2020 15:45:55 +0800
From: Sheng Wu <wusheng@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-9483] Apache SkyWalking SQL injection vulnerability
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2020-9483
[PRODUCT]:Apache SkyWalking
[VERSION]:Apache SkyWalking 6.0.0 to 6.6.0, 7.0.0
[PROBLEMTYPE]:SQL Injection
[DESCRIPTION]: When use H2/MySQL/TiDB as Apache SkyWalking storage, the
metadata query through GraphQL protocol, there is a SQL injection
vulnerability,
               which allows to access unpexcted data. Apache SkyWalking
6.0.0 to 6.6.0, 7.0.0 H2/MySQL/TiDB storage implementations don't use the
appropriate
               way to set SQL parameters.

Sheng Wu 吴晟
Twitter, wusheng1108

