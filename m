X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/06/6
Message-ID: <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
Date: Tue, 6 Sep 2022 16:26:58 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: sagemath denial of service with abort() in gmp: overflow in mpz type
Content-Type: text/plain; charset=utf-8

If you can crash the python interpreter without syscalls and without
the kernel killing it for OOM, would you call this DoS?
