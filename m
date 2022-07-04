X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/04/7
Message-ID: <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
Date: Mon, 4 Jul 2022 17:00:29 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: <oss-security@...ts.openwall.com>
Subject: Re: DO NOT OPEN PREVIOUS MAIL Re:  Denial of service in  GnuPG
Content-Type: text/plain; charset=utf-8

As a data point, if Mutt has pgp_auto_decode=yes ("automatically attempt 
to decrypt traditional PGP messages") in the config, it will trigger the 
DoS when you view the message.

(And it seems that if you lose patience waiting for the message to show 
up and press ctrl+backslash in attempt to make it quit, it will actually 
hang forever.)

-- 
Jakub Wilk
