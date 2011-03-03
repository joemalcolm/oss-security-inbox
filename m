X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/03/8
Message-ID: <1020251845.375296.1299184265420.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 3 Mar 2011 15:31:05 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: VLC bookmark buffer overflow
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Can I get CVE-identifier for this issue:
> 
> "VLC media player is vulnerable to a buffer overflow attack when
> processing .mp3 file and its metadata. It fails to perform boundry
> checks when creating a bookmark from the malicious media file playing,
> resulting in a crash, overwriting ECX register. While the evil .mp3 is
> playing, you go Playback > Bookmarks > Manage bookmarks > Create."
> 
> References:
> http://osvdb.org/show/osvdb/62728/printer

Please use CVE-2011-1087

Thanks.

-- 
    JB
