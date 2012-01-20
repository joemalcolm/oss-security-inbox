X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/20/14
Message-ID: <20120120144439.GA6173@openwall.com>
Date: Fri, 20 Jan 2012 18:44:39 +0400
From: Solar Designer <solar@...nwall.com>
To: "Samuel J. Greear" <sjg@...sjg.com>, dillon@...llo.backplane.com, Nolan Lum <nol888@...il.com>, security@...gonflybsd.org
Cc: oss-security@...ts.openwall.com, magnum <john.magnum@...hmail.com>
Subject: Re: weird crypt-sha* in DragonFly BSD
Content-Type: text/plain; charset=utf-8

Hi Samuel,

Thank you for taking care of this issue!

I just took a look at:

crypt(3) - Switch SHA256/512 to the Linux implementation
http://gitweb.dragonflybsd.org/dragonfly.git/commitdiff/d8ee3b5d2d9ba12d8978a47bccb8e3945f96ea08

This mostly looks good to me, but I got a few comments:

1. You will want to be aware of this issue:

glibc crypt(3), crypt_r(3), PHP crypt() may use alloca()
http://www.openwall.com/lists/oss-security/2011/11/15/1

There's no agreed upon fix yet (use "thread-next" to see some ideas),
but I think all distros/projects using Ulrich's SHA-crypt will need to
deal with this issue eventually.  I'll try to remember to inform you
once we choose to do anything specific.

2. Instead of:

+ * The deprecated sha256/512 functions are somehow sensitive to the
+ * order of this crypt_types array as well as their respective "name" members.
+ *
+ * In order to ensure that both existing passwords will continue to work and
+ * that new passwords will be more secure by using the new algorithms even
+ * without updating the existing login.conf, this array is now scanned
+ * backwards. This could be reverted in the future when the deprecated SHA
+ * functionality is removed.

how about using the more reliable approach proposed by magnum here? -

http://www.openwall.com/lists/john-dev/2012/01/19/1

As you can see, he has even spent time to identify the specific 64-bit
magic values.  Of course, you'll need to double-check them (such as by
applying the patch and testing logins to existing accounts with both
sha256 and sha512 on a 64-bit DragonFly system.)

3. It would be nice for upgraded systems to automatically switch from
sha256 to sha512 in login.conf - perhaps there's some on-upgrade hook
that you can use for this?  sha256 no longer means the same thing
anyway; there's no good reason for a percentage of DragonFly systems to
temporarily switch from one SHA-256 based algorithm to another just for
them to hopefully switch to sha512 a little bit later (when the admin
does that).  And, what's worse, many systems will end up stuck in this
intermediary state.

Thanks again,

Alexander
