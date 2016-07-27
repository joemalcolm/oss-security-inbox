X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2880" "Wednesday" "27" "July" "2016" "19:05:38" "+0200" "Christian Rebischke" "Chris.Rebischke@archlinux.org" "<20160727170537.GA3330@motoko>" "72" "Re: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072717:05:38" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" (number mark "        Chris.Rebisc Jul 27   72/2880  " thread-indent "\"Re: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers\"\n") "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1544 invoked by uid 550); 27 Jul 2016 17:08:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32453 invoked from network); 27 Jul 2016 17:05:53 -0000
Message-ID: <20160727170537.GA3330@motoko>
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
In-Reply-To: <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Wed, 27 Jul 2016 19:05:38 +0200
From: Christian Rebischke <Chris.Rebischke@archlinux.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com

--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 26, 2016 at 03:24:13PM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
> > Once docker containers register themselves to systemd-machined
> > by oci-register-machine. Any unprivileged user could run
> > machinectl to list every single containers running in the host
> > even if the containers do not belong to this user (including containers
> > belong to the root user), and access sensitive information associated
> > with any individual container including its internal IP address, OS
> > version, running processes, and file path for its rootfs.
> >=20
> > $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
> > cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
> >            Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
> >           Leader: 43494 (sleep)
> >          Service: docker; class container
> >             Root: /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b=
20f759613
> >          Address: 172.17.0.2
> >                   fe80::42:acff:fe11:2
> >               OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
> >             Unit: docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c=
254ebfd2d
> >                   43494 sleep 3000
>=20
> Use CVE-2016-6349.

Hello,
I don't think that the bug for this problem lies in systemd.
It's more a design mistake in docker or oci-register-machine.
I have forwarded this issue to the systemd developer team and I don't
think they will fix this in the future. In their opinion it's a
bug in docker or oci-register-machine:

https://github.com/systemd/systemd/issues/3815

by the way.. I would feel glad if the security researchers would first
message the developers and then assign a CVE a bug. This is the normal
way for a full disclosure.

best regards,

Christian Rebischke

--YZ5djTAD1cGYuMQK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXmOnhAAoJENIUYePf4gYNNf0P/jfo7WqpnnKxFyzOJ1Z61/Dn
4O4AKDZzj2TEBB0DbariZGu3KXc36GfSFPZKvuKdZd97MqPaeUwRx68+Ib9Ho2kN
FLnoqmVRyDFLQBe/axx0T9kQ2yCXpOm9BoqUYKOzgMyPBybEbV/KSG2v45/oXn2v
XdhLg1QWINvPkvl+VvRSEl/F+JTmyjTTTgWbMuvnJSORNQVNmwSUiBY5Wttrb8Au
eWibwyzIMkXWzC8sH+Md4nU9mAdmg3DOMJzKAZj5ltKAxt++1EXLE4qWe8pWtjR0
8ffw0RGynmvXf30Ketgc9nHpD7FOiLOFBZtEj0epyUhIplKLB1umrjPicmcJh/7k
f+B5SeMYj3PPozIpTvrNnp6o6iI0TUqQIyqaDzrIYzq+rV2goH8nyvdtMA5IDRUz
Wij4FI9B0rmPwzIRsnUmWnxkLskiNcGdcbTrv5L9tMLQrE821YTc8TnItlZUFz7j
Z5MFJSA2Hq5ReU0sf3kuPE7IM8UW3VLO5FnJkH4rGwOWPHSb4OsJYU+6mjAp5nQQ
AXMIJ2o23YMGAdmO4v5V5S65z5K0tbc4hAM4E5hp/s0DDErNMD7lhDJn/WryDGKI
umFr1jracHPzyGTHWhqc4eqQrtHBN+RboYWUORn5V2NAYgXOE2IcE8nQE8mhfZ24
2AyTfgozRDLA1a6Gg+vT
=lwap
-----END PGP SIGNATURE-----

--YZ5djTAD1cGYuMQK--
