X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/04/22
Message-ID: <20140604195157.GA24469@eldamar.local>
Date: Wed, 4 Jun 2014 21:51:57 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: CVE Request: Horde_Ldap: Stricter parameter check in bind() to detect empty passwords
Content-Type: text/plain; charset=utf-8

Hi,

Horde_Ldap released an update fixing a security issue mentioned in the
changes:

> [jan] SECURITY: Stricter parameter check in bind() to detect empty
> passwords.

https://github.com/horde/horde/commit/8f719b53b0ee2d4b8a40a770430683c98fb5f2fd

fixed in 2.0.6 with commit:

https://github.com/horde/horde/commit/4c3e18f1724ab39bfef10c189a5b52036a744d55

Could a CVE be assigned for this issue?

Regards,
Salvatore
