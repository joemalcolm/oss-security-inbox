X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/08/3
Message-ID: <x2keab1748f1004071705q5e7489fdl45bbb064346838aa@mail.gmail.com>
Date: Wed, 7 Apr 2010 18:05:55 -0600
From: Kurt Seifried <kurt@...fried.org>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: ClamAV small issues
Content-Type: text/plain; charset=utf-8

On Wed, Apr 7, 2010 at 6:02 PM, Josh Bressers <bressers@...hat.com> wrote:
> These are certainly worth of CVE ids, but it's going to be tricky, as the
> first issue is a couple of things as seen in the bug:
> https://wwws.clamav.net/bugzilla/show_bug.cgi?id=1826
>
> I'm going to defer this assignment to MITRE (added Steve Christey to the CC).
>
> Thanks.

This already appears to have a CVE, fromt he bug report:

ReversingLabs Corp approached CERT-FI about detection evasion attacks found in
many Antivirus software and other signature-based protection software. In
short, the case is related to falures when parsing archive formats.
?ReversingLabs Corp has crafted 15 ZIP, CAB, 7Z and RAR archive files that are
considered valid by the relevant decompressors, but signature based detection
systems cannot detect malicious content contained within them.

CVE: CVE-2010-0098

> --
>    JB

-Kurt
