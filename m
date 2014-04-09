X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/09/13
Message-ID: <5abe3d0eae67015fea3d3674277b45e7@tribut.de>
Date: Wed, 09 Apr 2014 10:57:16 +0200
From: Felix Eckhofer <felix@...but.de>
To: oss-security@...ts.openwall.com
Subject: Session IP check bypass in Roundcube 1.0
Content-Type: text/plain; charset=utf-8

Hi.

Roundcube 1.0-beta added support for the the X-Forwarded-For and 
X-Real-IP HTTP headers when the check_ip configuration option is set. 
This effectively allows the attacker to bypass the session IP check 
completely by setting one of these headers to the victim's IP address.

The problem is still present in the latest version (1.0).
Bug is being tracked here: http://trac.roundcube.net/ticket/1489729


Regards
felix
