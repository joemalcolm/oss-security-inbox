X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/26/8
Message-ID: <CAHmME9pvD3WYORH7u0WZEwxfsURJ+DZ0tQeYbx8fptZLeY-x6w@mail.gmail.com>
Date: Wed, 26 Apr 2017 22:27:12 +0200
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: CVE request: remote heap overflow in linux networking stack
Content-Type: text/plain; charset=utf-8

Hey guys,

Just following up on CVE-2017-7477 -- systems must also be patched
with this commit that landed today:

https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=5294b83086cc1c35b4efeca03644cf9d12282e5b

Regards,
Jason
