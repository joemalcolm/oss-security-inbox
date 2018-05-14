X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/05/14/2
Message-ID: <20180514082952.nf64klmaqvjjqyt6@jwilk.net>
Date: Mon, 14 May 2018 10:29:52 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: PGP/MIME and S/MIME mail clients vulnerabilities
Content-Type: text/plain; charset=utf-8

https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060315.html has 
more details:

"[...] HTML is used as a back channel to create an oracle for modified 
encrypted mails.  It is long known that HTML mails and in particular 
external links like <img href="tla.org/TAG"/> are evil if the MUA 
actually honors them (which many meanwhile seem to do again; see all 
these newsletters).  Due to broken MIME parsers a bunch of MUAs seem to 
concatenate decrypted HTML mime parts which makes it easy to plant such 
HTML snippets."

-- 
Jakub Wilk
