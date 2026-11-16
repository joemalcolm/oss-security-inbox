X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/1
Message-ID: <20261116073443.GA14465@openwall.com>
Date: Mon, 16 Nov 2026 08:34:43 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Hi,

I'm sorry I'm late to comment in this thread, but I feel a few aspects
are still misunderstood by a lot of people here.

On Thu, Nov 05, 2026 at 09:14:35AM -0500, Jan Schaumann wrote:
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

Kind of, and that's indeed embarrassing, but it misses important detail.

musl's crypt(3) only returns "*" when the setting (aka salt) string
passed to it is not "*", so it reasonably expected the caller doing the
typical strcmp() would see no match.  What OpenSSH did was authenticate
one user while taking the password hash field from another user.  That
could be a reasonable way to mitigate timing leaks as long as
authentication result is discarded.  The problem is it wasn't.  Such
fake yet real authentication against another user's password hash was
unexpected by musl developers.

It was well understood before that blindly returning "*" on error would
be a vulnerability, which would not have been limited to OpenSSH.  When
the passed setting string is "*", musl returns "x" instead.

My original design in crypt_blowfish used two different failure tokens,
"*0" and "*1".  This is what libxcrypt inherited, unless it's configured
with --disable-failure-tokens, in which case it returns NULL.

We're lucky that "*0" isn't normally found in the password hash field...
unless a password changing program would obtain this error return from
crypt(3) and blindly put it in there.  Even then, normally
authentication would fail because a second call with that as the setting
would return "*1"... unless it's by OpenSSH prior to the recent fix.

This incident is a reminder that we should probably bite the bullet and
start returning NULL.  There should be way fewer programs unprepared to
handle NULL now than there were back when we chose to use failure tokens
instead.

Some distros that use libxcrypt already --disable-failure-tokens for
quite a while.

musl is likely going to start returning NULL in a future release, but
for now will likely move to the same "*0" and "*1" failure tokens that
libxcrypt uses.

Besides the risk of crashes on NULL dereference, I also worry that in
some wrappers and scripting languages NULL may be mapped to an empty
string or (more reasonably) to a non-object.  I am seeing the latter
when I call crypt() from Perl on Rocky Linux 9 and 10.  If I check with
defined(), it is not.  But if I blindly use it as a string, it's empty.

If this happens when setting a new password, the empty string could be
blindly put into a password hash field.  That could be later interpreted
as the user having no password (the traditional Unix behavior for empty
password hash field) or if it's passed into Perl's crypt() as the salt
then we'll get a non-object again, which may behave like an empty string
again and the two may match.  That would mean successful authentication
with no/empty or with any password, regardless of the intended password.

I suspect this sort of problem is not limited to Perl.  It may also not
be limited to treatment of non-objects as empty strings - they could
also be stored as-is and then passed back into crypt() and used in a
comparison, possibly resulting in a match between two non-objects.

Overall, I am not sure NULL is actually safer than "*0" and "*1".

> The code fix (checking for MIN_PASSWORD_HASH_LEN
> instead of using musl crypt(3)'s default "*") is
> here:
> https://github.com/openssh/openssh-portable/commit/4353fdc43ef646c43a8dda7025cc1a898caf1482
> 
> Setting `PasswordAuthentication no` in
> /etc/ssh/sshd_config mitigates the problem (at the
> obvious cost of not being able to do password auth).

Yes.  As others also pointed out elsewhere, OpenSSH should also make
sure it always fails authentication (regardless of password hash length)
when it performs fake authentication as timing leak defense.

On Thu, Nov 05, 2026 at 11:10:52PM +0000, lists@...atla.org.uk wrote:
> If an error string is output does not : or multiple :: better
> express the aim of never seeing this as field content
> (because it is field separator) ?

I guess the idea is that crypt(3) could return ":" on error to ensure no
match with anything that came from a passwd format file, where that's
the field separator.  Yes, but that would be differently dangerous: if a
password changing program blindly puts that error string into a field in
such file, that would look like an empty field on subsequent reads, and
further fields would be shifted.  A constant ":" return (not two
different failure tokens) could also match a previously returned value
like that if the storage format isn't a passwd format file (e.g., LDAP
or SQL database).

OpenBSD bcrypt used to return ":" on error until 2015, but switched to
returning NULL since.  As I recall, OpenBSD's own passwd(1) program was
safe from this, but I wouldn't be surprised if the ":" return got copied
into other projects where it isn't necessarily safe.

Finally, I include below two postings by Rich Felker to the musl list.

Alexander

https://www.openwall.com/lists/musl/2026/11/09/5

On Mon, Nov 09, 2026 at 08:56:50AM -0500, Rich Felker wrote:
> The correct usage of crypt for password authentication is asserting
> that, if P is the candidate password and H is the account password
> "hash", strcmp(crypt(P,H),H)==0. Allowing the user in without checking
> that is potentially a password-authentication-bypass bug.
> 
> I put "hash" in quotation marks because it might not be an actual
> hash; it can be a string chosen by the tooling or a user manually
> editing the passwd/shadow files to produce something unmatchable. So
> an application should not be making assumptions about its form.
> 
> Through at least 1.2.6, musl uses failure tokens "*" and "x" for cases
> where the password should never match. These include unsupported
> password length (for hash types that need to restrict it) and
> unsupported or invalid setting/salt strings.
> 
> It isn't decided yet, but 1.2.7 will probably switch to using failure
> tokens matching libxcrypt's ("*0" and "*1") which are slightly safer
> against some forms of misuse by the caller. Future versions may drop
> failure tokens entirely and switch to treating these conditions as
> errors (returning null).
> 
> I would not document future behavior, and would document existing
> behavior only as an implementation detail, not an application-facing
> contract. The only contract with the application is that crypt(P,H)
> will never return a string identical to H except on valid password (in
> the absence of theoretical hash collisions) regardless of the validity
> of P and H.

https://www.openwall.com/lists/musl/2026/11/06/7

On Fri, Nov 06, 2026 at 01:54:55PM -0500, Rich Felker wrote:
> On Thu, Nov 05, 2026 at 10:07:13AM -0500, Rich Felker wrote:
> > Versions of OpenSSH prior to 10.6p2 using musl are affected by an
> > authentication bypass when UsePAM=no and PasswordAuthentication=yes.
> > Anyone who cannot immediately upgrade should edit /etc/ssh/sshd_config
> > to set:
> > 
> > PasswordAuthentication no
> > 
> > and restart sshd after ensuring you have working pubkey access.
> > 
> > Dropbear and other non-OpenSSH software using password-based logins is
> > not affected. It is my position that this is not a bug in musl just an
> > erroneous use by the caller. But the mechanism by which this happened
> > is something we have been wanting to change for a while now, and it
> > very likely will be changed in the upcoming release cycle.
> > 
> > Details to follow soon.
> 
> OK, some details on the mechanism here, starting with backroung and
> moving step-by-step:
> 
> 
> 1. The way you validate a password against a "hash" (which is actually
> a combination of a 'setting' prefix and hashed password) is comparing
> the result of crypt(password,hash) against hash. Only if they compare
> equal should the user be granted access.
> 
> 
> 2. Mechanically, any character or sequence of characters that do not
> form a valid hash (and that do not contain : or \n) can be placed in
> the password field of the shadow file (or legacy passwd file) to
> ensure that it's impossible to login as that user with a password,
> since for such a hash, crype(pass,hash)!=hash is always true. The
> conventional "no password access" value is "*".
> 
> 
> 3. In order to avoid leaking information about which user accounts
> exist and have password-based login available, OpenSSH has a clever
> hack to, when the user's hashed password is a single character like
> "*" that can never be matched, use a different user's password hash as
> the setting/salt. Originally they used root's:
> 
> https://github.com/openssh/openssh-portable/commit/9286875a73b2de7736b5e50692739d314cd8d9dc
> 
> and later switched to searching the user database until finding a user
> with a password:
> 
> https://github.com/openssh/openssh-portable/commit/dbf788b4d9d9490a5fff08a7b09888272bb10fcc
> 
> Then, after obtaining the other_user_hash, OpenSSH checks the
> condition:
> 
> 	crypt(pass,other_user_hash) == hash
> 
> and, despite having already determined that password logins are
> disabled for this user, allows the login the proceed if the condition
> is met.
> 
> 
> 4. There is a historical disagreement on how crypt() should handle
> exceptional conditions. Pre-POSIX, crypt was not permitted to return a
> null pointer, and a lot of software did (and some apparently still
> does) assume this. POSIX does not define any error conditions except
> ENOSYS (which was probably about export controls), so defining a
> behavior when the operation cannot be completed with the provided
> parameters is entirely up to the implementation.
> 
> Some implementations -- mainly OpenBSD, FreeBSD, and recent Fedora --
> return a null pointer and report the condition in errno.
> 
> A number of implementations including NetBSD, musl, and most
> glibc-based Linux distros (now using libxcrypt) return what's come to
> be known as a "failure token" -- a string that guarantees
> 
> 	crypt(pass,failure_token) != failure_token
> 
> for any possible password pass.
> 
> The failure token musl uses is "*", except when the input salt/setting
> is "*"; in that case, it returns "x", so that:
> 
> 	crypt(pass,"*") != "*"
> 
> is satisfied to prevent any password from validating.
> 
> Other implementations commonly use "*0" and "*1" for these roles.
> 
> 
> 5. Having a failure token not match any password is contingent on the
> caller of crypt passing the correct hash as the settign argument to
> crypt. While it's guaranteed that:
> 
> 	crypt(pass,failure_token) != failure_token
> 
> it is impossible to guarantee that:
> 
> 	crypt(pass,some_other_hash) != failure_token
> 
> But that is exactly what OpenSSH was testing, by passing a hash
> obtained from searching for another user account with a password.
> 
> 
> 6. While many password hash algorithms always succeed as long as the
> setting string is not invalid, SHA256 and SHA512 -- not the base hash
> algorithms themselves, but the way they're used in multiple rounds as
> password hashes -- have quadratic time in password length, and thus
> require treating excessively long passwords as an error condition to
> avoid DoS in any process that validates passwords. So, for an
> excessively long password pass, and some_other_hash taken from a user
> who has a SHA256 or SHA512 hashed password:
> 
> 	crypt(pass,some_other_hash) == failure_token
> 
> 
> 7. For any choice of failure_token, if it ends up in the password
> field of the shadow file, it will allow password bypass for that user,
> because:
> 
> 	crypt(pass,some_other_hash) == failure_token == user_hash
> 
> Since by convention (what's implemented by shadow tooling, etc.) "*"
> is used for disabling password access to accounts and is also the
> failure token musl uses, this condition was met.
> 
> 
> Mitigation, fix, and hardening:
> 
> As noted in the advisory, disabling password authentication entirely
> mitigates the issue. There are a number of other configurations that
> are also unaffected:
> 
> In order to be affected, the target account must have "*" as its
> password hash (attempting to prevent password access), there must be
> at least one other account that does have a password set, and the
> first account found with a password (in order of enumerating
> /etc/passwd) must be using SHA256 or SHA512 type password hashes.
> 
> OpenSSH fixed the bug by hard-coding failure after doing the
> timing-masking crypt call with the wrong hash, so that if the target
> user's password hash is shorter than 4 character (not a valid hash;
> must be a failure token) the login attempt always fails:
> 
> https://github.com/openssh/openssh-portable/commit/4353fdc43ef646c43a8dda7025cc1a898caf1482
> 
> This should fix the issue for any system where failure_token is under
> 4 bytes (all real world systems).
> 
> As for hardening musl against this kind of issue, pursuing a switch to
> returning an error (null+errno) has been an open issue for a long time
> now, and one I'd like to assess in the next release cycle. In the
> immediate, I am going to propose a patch switching to the more common
> "*0"/"*1" convention for failure tokens. This does not prevent misuse,
> but it's safer under the assumption that the conventional "*" is what
> appears in shadow. This should be able to go into the pending release
> and would be easy for distros to apply as a backport if desired.
