X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/2
Message-ID: <20261116144335.BLhGlopc@steffen%sdaoden.eu>
Date: Mon, 16 Nov 2026 15:43:35 +0100
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Solar Designer wrote in
 <20261116073443.GA14465@...nwall.com>:
 |I'm sorry I'm late to comment in this thread, but I feel a few aspects
 |are still misunderstood by a lot of people here.
 |
 |On Thu, Nov 05, 2026 at 09:14:35AM -0500, Jan Schaumann wrote:
 ...
 |> That is, for any account that has an invalid password
 |> hash field of '*', you can log in by entering a
 |> password >257 characters, which will cause crypt(3) in
 |> musl libc to return '*'.
 |
 |Kind of, and that's indeed embarrassing, but it misses important detail.
 |
 |musl's crypt(3) only returns "*" when the setting (aka salt) string
 |passed to it is not "*", so it reasonably expected the caller doing the
 |typical strcmp() would see no match.  What OpenSSH did was authenticate
 |one user while taking the password hash field from another user.  That
 |could be a reasonable way to mitigate timing leaks as long as
 |authentication result is discarded.  The problem is it wasn't.  Such
 |fake yet real authentication against another user's password hash was
 |unexpected by musl developers.
 ..
 |My original design in crypt_blowfish used two different failure tokens,
 |"*0" and "*1".  This is what libxcrypt inherited, unless it's configured
 |with --disable-failure-tokens, in which case it returns NULL.
 ...
 |Some distros that use libxcrypt already --disable-failure-tokens for
 |quite a while.
 |
 |musl is likely going to start returning NULL in a future release, but
 |for now will likely move to the same "*0" and "*1" failure tokens that
 |libxcrypt uses.
 |
 |Besides the risk of crashes on NULL dereference, I also worry that in
 |some wrappers and scripting languages NULL may be mapped to an empty
 |string or (more reasonably) to a non-object.  I am seeing the latter
 ...
 |Overall, I am not sure NULL is actually safer than "*0" and "*1".
 ...
 |OpenBSD bcrypt used to return ":" on error until 2015, but switched to
 |returning NULL since.  As I recall, OpenBSD's own passwd(1) program was
 ...
 |Finally, I include below two postings by Rich Felker to the musl list.

There was also on the dropbear list, before Matt Johnston posted
here.

Given the above, which is all hacky in one way or another, and the
50+ year history of this function, to me a new function entry
point with clearly from-scratch defined semantics appear the most
attractive.

Hypothetically, how would a (posix_)crypt(3) would need to be
defined in order to be an almost drop-in replacement, but with
NULL error return and an errno(3) list that makes sense?

  ..
 --End of <20261116073443.GA14465@...nwall.com>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
