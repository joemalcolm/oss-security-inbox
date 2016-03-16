X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/16/9
Message-ID: <a4b9fc1a-0d82-98fe-3835-7fec48f3ac4b@laposte.net>
Date: Wed, 16 Mar 2016 11:47:31 +0100
From: Laël Cellier <lael.cellier@...oste.net>
To: oss-security@...ts.openwall.com, website@...se.com
Subject: Re: server and client side remote code execution through a buffer overflow in all git versions before 2.7.1 (unpublished ᴄᴠᴇ-2016-2324 and ᴄᴠᴇ‑2016‑2315)
Content-Type: text/plain; charset=utf-8

Oh………………………… Big mistake. I might advertised too soon.

I saw changes were pushed in master, so I thought the next version 
(which was 2.7.1) would be the one which will include the fix.

But as pointed out on 
https://security-tracker.debian.org/tracker/CVE-2016-2324 no versions 
including the fixes were released yet, and even 2.7.3 still include 
path_name(). I didn’t checked the code (Sorrrry).


So the only way to fix it is to draw your compilers and compile the 
current master branch at https://git.kernel.org/cgit/git/git.git/.

Or do like github did by using the patches at 
http://thread.gmane.org/gmane.comp.version-control.git/286253 and 
http://thread.gmane.org/gmane.comp.version-control.git/286008


I’m really sorry…
