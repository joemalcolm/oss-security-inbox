X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/05/6
Message-Id: <201707051202.v65C2NDB005864@room101.nl.oracle.com>
Date: Wed, 05 Jul 2017 14:02:23 +0200
From: Casper.Dik@...cle.com
To: oss-security@...ts.openwall.com
cc: Daniel Skowroński <daniel@...nf.net>
Subject: Re: systemd fails to parse user that should run service 
Content-Type: text/plain; charset=utf-8



>2) If user name specified in systemd unit file is syntactically correct
>(according to systemd check) but user name does not exist then systemd
>refuse to start that unit.
>

Should systemd really valid usernames?  I would think that you would 
either use getpwnam(username) and if that fails you may then parse it as a 
numeric value.  If "0day" isn't a valid username according to getpwnam(), 
when converting it to a numeric uid should *also* fail because "0day" 
isn't a properly numeric value.

Casper



