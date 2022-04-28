X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/04/28/2
Message-ID: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
Date: Thu, 28 Apr 2022 14:12:04 +0000
From: "Seaman, Chad" <cseaman@...mai.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE-2022-21449 and version reporting
Content-Type: text/plain; charset=utf-8

Hi All,

Have a question for MITRE, Oracle, and folks here…

https://neilmadden.blog/2022/04/19/psychic-signatures-in-java/

“Update 2: Oracle have informed me they are in the process of correcting the advisory to state that only versions 15-18 are impacted. The CVE has already been updated.<https://nvd.nist.gov/vuln/detail/CVE-2022-21449> Note that 15 and 16 are no longer supported, so it will only list 17 and 18 as impacted.”

Checking the official CVE listing…

https://nvd.nist.gov/vuln/detail/CVE-2022-21449

It appears this is true, the reported versions in the official CVE listing, only show 17 and 18, where 15 is also impacted.

In what universe exactly are versions omitted from vulnerability reporting because a vendor “no longer supports that version”… this non-supported version is still vulnerable?

Are exploit developers expected to check against the version of the vulnerable application during their exploit detonation to ensure they’re “only infecting supported versions?”.

Why is this being allowed… this is dangerous for everyone involved save for Oracle’s own ego or public image?

Scratching my head,
Chad
