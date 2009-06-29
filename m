X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/06/29/4
Message-ID: <20090629162553.46f08744@redhat.com>
Date: Mon, 29 Jun 2009 16:25:53 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: oss-security+ml@...lde.de
Subject: Re: CVE id request: compface
Content-Type: text/plain; charset=utf-8

On Mon, 29 Jun 2009 13:48:31 +0200 Nico Golde
<oss-security+ml@...lde.de> wrote:

> there is a buffer overflow in compface:
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=534973
> http://milw0rm.org/exploits/8982

It seems that Fedora compface packages contain this patch since the
first import to Fedora:

http://cvs.fedoraproject.org/viewvc/rpms/compface/devel/compface-1.5.2-stack-smashing.patch

HTH

-- 
Tomas Hoger / Red Hat Security Response Team
