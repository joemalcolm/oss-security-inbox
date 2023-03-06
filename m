X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/06/1
Message-ID: <CAGUWgD-RAoKOCtQ3COqyuFKxo0KHnwQFYpV9ZRfyidWPd4v2VA@mail.gmail.com>
Date: Mon, 6 Mar 2023 09:53:06 +0200
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: double-free vulnerability in OpenSSH server 9.1 (CVE-2023-25136)
Content-Type: text/plain; charset=utf-8

On Mon, Feb 13, 2023 at 2:05 PM Qualys Security Advisory <qsa@...lys.com> wrote:
>
> Hi all,
>
> On Thu, Feb 02, 2023 at 01:02:04PM +0000, Qualys Security Advisory wrote:
> > Exploiting this vulnerability will not be easy: modern memory allocators
> > provide protections against double frees, and the impacted sshd process
> > is unprivileged and heavily sandboxed.
>
> Quick update: we were able to gain arbitrary control of the "rip"

So besides the double free bug you managed to circumvent
the mitigation in both linux and openbsd, right?
Did you find weakness in the mitigation or did you find
fundamental way to exploit double free?
