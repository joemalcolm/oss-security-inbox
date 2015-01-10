X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/10/3
Message-ID: <Pine.LNX.4.64.1501101510150.31425@beijing.mitre.org>
Date: Sat, 10 Jan 2015 15:14:48 -0500 (EST)
From: cve-assign@...re.org
To: endeavor <endeavor@...nbowsandpwnies.com>
cc: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: Re: CVE Request: libpng 1.6.15 Heap Overflow
Content-Type: text/plain; charset=utf-8


On Fri, 9 Jan 2015, endeavor wrote:

> I thought it might be helpful to add some additional clarity to this bug.
> There were two bugs patched in the latest updates to libpng. The first bug is 
> an overflow in png_read_IDAT_data, and is triggerable due to checks on image 
> width that were removed a while ago in libpng branches 1.6.x and 1.5.x. This 
> is the bug against which the following write up applies: 
> http://tfpwn.com/files/libpng_heap_overflow_1.6.15.txt .
> While fixing this bug, John Bowler found a second, unrelated overflow in 
> png_combine_row. His mailing list post on that bug is found here: 
> http://sourceforge.net/p/png-mng/mailman/message/33172831/ . It looks like 
> CVE-2014-9495 was assigned against this bug, but attributed to me by 
> accident.

Thank you for clarifying.

CVE-2014-9495 remains associated with the png_combine_row() issue found by 
John Bowler.  We will update its description and references if needed.

Use CVE-2015-0973 for the png_read_IDAT_data/png_handle_IHDR issue.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
