X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/15/2
Message-ID: <20140215192012.GB566@ulrik.uio.no>
Date: Sat, 15 Feb 2014 20:20:12 +0100
From: Petter Reinholdtsen <pere@...gry.com>
To: Dimitri John Ledkov <xnox@...ian.org>, 738855@...s.debian.org, oss-security@...ts.openwall.com
Subject: Re: Bug#738855: initscripts: Skip killing root-owned process starting with @
Content-Type: text/plain; charset=utf-8

I am not convinced this is something we should implement in
init.d/sendsigs.  If we are going to implement this systemd
compatibility, it might be better to implement it as a option for
killall5, instead of faking omitpid values.  Anyone willing to write
such implementation?  killall5 already know about all processes and
their names, and asking it to ignore processes matching some regular
expression should not be very hard.

-- 
Happy hacking
Petter Reinholdtsen
