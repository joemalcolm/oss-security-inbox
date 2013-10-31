X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/31/2
Message-ID: <20131031144701.73becd57@redhat.com>
Date: Thu, 31 Oct 2013 14:47:01 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: gnutls/libdane buffer overflow
Content-Type: text/plain; charset=utf-8

On Thu, 24 Oct 2013 16:04:10 +0200 Marcus Meissner wrote:

> GNUTLS just posted a security adivsory which needs a CVE:
> 
> http://www.gnutls.org/security.html#GNUTLS-SA-2013-3
> GNUTLS-SA-2013-3

It is updated now and recommends using 3.1.16 or 3.2.6, which correct
off-by-one issue in the original fix:
https://gitorious.org/gnutls/gnutls/commit/0dd5529509e46b11d5c0f3f26f99294e0e5fa6dc

I assume this needs a new CVE.

-- 
Tomas Hoger / Red Hat Security Response Team
