X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/07/5
Message-ID: <20130107222348.GA9967@devzero.fr>
Date: Mon, 7 Jan 2013 23:23:49 +0100
From: vladz <vladz@...zero.fr>
To: oss-security@...ts.openwall.com
Subject: /dev/ptmx timing
Content-Type: text/plain; charset=utf-8


Hi list,

I noticed that it was possible to measure inter-keystrokes timing thanks
to the /dev/ptmx character device.  Any local user that is using
pseudo-terminal can be targeted.

As it may also be used to disclose sensible information such as password
length, I was wondering if it should be treat as a security issue?                      

Description + PoC: http://vladz.devzero.fr/013_ptmx-timing.php.

No sure right now but I think the only way to solve this is to modify
the pts handling at kernel level.  Any opinions on that?

Thanks,
vladz.

