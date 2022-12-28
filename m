X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/28/1
Message-ID: <1a1963aa1036ba07@orthanc.ca>
Date: Tue, 27 Dec 2022 16:44:49 -0800
From: "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@...hanc.ca>
To: oss-security@...ts.openwall.com
cc: Alejandro Colomar <alx.manpages@...il.com>, Michael Kerrisk <mtk.manpages@...il.com>, linux-kernel@...r.kernel.org, linux-man@...r.kernel.org
Subject: Re: [patch] proc.5: tell how to parse /proc/*/stat correctly
Content-Type: text/plain; charset=utf-8

Dominique Martinet writes:

> But, really, I just don't see how this can practically be said to be parsable...

In its current form it never will be.  The solution is to place
this variable-length field last.  Then you can "cut -d ' ' -f 51-"
to get the command+args part (assuming I counted all those fields
correctly ...)

Of course, this breaks backwards compatability.

--lyndon
