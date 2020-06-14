X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/14/1
Message-ID: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
Date: Sun, 14 Jun 2020 00:30:54 -0600
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>,  Ubuntu Kernel Team <kernel-team@...ts.ubuntu.com>
Subject: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules
Content-Type: text/plain; charset=utf-8

Hey folks,

I noticed that Ubuntu 18.04's 4.15 kernels forgot to protect
efivar_ssdt with lockdown, making that a vector for disabling lockdown
on an efi secure boot machine. I wrote a little PoC exploit to
demonstrate these types of ACPI shenanigans:

https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language.sh

The comment on the top has description of exploit strategy and such. I
haven't yet looked into other kernels and distros that might be
affected, though afaict, Canonical's kernel seems to deviate a lot
from upstream.

Jason
