X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/21/15
Message-ID: <50FD57E4.1060203@msgid.tls.msk.ru>
Date: Mon, 21 Jan 2013 18:59:48 +0400
From: Michael Tokarev <mjt@....msk.ru>
To: oss-security@...ts.openwall.com
CC: Sebastian Krahmer <krahmer@...e.de>, coley@...us.mitre.org
Subject: Re: CVE Request coreutils
Content-Type: text/plain; charset=utf-8

21.01.2013 18:54, Sebastian Krahmer wrote:
> Hi,
> 
> Can someone assign a CVE id for a buffer overflow in coreutils?
> Its the same code snippet (coreutils-i18n.patch) and it affects sort, uniq and join:

It's probably worth to mention that these are SuSE-specific and not in upstream,
if I understand correctly.

> https://bugzilla.novell.com/show_bug.cgi?id=798538
> https://bugzilla.novell.com/show_bug.cgi?id=796243
> https://bugzilla.novell.com/show_bug.cgi?id=798541

Thanks,

/mjt
