X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/24/3
Message-ID: <CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>
Date: Fri, 24 Jun 2016 10:14:46 -0700
From: Alvaro Hoyos <alvaro.hoyos@...login.com>
To: ruby-security-ann@...glegroups.com, rubysec-announce@...glegroups.com,  oss-security@...ts.openwall.com
Subject: [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0
Content-Type: text/plain; charset=utf-8

Overview:
Ruby-saml prior to version 1.3.0 is vulnerable to an XML signature wrapping
attack. Ruby-saml users must update to 1.3.0 version which implements 3
extra validations to mitigate this kind of attack.

Overall CVSS Score 6.1

Fix: Add extra validations to prevent Signature wrapping attacks [1]

[1] https://github.com/onelogin/ruby-saml

alvaro j hoyos | chief information security officer |
alvaro.hoyos@...login.com | +1 415.653.1893 | skype: alvaroonelogin

