X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/10/25/17
Message-ID: <20191025212309.GA18967@pisco.westfalen.local>
Date: Fri, 25 Oct 2019 23:23:09 +0200
From: Moritz Mühlenhoff <jmm@...til.org>
To: oss-security@...ts.openwall.com
Subject: Security fixes from Android 10 release which are relevant outside the Android ecosystem?
Content-Type: text/plain; charset=utf-8

Android advisories used to contain commit references to AOSP change sets, but
that's not the case for https://source.android.com/security/bulletin/android-10.

Typically most of these issues are specific to Android, but there are a few which
per the CVE description are possibly affecting software packaged/used by Linux
distros as well, one example:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-9325:
"In libvpx, there is a possible out of bounds read due to a missing bounds check.
This could lead to remote information disclosure with no additional execution
privileges needed. "

Similar for CVE-2019-9232, CVE-2019-9278, CVE-2019-9325, CVE-2019-9371, CVE-2019-9433,
CVE-2019-9423 (also libexif and opencv)

Is there anyone from Android/Google on the list, who can comment on this? Can these
references be added again for the benefit of non-Android distros?

Cheers,
        Moritz
	
