X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/26/2
Message-ID: <87d3bb4qxj.fsf@mid.deneb.enyo.de>
Date: Mon, 26 Dec 2011 10:34:32 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2011-4862 is not BSD-specific
Content-Type: text/plain; charset=utf-8

* Huzaifa Sidhpurwala:

>> The telnetd from netkit does not appear to be affected.
>
> The patch seems to be applicable though, probably you need to do
> something else to make it segfault?

Our version of netkit (which we once got from
<ftp://ftp.uk.linux.org/pub/linux/Networking/netkit/>) lacks Kerberos
support entirely.
