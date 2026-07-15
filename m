X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/15/5
Message-ID: <87wluwgtvd.fsf@v45346.1blu.de>
Date: Wed, 15 Jul 2026 17:22:46 +0200
From: Stefan Bodewig <bodewig@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-26032: Apache Ivy: PackagerResolver path traversal vulnerability 
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Severity: moderate 

Affected versions:

- - Apache Ivy (org.apache.ivy:ivy) 2.0.0 through 2.5.3

Description:

The PackagerResolver of Apache Ivy is able to download online
artifacts and to (re)package them in a format defined by a
packager.xml file. This repackaging is done by an Ant script, which is
stored in a subdirectory of the configured "buildRoot" directory. This
subdirectory is calculated based on modules coordinates, like the
organisation, name or version.

If one of the coordinates contains "../" sequences - which are valid
characters for Ivy coordinates in general- it is possible to break out
of the configured "buildRoot" directory where other files can be
overwritten.

In order to exploit this vulnerability an attacker needs to have
access to a packager repository and add or modify the coordinates in
ivy.xml files to have such "../" sequences.

Users of Apache Ivy 2.0.0 to 2.5.3 (inclusive) should upgrade to Ivy 2.6.0.

Credit:

yudeshui of dhgate security (reporter)

References:

https://ant.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-26032

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmpXpcYACgkQohFa4V9ri3L7uACgr9dNo4ef+5Ly4dbgxV3j+x8u
mBMAoLtTpA8DoE84PcOucocRbJt0M/Jf
=tAVg
-----END PGP SIGNATURE-----
