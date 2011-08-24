X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/24/8
Message-ID: <1187053605.301058.1314215357677.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 24 Aug 2011 15:49:17 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: libqt4: two memory issues
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Hi,
> 
> A) buffer overflow (looks only like an off-by-one from a very quick
> look)
> http://qt.gitorious.org/qt/qt/commit/9ae6f2f9a57f0c3096d5785913e437953fa6775c

Use CVE-2011-3193 for this.

I couldn't find this code in Harfbuzz-ng or pango. Has someone looked into
this further?

> 
> B) buffer overflow on greyscale images with multiple samples per pixel
> https://bugzilla.novell.com/show_bug.cgi?id=637275
> http://qt.gitorious.org/qt/qt/commit/cb6380beb81ab9571c547270c144988781fed465
> 

Use CVE-2011-3194

Thanks.

-- 
    JB
