X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/8
Message-ID: <0e414da6-39a9-45d5-8350-2f2360e06204@vanrees.org>
Date: Tue, 23 Jun 2026 20:56:00 +0200
From: Maurits van Rees <maurits@...rees.org>
To: oss-security@...ts.openwall.com
Subject: icalendar: Denial of Service CVE-2026-55099
Content-Type: text/plain; charset=utf-8

On behalf of the Plone/Zope Security Team and the icalendar maintainers, 
I announce the following.

Summary:
Component.__eq__ compares subcomponents in O(2^n) time relative to 
nesting depth. Because the parser accepts arbitrarily nested components, 
a sub-kilobyte .ics file is enough to make a single equality check run 
for minutes or hang indefinitely. Any application that compares parsed 
components (==, !=, in, set/dict membership, deduplication, test 
assertions) against attacker-supplied calendar data is exposed to denial 
of service.

icalendar 7.1.0, 7.1.1, and 7.1.2 are affected. It is fixed in icalendar 
7.1.3. Earlier versions are not affected.
(Version 7.2.0 was released today, and also has the fix.)

For details see 
https://github.com/collective/icalendar/security/advisories/GHSA-cv84-9p8j-fj68

Kind regards,

Maurits van Rees



