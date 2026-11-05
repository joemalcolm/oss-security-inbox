X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/15
Message-Id: <20261105231052.BAF5D796@notatla.org.uk>
Date: Thu, 05 Nov 2026 23:10:52 +0000
From: lists@...atla.org.uk
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8


> Upon error, crypt_r, crypt_rn, and crypt_ra write an invalid hash
> to  the  output field of their data argument, and crypt writes an

If an error string is output does not : or multiple :: better
express the aim of never seeing this as field content
(because it is field separator) ?
