X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/3
Message-ID: <auyPS6sHrxJcoiC_@netmeister.org>
Date: Thu, 5 Nov 2026 09:14:35 -0500
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

OpenSSH just published OpenSSH 10.6p2 with a critical
fix for a password authentication bypass on systems
that use musl libc and have PAM disabled.  Alpine
Linux has been called out as one such affected
system:

https://www.openssh.org/releasenotes.html#10.6p2

>  * sshd(8): avoid password authentication bypass
>  that is exploitable through sshd(8) that affects
>  some Linux systems when built and run with PAM
>  support disabled. We consider the root cause of
>  this bug to be outside sshd, but it is exploitable
>  via sshd and can be avoided there.
>
>   This bug was reported by Özgün Kültekin of
>   Wakefield (wakefield.co)


The vulnerability itself is described here:

https://sshhole.com/

(The history of how we got here is actually fun.)

That is, for any account that has an invalid password
hash field of '*', you can log in by entering a
password >257 characters, which will cause crypt(3) in
musl libc to return '*'.


The code fix (checking for MIN_PASSWORD_HASH_LEN
instead of using musl crypt(3)'s default "*") is
here:
https://github.com/openssh/openssh-portable/commit/4353fdc43ef646c43a8dda7025cc1a898caf1482

Setting `PasswordAuthentication no` in
/etc/ssh/sshd_config mitigates the problem (at the
obvious cost of not being able to do password auth).

