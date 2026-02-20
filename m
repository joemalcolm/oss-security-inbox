Received: (qmail 29914 invoked by uid 550); 20 Feb 2026 05:35:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29883 invoked from network); 20 Feb 2026 05:35:51 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <4460495c-2f91-40f9-a27c-5b09eeed920a@gmail.com> (Jacob
	Bachmeyer's message of "Thu, 19 Feb 2026 22:43:48 -0600")
Organization: The Eyrie
References: <20260219011438.GA17271@openwall.com>
	<c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com>
	<87wm08xyrc.fsf@hope.eyrie.org>
	<dc5a9c05-ab0c-4922-9f8e-d0ce2e6a53b1@gmail.com>
	<87ikbsf62y.fsf@hope.eyrie.org>
	<4460495c-2f91-40f9-a27c-5b09eeed920a@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 19 Feb 2026 21:35:38 -0800
Message-ID: <87ecmgf045.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

Jacob Bachmeyer <jcb62281@gmail.com> writes:
> On 2/19/26 21:26, Russ Allbery wrote:

>> That's also possible for services that accept usernames and passwords
>> and validate them with Kerberos (common for POP and IMAP servers),
>> although of course best practices in those cases is to immediately
>> discard the resulting ticket after authentication.

> I would that think in such a scenario, the client should be presenting a
> Kerberos service ticket to the POP/IMAP server.

That requires Kerberos support in the client, which is notoriously not
always available (mobile clients, for instance, often do not have Kerberos
clients). It's been a problem in the mail world for a long time that we
have a ton of better authentication protocols than PLAIN but a lot of mail
clients still like using PLAIN, to such an extent that we have things like
device-specific passwords to allow use of password authentication with
less risk to the user's real credentials.

> If PAM is creating the ticket cache when the session is opened, then PAM
> should also be destroying the ticket cache when the session is closed.

Yeah, definitely, it's a problem of not calling the right PAM functions to
end the authentication (whether that involves a PAM session or not), which
is a service bug, not a Kerberos bug.

> Across the open Internet is one thing, but I would expect (perhaps
> naively) that communications between web servers and the KDC would be on
> a secure internal network.

The problem isn't so much the open Internet as it is load balancers,
Kubernetes, VMs on bridge networks, and all the other network complexities
that might be sitting between the server's understanding of its IP and the
KDC, which is often segregated into an entirely separate secure network
from general Internet-facing services and thus on the other side of some
variety of NAT or the like. At least back in the day, the general feeling
in the community I was part of was that address-locked tickets were
operationally fragile and the security benefit wasn't really worth it.
It's possible that changed, or that analysis is wrong.

> It stops the use of a stolen ticket in the report's scenario of a web
> service leaking files from /tmp.=C2=A0 :-)

I'm not sure I would go to the effort of making address-locked tickets
work just in case I configured a web server to serve /tmp for some reason,
which comes back to your point about the merits of the original report (or
lack thereof).

> Aha!=C2=A0 I did not know if the Kerberos cache stored tickets in separate
> files or all together.

> If they are all stored in one file, along with the session keys needed
> to use them, then yes, distinctions between service tickets and TGTs are
> useless:=C2=A0 an attacker who steals a usable service ticket will also g=
et a
> usable TGT, outside of very specialized scenarios where the service
> ticket endures after the TGT expires.

I should add the substantial caveat that my experience is almost entirely
with UNIX Kerberos. Windows uses its own way of managing ticket caches and
it may well be mediated by some sort of process that, for instance,
obtains service tickets and provides them without providing access to the
TGT. I know nothing about how all that works except I know Microsoft did
things to try to make it more secure.

But the report seemed to be primarily about UNIX Kerberos, and in that
context generally the TGT and the service tickets are all in the same
place (whether that be a file or keyring).

I don't know how KCM works. There's a daemon involved, so maybe it does
something more sophisticated.

--=20
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
