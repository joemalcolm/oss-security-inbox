Received: (qmail 20113 invoked by uid 550); 20 Feb 2026 03:26:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20085 invoked from network); 20 Feb 2026 03:26:55 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <dc5a9c05-ab0c-4922-9f8e-d0ce2e6a53b1@gmail.com> (Jacob
	Bachmeyer's message of "Thu, 19 Feb 2026 20:57:48 -0600")
Organization: The Eyrie
References: <20260219011438.GA17271@openwall.com>
	<c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com>
	<87wm08xyrc.fsf@hope.eyrie.org>
	<dc5a9c05-ab0c-4922-9f8e-d0ce2e6a53b1@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 19 Feb 2026 19:26:45 -0800
Message-ID: <87ikbsf62y.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

Jacob Bachmeyer <jcb62281@gmail.com> writes:
> On 2/19/26 14:29, Russ Allbery wrote:

>> My understanding is that the context of this report is services running
>> with Kerberos credentials. [...]

> That is an interesting way of looking at it.=C2=A0 The report seemed to m=
e to
> be describing hijacking user accounts after cracking a service.

That's also possible for services that accept usernames and passwords and
validate them with Kerberos (common for POP and IMAP servers), although of
course best practices in those cases is to immediately discard the
resulting ticket after authentication.

It is true that some methods of doing that will result in a ticket cache
stored in /tmp. For example, if the service uses PAM to validate the
user's password, some PAM Kerberos modules will write a ticket cache to
/tmp as part of that process. (There is a long and unfortunately
complicated story here why it is sometimes not possible to defer creating
the ticket cache to the PAM session stack, which generally doesn't need to
be called by servers although may be depending on how the service works.)
Such servers should take some care to clean up those temporary ticket
caches and not leave them lying around.

Of course, one should also ideally stop using authentication methods that
send passwords over the network to a server, and lack of attention to
cleaning up ticket caches is not a Kerberos problem. It may at most be a
problem with a specific PAM implementation or service implementation.

>> I think the concern here is that the web application has its own
>> tickets, which necessarily must be accessible to the web application.
>> Therefore, if there is a vulnerability in the web application, that can
>> be used to exfiltrate the Kerberos tickets for the web application.

> This does not necessarily give the attacker a ticket with a "~10-hour
> TTL" (as claimed in the report)

Not necessarily, but it probably does. That's a very typical ticket
lifetime (I think it's the default in both MIT and Heimdal). Unless an
administrator took special precautions to limit an application's
credentials to a shorter lifetime, I would be very unsurprised by that
result.

> and it also blows up "The Grand Chain" because a web application's
> Kerberos credentials should not be "the keys to the kingdom"

This is certainly true.

> and the KDC admins should notice if the "web server" suddenly starts
> asking for interactive login sessions, for example.

You are probably overestimating the sophistication of incident detection
and response capabilities at a lot of sites running Kerberos. :)

> However, a service's authentication tickets should be bound to the known
> server addresses,

Binding Kerberos tickets to IP addresses was a mostly failed experiment
that, at least in my experience, most sites have abandoned. Trying to make
this work is a HUGE operational headache. In a modern networking
environment, there are innumerable reasons why the apparent IP address of
a service from the perspective of some other service doesn't match the
service's own conception of its IP address.

I know there are people who have gotten this to work, but I don't think
it's common. It's spectacularly annoying to try to keep configured
correctly, particularly since in a lot of compromise scenarios the
attacker has RCE anyway and can act directly from the server, so the
amount of security benefit you get from the work is debatable.

> If we are talking about exploitable web services, the larger risk is the
> attacker finding some way to get the web service to simply *use* its
> credentials to obtain information for the attacker.

Yes.

>> This varies a lot, and in my experience a more typical setup is for
>> both TGTs and service tickets to have the same lifetimes. Regardless,
>> though, for tickets for services that are managed externally, one can
>> use a tool like kstart to regularly refresh the ticket cache, in which
>> case you can set a short lifetime on *both*.

> I stand corrected ... unless we are talking about two different things.=
=C2=A0
> I was using "service ticket" to mean the token a user obtains from the
> KDC and presents to a service to obtain access. Are you using "service
> ticket" to mean a service's TGT or similar?

I think we're talking about the same thing. "Presents to a service to
obtain access" is a simplification -- only a portion of the service ticket
is sent to the remote server and there's another bit of cryptography that
ensures that an attacker who intercepts that communication can't use that
part of the service ticket in isolation -- but that's basically the idea.

There is some variation here, depending on whether the site is doing
tricky things with TGTs, but my impression was that people generally just
let all the lifetimes default to the same since the tickets are generally
all stored in the same place. If you manage to get someone's service
tickets, you generally get their TGT at the same time, so doing work to
make the service tickets less powerful doesn't have a great effort to
reward ratio.

>> No, this is not correct: If you have possession of the service ticket,
>> you can authenticate as the user to that specific service. You do not
>> need the TGT. Otherwise, limited ticket forwarding would not work.

> Then I misremembered that detail.=C2=A0 So the cache stores the decrypted
> session key needed to use the ticket in all cases?

Yes, so far as I know. Maybe there's some new ticket cache that does some
sort of encryption, but I'm not sure what the practical benefit would be
given that the TGT is generally right there in the same file.

--=20
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
