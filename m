X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/13/4
Message-ID: <20170213112557.381@usenet.piggo.com>
Date: Mon, 13 Feb 2017 10:30:10 +0000 (UTC)
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: XXE in Openpyxl
Content-Type: text/plain; charset=utf-8

On 2017-02-07, Doran Moppert <dmoppert@...hat.com> wrote:
> This is yet another instance of CVE-2016-9318.  As already observed
> on the Debian tracker, disabling entity resolution altogether is
> probably going to make openpyxl fail on well-formed Excel documents
> using standard entities such as &lt;.

Hi Doran,

we do not see this issue being technically the same thing as
CVE-2016-9318. openpyxl shouldn't need to resolve *external* XML
entities, and the initial reporter of the Debian bug tested that the
upstream patch doesn't break reglar entities like "&lt"; and
"&gt;". What do you think ?

Cheers,

--Seb

