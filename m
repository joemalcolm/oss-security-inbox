X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/29/1
Message-ID: <20141229000625.GD19737@pisco.westfalen.local>
Date: Mon, 29 Dec 2014 01:06:25 +0100
From: Moritz Mühlenhoff <jmm@...til.org>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Cc: Fiedler Roman <Roman.Fiedler@....ac.at>, security@...ntu.com
Subject: Re: parse_datetime() bug in coreutils
Content-Type: text/plain; charset=utf-8

On Mon, Nov 24, 2014 at 06:47:24PM -0800, Seth Arnold wrote:
> Hello,
> 
> Fiedler Roman discovered that coreutils' parse_datetime() function
> has some flaws that may be exploitable if the date(1), touch(1),
> or potentially other programs, accept untrusted input for certain
> parameters. While researching this issue, he discovered that it
> was independantly discovered by Bertrand Jacquin and reported at
> http://debbugs.gnu.org/cgi/bugreport.cgi?bug=16872
> 
> $ touch '--date=TZ="123"345" @1'
> Segmentation fault (core dumped)
> $ date '--date=TZ="123"345" @1'
> *** Error in `date': double free or corruption (out): 0x00007fffc9866c20 ***
> Aborted (core dumped)
> $
> 
> The GNU bugtracker has this patch to fix the problem:
> http://debbugs.gnu.org/cgi/bugreport.cgi?msg=11;filename=date-tz-crash.patch;att=1;bug=16872
> and this patch to include the fix in coreutils and a small test case:
> http://debbugs.gnu.org/cgi/bugreport.cgi?msg=19;filename=coreutils-date-crash.patch;att=1;bug=16872
> 
> Can a CVE please be assigned for this issue.

This CVE request seems to have fallen through the cracks,
adding cve-assign@...re.org to the recipients.

Cheers,
        Moritz
