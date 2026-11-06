X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/5
Message-ID: <CAH8yC8k6PQAmAzHNhTk2QXfqPFmvuLtDQNNZpBhh5rZYQ=ma3Q@mail.gmail.com>
Date: Thu, 5 Nov 2026 23:57:07 -0500
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On Thu, Nov 5, 2026 at 2:15 PM Jan Schaumann <jschauma@...meister.org> wrote:
>
> OpenSSH just published OpenSSH 10.6p2 with a critical
> fix for a password authentication bypass on systems
> that use musl libc and have PAM disabled.  Alpine
> Linux has been called out as one such affected
> system:
>
> https://www.openssh.org/releasenotes.html#10.6p2
>
> >  * sshd(8): avoid password authentication bypass
> >  that is exploitable through sshd(8) that affects
> >  some Linux systems when built and run with PAM
> >  support disabled. We consider the root cause of
> >  this bug to be outside sshd, but it is exploitable
> >  via sshd and can be avoided there.
> >
> >   This bug was reported by Özgün Kültekin of
> >   Wakefield (wakefield.co)
>
>
> The vulnerability itself is described here:
>
> https://sshhole.com/
>
> (The history of how we got here is actually fun.)
>
> That is, for any account that has an invalid password
> hash field of '*', you can log in by entering a
> password >257 characters, which will cause crypt(3) in
> musl libc to return '*'.
>
> The code fix (checking for MIN_PASSWORD_HASH_LEN
> instead of using musl crypt(3)'s default "*") is
> here:
> https://github.com/openssh/openssh-portable/commit/4353fdc43ef646c43a8dda7025cc1a898caf1482
>
> Setting `PasswordAuthentication no` in
> /etc/ssh/sshd_config mitigates the problem (at the
> obvious cost of not being able to do password auth).

One general comment that does not fit well into most of the
discussions around sshole...  The practice of using a single character
"*", or a shorter string of random characters so hashes do not match,
likely provides the conditions for a side channel or timing attack.
Usually, the crypto routines should be near-constant time as
possible.*  Short-circuiting due to mismatched string lengths
certainly provides the side channel.

Whether the side-channel provides for an actual vulnerability is
another discussion.

[*] With lots of hand-waiving about what it means to be constant time
or near-constant time on modern cpu architectures.

Jeff
