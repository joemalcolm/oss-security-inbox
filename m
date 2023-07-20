X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/20/3
Message-ID: <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
Date: Thu, 20 Jul 2023 14:41:57 +0100
From: Sevan Janiyan <venture37@...klan.co.uk>
To: oss-security@...ts.openwall.com
Subject: Re: Announce: OpenSSH 9.3p2 released
Content-Type: text/plain; charset=utf-8

On 20/07/2023 14:24, Demi Marie Obenour wrote:
> Should there be a system-wide configuration file containing a list of 
> known-good PKCS#11 libraries? ssh-agent having to guess if something is 
> a PKCS#11 library is less than awesome.

There's a compile time setting for paths from which you are able to load 
libraries from.


Sevan
