X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/1
Message-ID: <309114f1-a679-4ad9-b802-7b9e6c038e4e@gmail.com>
Date: Mon, 16 Nov 2026 19:14:15 -0600
From: Jacob Bachmeyer <jcb62281@...il.com>
To: oss-security@...ts.openwall.com, Solar Designer <solar@...nwall.com>
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 11/16/26 01:34, Solar Designer wrote:
> [...]
>
> Besides the risk of crashes on NULL dereference, I also worry that in
> some wrappers and scripting languages NULL may be mapped to an empty
> string or (more reasonably) to a non-object.  I am seeing the latter
> when I call crypt() from Perl on Rocky Linux 9 and 10.  If I check with
> defined(), it is not.  But if I blindly use it as a string, it's empty.

That is because Perl's undefined value coerces to an empty string and/or 
the number zero, with a "Use of uninitialized value" warning if warnings 
are enabled.  (This is part of the reason you should always put "use 
strict; use warnings;" at the top of every file of Perl code.)

Since both of those are also Boolean false in Perl, the undefined value 
is accepted (without a warning) as a false value in Boolean contexts.

> If this happens when setting a new password, the empty string could be
> blindly put into a password hash field.  That could be later interpreted
> as the user having no password (the traditional Unix behavior for empty
> password hash field) or if it's passed into Perl's crypt() as the salt
> then we'll get a non-object again, which may behave like an empty string
> again and the two may match.  That would mean successful authentication
> with no/empty or with any password, regardless of the intended password.

Correction:  *will* behave like an empty string in Perl.  This is the 
documented behavior; see "Declarations" in perlsyn.

> I suspect this sort of problem is not limited to Perl.  It may also not
> be limited to treatment of non-objects as empty strings - they could
> also be stored as-is and then passed back into crypt() and used in a
> comparison, possibly resulting in a match between two non-objects.

I suspect that this is an example of a more general problem of 
programmers being unaware of edge cases.  You seem to have been unaware 
of the documented behavior---how many other programmers have similar 
"blind spots" and how much code is waiting to break as a result?


-- Jacob

