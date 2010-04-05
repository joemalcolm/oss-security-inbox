X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/05/4
Message-Id: <20100405153100.4220fe46.michael.s.gilbert@gmail.com>
Date: Mon, 5 Apr 2010 15:31:00 -0400
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Debian Moin Question
Content-Type: text/plain; charset=utf-8

On Mon, 5 Apr 2010 14:25:05 -0400 (EDT), Josh Bressers wrote:
> Hello everyone,
> 
> I just ran across this ID from MITRE:
> 
> Name: CVE-2010-1238
> Status: Candidate
> URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2010-1238
> Final-Decision:
> Interim-Decision:
> Modified:
> Proposed:
> Assigned: 20100405
> Category:
> Reference: DEBIAN:DSA-2024
> Reference: URL:http://www.debian.org/security/2010/dsa-2024
> 
> MoinMoin 1.7.1 allows remote attackers to bypass the textcha
> protection mechanism by modifying the textcha-question and
> textcha-answer fields to have empty values.
> 
> The only data I can find on this is from the Debian DSA, and the
> information is quite slim. Can someone shed more light on this flaw?

would the textcha.patch section in the debian diff [0] as linked
from the DSA be sufficient?

mike

[0] http://security.debian.org/pool/updates/main/m/moin/moin_1.7.1-3+lenny4.diff.gz
