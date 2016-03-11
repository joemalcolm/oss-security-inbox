X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/11/17
Message-ID: <20160311212240.GA3689@pisco.westfalen.local>
Date: Fri, 11 Mar 2016 22:22:40 +0100
From: Moritz Mühlenhoff <jmm@...til.org>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: Re: Several out of bounds reads in ProFTPD
Content-Type: text/plain; charset=utf-8

On Fri, Mar 11, 2016 at 05:25:15PM +0100, Hanno Böck wrote:
> https://blog.fuzzing-project.org/40-Several-out-of-bounds-reads-in-ProFTPD.html
> 
> The latest releases of ProFTPD 1.3.5a and 1.3.6rc2 fix several out of
> bounds read issues. I discovered these issues by running the test suite
> with Address Sanitizer enabled.

Can you elaborate on the impact? Do any of these allow a user to crash the ftpd or
can the user merely terminate  her own FTP session?

Cheers,
        Moritz
