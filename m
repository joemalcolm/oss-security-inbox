X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/02/1
Message-ID: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
Date: Sun, 2 Jul 2017 09:08:48 +0000
From: Daniel Skowroński <daniel@...nf.net>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: systemd fails to parse user that should run service
Content-Type: text/plain; charset=utf-8

Hi all,

Just wanted to bring attention to issue with systemd not doing what is expected when parsing User that should run service.
When it fails to parse string starting with digit it fails back to root causing obvious threat to security.

See discussion with developer on github: https://github.com/systemd/systemd/issues/6237

Best,
-Daniel Skowronski

