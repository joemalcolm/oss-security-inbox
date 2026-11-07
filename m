X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/7
Message-ID: <1FB37230-A5D6-4DD2-91EC-448B96AB8939.1@smtp-inbound1.duck.com>
Date: Sat, 07 Nov 2026 00:42:58 -0500
From: theknell@...k.com
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Jacob — you asked whether it even entirely works when there
is no salt to borrow. The rigs were still up, so I built
the box. OpenSSH 10.6p2 --without-pam, shadow file with no
valid password in it anywhere: accounts locked as *, !, !!,
*LK*, and a locked yescrypt hash (!$y$...), password auth
still on. 60 interleaved samples per account, auth-request
time only, glibc/libxcrypt and musl both. Harnesses and
raw data available on request.

Nothing on that box does any real work. Every locked
spelling came back within +3 to +9 ms of the none-auth
floor, and the whole spread — every account class, the
nonexistent user included — fits inside 2.2 ms. Put that
next to the mixed box from my last post, where live bcrypt
sits ~+100 and yescrypt ~+46. So you don't learn anything
about an individual account. What you learn is an absence:
probe enough known usernames, never once see KDF timing,
and the box has told on itself — no live passwords here.

The mechanism is the one you guessed, it's just in the
compat layer. xcrypt gets a NULL salt and goes looking for
one to borrow: pick_salt() scans for a field starting with
$. !$y$... doesn't qualify — the leading ! kills it. The
scan comes up empty and it falls back to a static DES salt,
"xx". Microseconds.

The nonexistent user doesn't rescue anything either. The
fake password timed inside the locked spread on both rigs,
so on a box like this you can't separate "doesn't exist"
from "locked" by timing. The kludge holds for that much,
working as intended for once.

Two limits I'll state before someone else does: loopback
is not the internet, and a stock sshd's PerSourcePenalties
will throttle anyone trying to sample this from a single
source.

Short version: on an all-locked box every account class
answers at the floor, and the only thing timing tells you
is the thing you were asking about — there is nothing in
the box worth timing.

— knell

-------- Original Message --------
On Friday, 11/06/26 at 22:27 Jacob Bachmeyer <jcb62281_at_gmail.com_theknell@...k.com> wrote:
DuckDuckGo was unable to verify sender identity

On 11/6/26 00:35, Peter Gutmann wrote:
> Jeffrey Walton <noloader@...il.com> writes:
>
>> One general comment that does not fit well into most of the discussions around
>> sshole...
> Another contributing factor, "sshd borrows bob's salt" and the derived
> changes, was the quaint 1970s notion that no-one would ever be able to guess
> that there exist account names like root, daemon, ldap, postfix, apache,
> mysql, sshd, and rumpelstiltskin, so we'll add a kludge to make invalid
> accounts take the same time as valid ones.  Attackers don't even notice this
> because they start with a pregenerated list of known and probable accounts,
> but it does help to add vulnerabilities to the password-checking process as
> this CVE shows.

Does it even entirely work?  What if there is no salt to borrow?

Thinking about this, I think I see another information leak: does sshd
produce a "fake salt" or fail the authentication quickly, thus leaking
the fact that no accounts on the box have a valid password?

There was a time when a salt could be assumed to exist, but that was
before cloud VM images that have no console and therefore can be
network-login-with-SSH-key only...


-- Jacob



