X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/31/8
Message-ID: <43666129.226293.1296509409891.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 31 Jan 2011 16:30:09 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: code execution in VLC media player
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-0531.

Thanks.

-- 
    JB

----- Original Message -----
> When opening a malformed MKV (WebM or Matroska) file in VLC, it is
> possible to corrupt memory and execute arbitrary code.
> Proof-of-concept exploit code is available and may be made public
> soon.
> 
> -Dan
> 
> [1] http://www.videolan.org/security/sa1102.html
> [2]
> http://git.videolan.org/?p=vlc.git;a=commit;h=59491dcedffbf97612d2c572943b56ee4289dd07
