Received: (qmail 28183 invoked by uid 550); 19 Feb 2026 20:30:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28153 invoked from network); 19 Feb 2026 20:30:11 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com> (Jacob
	Bachmeyer's message of "Wed, 18 Feb 2026 23:23:14 -0600")
Organization: The Eyrie
References: <20260219011438.GA17271@openwall.com>
	<c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 19 Feb 2026 12:29:59 -0800
Message-ID: <87wm08xyrc.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

It's been some years since I've worked on Kerberos extensively, but I
still maintain some Kerberos-related software and may be able to provide
some context here. I have not been closely tracking developments in
keyring formats and do not know how usable KEYRING caches are these days,
so I may get some of these details wrong.

Jacob Bachmeyer <jcb62281@gmail.com> writes:
>> On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:

>>> The core of this vulnerability is a semantic failure in object
>>> lifecycle management. While the Kerberos protocol is syntactically
>>> secure, current Linux implementations fail to semantically bound the
>>> identity token (bearer ticket) to the process lifetime.

> Which process lifetime are we talking about here?

My understanding is that the context of this report is services running
with Kerberos credentials. This is a tricky problem that is very
well-known in the Kerberos community. Best practice is to obtain and
manage a ticket cache for the service, bootstrapping from a keytab (a
persistent Kerberos key) that is not accessible to the service. That way,
the service does not have direct access to its permanent credentials, only
to temporary credentials with an expiration period that, with proper
management, can be fairly short.

Therefore, the process lifetime here is the lifetime of the service,
presumably. Ideally one would clean up the Kerberos ticket cache when the
service exits, just as one would clean up any other temporary security
credential when the service using it exits. With FILE ticket caches,
depending on how they're stored, one may have to do this explicitly.

In other words, this is a valid concern, but it's kind of a minor one.
Having ticket caches lying around that live beyond the lifetime of the
service creates some additional security risk, but in most cases it's less
than the *necessary* security risk of having a keytab on the system that
can be used to create new ticket caches at any time. *If* you have some
mechanism whereby you don't have to store a persistent keytab with the
service credentials (designing such a system is possible but quite
challenging for most service designs), then maybe this is more
interesting. Usually it is not.

For what it's worth, there are standard tools to address aspects of this
problem, such as kstart which I intermittently maintain.

https://www.eyrie.org/~eagle/software/kstart/

> Arguable, but that is why you are supposed to invoke kdestroy in your
> logout script.

A more typical design at institutions that use Kerberos heavily is to
acquire Kerberos tickets on login via PAM (usually with sssd these days)
and destroy them on logout via PAM as well so that users do not have to
handle this in their shell files.

>>> By weaponizing the "Crash and Trash" scenario, an attacker can
>>> transform a transient authentication secret into a persistent forensic
>>> artifact. This allows an unprivileged local attacker???or a remote
>>> attacker via an RCE/LFI chain???to bypass Kerberos protocol guarantees
>>> and achieve complete network-wide identity theft.

Those are certainly all words. Some of them are even security-related.

> This does *not* extend the lifetime of the ticket.

Correct.

> Further, the risks of "leaked" tickets and/or keys are well-known in
> Kerberos, which is the reason MIT Kerberos supports rotating service and
> KDC keys.

Rather more to the point, the entire design of Kerberos tolerates leaked
tickets because they have lifetimes and are invalid after that lifetime
has passed. Compromise of the ticket does not mean compromise of the
underlying credentials. That's precisely the point of all of the
cryptography that goes into the protocol.

The point of rotating service and KDC keys is to protect against
compromise of the persistent credentials (keytabs and passwords usually).
The primary defense against compromise of a ticket is that tickets expire.

>>> The Design Flaw: These tickets are bearer tokens. Possession of the
>>> file is equivalent to possession of the identity.

> That is not a design flaw.=C2=A0 That is the entire point of Kerberos
> single-sign-on.=C2=A0 The need to secure the token has been well-understo=
od
> since Kerberos was invented.=C2=A0 A stolen ticket can be abused, exactly=
 like
> a stolen password can be abused, except tickets can expire much more
> quickly.

You can call this a design flaw, I suppose, but in this case the flaw in
the design is "using Kerberos" as opposed to, say, a PKI with private keys
in a TPM. This is literally the definition of Kerberos: You get temporary
tickets that prove your identity to services, so possession of the ticket
cache is possession of the identity until the tickets expire. If you don't
want that property, don't use Kerberos.

>>> Exploitation: An LFI (Local File Inclusion) vulnerability in a web
>>> application can be used to "pull the trash" from /tmp, granting the
>>> attacker a valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.

> Only if DAC is not being used properly.=C2=A0 If you are running a web
> application as root, you have bigger problems than stolen Kerberos
> tickets.

I think the concern here is that the web application has its own tickets,
which necessarily must be accessible to the web application. Therefore, if
there is a vulnerability in the web application, that can be used to
exfiltrate the Kerberos tickets for the web application.

Put that way, this is trivially and obviously correct. Maybe storing the
tickets in a file in the file system makes it moderately easier to
exfiltrate them given some sort of limited security flaw and keyring
ticket caches might be less vulnerable, but this is highly speculative and
depends on the exact nature of the vulnerability.

Kerberos with FILE ticket caches does require that you keep the file
system into which those ticket caches are stored secure, and by default it
uses /tmp, which has very well-known and long-standing issues. This is a
security vs. usability compromise; /tmp is the default because it's widely
available. (It also has some minor benefits such as usually being tmpfs so
that the tickets aren't persisted to storage.)

KEYRING ticket caches clearly have better security properties, which is
why they were invented. However, a whole lot of existing local software
often assumes FILE ticket caches in various ways, so changing default
ticket cache formats requires deep understanding of how ticket caches are
used in a specific application context. I've seen wrapper scripts around
Kerberos software do all sorts of things that assume FILE ticket caches,
such as copying tickets elsewhere so that they can be used by long-running
compute jobs. Many of those systems have various security flaws, but those
are not flaws in *Kerberos*.

We would probably be better off if everyone used KEYRING ticket caches by
default, but backwards compatibility is a huge problem in the Kerberos
world, where there is a lot of very old software and weird local scripts
and conventions that can be quite fragile.

I believe the newer Kerberos ticket management frameworks do a better job
of picking better caches by default. Systems like sssd are probably the
right place to change defaults, not in the low-level Kerberos libraries
that are used in much wider contexts and have to make far fewer
assumptions.

>>> 2. Memory Lifecycle Failure (Crash and Trash)
>>> When an application handling Kerberos authentication crashes, the
>>> system generates a core dump (if enabled).
>>>
>>> The Semantic Gap: The credential remains in the heap or stack during
>>> the crash. Because many distributions do not restrict access to core
>>> dumps or leave them in unencrypted storage, these secrets become
>>> "trash" that is readily harvestable via standard string extraction.

> If, and only if, the application crashed during the authentication, or did
> not take proper steps to discard the credential after using it.=C2=A0 Aga=
in,
> this is (probably) an application bug, although I am not familiar enough
> with the Kerberos libraries to say what extent of care is taken to
> extinguish no-longer-needed in-memory copies of tickets.

Yeah, this is just every piece of software in existence that manages its
own secure credentials. The same can be said of software using X.509
credentials as well. If you want to use a differnet security system that
stores all keys in a TPM, that may be the right choice in some security
models, but that just means Kerberos is not a good fit for you.

> Note that service tickets usually have much shorter lifetimes than TGTs,
> since they only need to be valid long enough to "run" from the KDC to the
> service, presenting the ticket at the latter.

This varies a lot, and in my experience a more typical setup is for both
TGTs and service tickets to have the same lifetimes. Regardless, though,
for tickets for services that are managed externally, one can use a tool
like kstart to regularly refresh the ticket cache, in which case you can
set a short lifetime on *both*.

> If I remember correctly, stealing anything other than a TGT is useless,
> since service tickets are encrypted under a key in the TGT and contain a
> session key for talking to that service.

No, this is not correct: If you have possession of the service ticket, you
can authenticate as the user to that specific service. You do not need the
TGT. Otherwise, limited ticket forwarding would not work.

>>> Restrict core_pattern: Ensure core dumps are directed to a secure,
>>> root-only directory by default.

> The only requirement is that core dumps are not readable by other users.=
=C2=A0
> They need not go to any specific directory.=C2=A0 There is no gain from r=
eading
> the core file *as* the user because any process belonging to that user can
> already use the user's Kerberos credentials.=C2=A0 (That is what single-s=
ign-on
> *means*.)

Also, this is generally fine security advice. Restricting access to core
dumps is generally good practice. But this has nothing to do with Kerberos
specifically; this is just a generic good practice for any software that
manages security credentials in memory.

--=20
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
