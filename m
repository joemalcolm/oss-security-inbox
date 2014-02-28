X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/28/9
Message-Id: <201402282005.s1SK5fhc001797@linus.mitre.org>
Date: Fri, 28 Feb 2014 15:05:41 -0500 (EST)
From: cve-assign@...re.org
To: dregad@...tisbt.org
Cc: cve-assign@...re.org, oss-security@...ts.openwall.com
Subject: Re: CVE request: MantisBT 1.2.13 SQL injection vulnerability
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://www.mantisbt.org/bugs/view.php?id=17055

> admin_config_report.php relied on unsanitized, inlined query parameters, 
> enabling a malicious user to perform an SQL injection attack.

Use CVE-2014-2238.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJTEOrzAAoJEKllVAevmvmspe0H/2ZbK4tLZxphR3oxZxG4us3k
id4xpzKnkXhxvh1WOcAOg7XZO1Hz0C8KP+I4uHEPXgRTdkZ8cgxql7Za950xmKIh
GheEzcHA+2tLPPsVnvqUNgzzfPfDRrclLXHctWLzgEq3zlP6IoDM38R9GbYW4h1k
AOofk0X5KKZPo0W4UiUeu78pztM/7pPmll/TmGmUXYBILK6kZmIyl7y0c9vsxr30
N8TDZWae5iQzTbnqI9OIDyd9hGfZVs0ec/jKToMKNt/Hku1UB4WMqk7qO/Size/V
ICxKaeTc4gr4kbxTgw4FYEQ9wT1fZNGLbpineeBrtbxu4F6VAj5fY0A1viyrjd8=
=z9fj
-----END PGP SIGNATURE-----
