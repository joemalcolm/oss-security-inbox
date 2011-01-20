X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/20/3
Message-ID: <777693093.44058.1295542633717.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 20 Jan 2011 11:57:13 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: heap corruption in VLC media player
Content-Type: text/plain; charset=utf-8

This should only need one ID. Please use CVE-2011-0021.

Thanks.

-- 
    JB


----- Original Message -----
> From upstream git [1]:
> 
> "This patch resolves two heap corruption vulnerabilities in the CDG
> decoder for VLC media player. In both cases, a failure to properly
> validate indexes into statically-sized arrays on the heap allows a
> maliciously crafted CDG video to corrupt the heap in a controlled
> manner, potentially leading to code execution."
> 
> -Dan
> 
> [1]
> http://git.videolan.org/?p=vlc.git;a=commit;h=f9b664eac0e1a7bceed9d7b5854fd9fc351b4aab
