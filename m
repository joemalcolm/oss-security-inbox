X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3769" "Wednesday" "12" "September" "2018" "09:33:19" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<874leu7sdc.fsf@fifthhorseman.net>" "99" "Re: [oss-security] tdesktop leaks user IP address" nil nil nil "9" "2018091213:33:19" "[oss-security] tdesktop leaks user IP address" (number mark "U       dkg@fifthhor Sep 12   99/3769  " thread-indent "\"Re: [oss-security] tdesktop leaks user IP address\"\n") "<CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>" ("<CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1247 invoked by uid 550); 12 Sep 2018 13:33:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1221 invoked from network); 12 Sep 2018 13:33:38 -0000
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
To: Dhiraj Mishra <mishra.dhiraj95@gmail.com>, oss-security@lists.openwall.com
In-Reply-To: <CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>
References: <CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>
Date: Wed, 12 Sep 2018 09:33:19 -0400
Message-ID: <874leu7sdc.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] tdesktop leaks user IP address

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Dhiraj--

On Tue 2018-09-11 17:25:47 +0530, Dhiraj Mishra wrote:
> tdesktop leaks user IP address
>=20
> This is still not fix in telegram desktop  team says their is nothing to
> fix here and this is working has intended.

Thanks for this report -- it's good to have people looking at metadata
leakage and considering it as a security concern.  It is.

However, i'm not convinced that you've described the problem you're
seeing well enough to be actionable yet.  In particular, it's not clear
to me *whose IP address* you are concerned about leaking, and *where*
you are concerned about it leaking.  It's also not clear to me that
you've evaluated the impact/consequences of your proposed mitigation.

I've written out several questions below in the hopes of helping clarify
the concern, and figuring out what makes sense to do about it.  Please
take these questions in the spirit of constructive engagement!

> tdesktop: https://github.com/telegramdesktop/tdesktop
>
> *Steps to reproduce:*
> 1. ./Telegram
> 2. Call end user
> 3. The access log on CLI reveals the end user public IP address.

let's give the parties involved in this names so that it's easier to
reason about.  Let's say that the call Initiator is Inigo, and that the
call recipient is Rebecca.  So Inigo takes steps 1 and 2.  Whose public
IP address (Inigo's?  Rebecca's?) leaks into which access log
(Inigo's?  Rebecca's?  both?)?

Is the concern really the inclusion of the IP address in the access log,
or is it the fact that Rebecca's public IP address is visible to Inigo,
and vice versa?  To whom else is this IP address visible?  Another way
of asking this is: who is the adversary you're concerned about learning
this IP address information?

 * someone looking at some specific logfile in the future?

 * the other party on the call during the call? (i.e. Inigo is Rebecca's
   adversary, and vice versa)

 * the Telegram server operator?

 * a network monitor inspecting traffic?

 * =E2=80=A6

> By default in tdesktop p2p is enable, which open a direct communication
> when calling to the other user, potentially seeing his/her IP. Telegram is
> supposedly is a secure messaging application but while calling another us=
er
> leaks his/her public IP address in access log. However, by navigating to
> Settings and Privacy  > Calls > and set P2P to `nobody` in telegram apps =
in
> (iOS and android) will not allow others to view public IP of end user, but
> this option is still not available in tdesktop, which makes tdesktop
> vulnerable to this issue.

Who needs to set P2P to "nobody" to have this change?  If either party
makes this choice is it sufficient for a given call?

Presumably turning off P2P means routing the calls through a central
server (perhaps via STUN/TURN or some other relay/proxy equivalent).  If
that's not the case, how are calls completed when P2P is disabled?  Who
operates that central server?

What is the performance impact (on rates of successful connections, on
latency during calls) of such a change?

Is the central server operator already in a position to be able to force
this shift from P2P to a centralized fallback?  What cost(s) would they
pay if they force this shift?

How does the potential for centralized mass surveillance of call traffic
change if all calls are routed through the central server by default?

Regards,

       --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQTTaP514aqS9uSbmdJsHx7ezFD6UwUCW5kVoAAKCRBsHx7ezFD6
U1rjAQC4OFrGx2WPXXQsDEh22zV3gFHbfsWkerw7mCF5xj31+gEAhu6nkeKxUuNx
Y7SMn5PNwXoO3SlpqPrKcSG4j8y0Rws=
=cC1t
-----END PGP SIGNATURE-----
--=-=-=--
