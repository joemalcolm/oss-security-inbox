X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/26/2
Message-ID: <20261126083656.auh7z3t2lnmhw2ze@jwilk.net>
Date: Thu, 26 Nov 2026 09:36:56 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

* Robert Rothenberg <rrwo@...nsec.org>, 2026-11-25 00:32:
>Workarounds
>-----------
>Replace Strong::Random with a cryptographically secure source such as 
>Crypt::URandom or Crypt::SysRandom.

There's also RAND_bytes() in Net::SSLeay, which is more likely to be 
already installed on your system than the two above (but also much more 
heavyweight, so YMMV).

-- 
Jakub Wilk
