X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2071" "Thursday" "23" "April" "2020" "19:10:32" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20200423191032.zjab7ydsiw6ibotf@yuggoth.org>" "48" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Date:" nil nil "4" "2020042319:10:32" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        fungi@yuggot Apr 23   48/2071  " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<20200423181234.GA23035@openwall.com>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" "<20200423151430.GA21258@openwall.com>" "<8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>" "<20200423181234.GA23035@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3332 invoked by uid 550); 23 Apr 2020 19:10:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3310 invoked from network); 23 Apr 2020 19:10:46 -0000
Message-ID: <20200423191032.zjab7ydsiw6ibotf@yuggoth.org>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org>
 <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
 <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
 <20200423133148.GA19214@openwall.com>
 <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
 <20200423151430.GA21258@openwall.com>
 <8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>
 <20200423181234.GA23035@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n34ue5ssh4spubpx"
Content-Disposition: inline
In-Reply-To: <20200423181234.GA23035@openwall.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Thu, 23 Apr 2020 19:10:32 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph
 attack
To: oss-security@lists.openwall.com

--n34ue5ssh4spubpx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-04-23 20:12:34 +0200 (+0200), Solar Designer wrote:
[...]
> What you reported originally, where you bypass something that just
> happens that way in some configurations and wasn't meant to
> provide any security against sender address spoofing, looks like
> even less of an issue to me.
[...]

Indeed, if the local attacker is already capable of opening a socket
to the MTA, then it seems like it would be even easier instead to
just open an outbound socket to the target's MTA directly from that
server and bypass the restrictions applied by the local relaying MTA
entirely (unless the local MTA process has privileged access to
something like a DKIM key or durable TLS client key which the
attacker can't access due to filesystem ACLs). Then they wouldn't
need to lean on lack of homoglyph differentiation at the recipient's
end at all.
--=20
Jeremy Stanley

--n34ue5ssh4spubpx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl6h6CJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCk9Rw/9EarP1oGF1hIc6GRz+AefvK65T9eJzoDqF+rEO+8njBJokXqTVvpMgguT
1UkZ3WOo/kux8VpAIZVsVglsTKONAXwSlN3JBBnyoF2UJayR8TPqFW4Bs8X6Tudi
MycCwQHZ0Oco7k+19gLzvhvAo2Ijf5D7WszlZWyh7ikdgFbbr7JkqlUPxk9qd0za
nSTnopHpQ+xemZLtoqCJBX7JIZny+kSOW9hHF3G/bj0dCxcRdQ2MF2PpweGrGE57
tTnoiqO+cNUjDbhzXejWLuApBNiqBSQEMW1SQb8e4Cg4MIDdfy5+3Ub9QIQPyogV
PH+mfR7lAi+Mv4nXL6HkPjFzX3jaBI6QUgpNGy16eXvEFWoxLkDuLrOAL58gwDj5
uP2C12lgDxvK/bptbLUHT/Nw50yudqQsN1PovcuqzIC6uLn8AaLgr3fsjXx+kewW
Hi1wIimIjl/mwSUA7ux7w73UNmPxGt3W8hjIw9XfYEbkylB9cm9kZCjpzJpG0Izt
gRaLRvwQ2YBrl02bRu/uV69mfPWb8KC7IRq6JcFRWsgVd1z1JGLpyWR8k0obbKVq
T7CScZ5Mb3PMNXNVm4YNRgtT5Fb5l5bkYbS/KElF+xmtsnAAPZluZyC7eaEbhfFp
O9TbECehZ31kCmkojoOQCxdhWDmrpq+epMRyg/ZNOUZhPGdQfSk=
=g2AQ
-----END PGP SIGNATURE-----

--n34ue5ssh4spubpx--
