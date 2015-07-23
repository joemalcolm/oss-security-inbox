X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5491" "Thursday" "23" "July" "2015" "11:41:01" "+0000" "mancha" "mancha1@zoho.com" "<20150723114101.GD7017@zoho.com>" "137" "Re: [oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass" nil nil nil "7" "2015072311:41:01" "[oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass" (number mark "        mancha1@zoho Jul 23  137/5491  " thread-indent "\"Re: [oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass\"\n") "<20150723042717.C1C05B2E4B6@smtpvbsrv1.mitre.org>" ("<CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>" "<20150723042717.C1C05B2E4B6@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20165 invoked by uid 550); 23 Jul 2015 11:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20103 invoked from network); 23 Jul 2015 11:41:28 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=V5FdH7DJI3cuWVFggaTMLfgXgRW85mQBSXBi6Qt1lz7AXIc7jlEFuF/kmsh2bpn0KFHnKyvwL2Cc
    IIbiqweN2I2PY+Zz/Rcb+ZmTeTpclIeKcSyRAp7RzYO1Q0hfuDUM  
Message-ID: <20150723114101.GD7017@zoho.com>
References: <CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>
 <20150723042717.C1C05B2E4B6@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FeAIMMcddNRN4P4/"
Content-Disposition: inline
In-Reply-To: <20150723042717.C1C05B2E4B6@smtpvbsrv1.mitre.org>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: isowarez.isowarez.isowarez@googlemail.com, cve-assign@mitre.org,
	djm@mindrot.org
Date: Thu, 23 Jul 2015 11:41:01 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request for OpenSSH vulnerability -
 authentication limits bypass
To: oss-security@lists.openwall.com

--FeAIMMcddNRN4P4/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

MITRE et al. -

I don't think I agree with your CVE-2015-5600 assignation analysis.

The change introduced by upstream's patch [1] is not to prevent a client
from supplying an arbitrary number of keyboard-interactive devices, per
se. What the fix does is prevent a given keyboard-interactive device
from getting queried more than once per userauth request.=20=20

Unfortunately I don't have ready access to a server with multiple
keyboard-interactive device types but, unless I'm mistaken, if the
devices in the supplied client list all differ, the behavior is
unchanged pre and post patch:

-oKbdInteractiveDevices=3D"snap,crackle,pop"

The difference in behavior can be observed when the list contains
repeats:

-oKbdInteractiveDevices=3D"snap,snap,snap"

Pre-patch the above would query the snap device three times per userauth
request while post-patch only once.

So, your hypothetical of:

-oKbdInteractiveDevices=3D"krb5,krb6,krb7,krb8,krb9,krb10,krb11"

would work the same before and after the fix. Each of the seven listed
devices would get queried once per userauth request. Assuming a default
maxauth of 6, that means a total of 42 device queries before the
connection gets severed.=20=20

In practice, the flaw allows mounting a brute-force attack using fewer
connections. For example, if a server has MaxAuthTries=3D6, one can use:

-oKbdInteractiveDevices=3D"pam,pam,pam"

to pack 18 password guesses (three per userauth request) in a single
connection instead of the intended limit of 6.

The fix prevents this circumvention of MaxAuthTries.

Please let me know if you don't agree.

--mancha

[1] https://marc.info/?l=3Doss-security&m=3D143760646430682&w=3D2


On Thu, Jul 23, 2015 at 12:27:17AM -0400, cve-assign@mitre.org wrote:
> As far as we can tell, the essence of the vulnerability is that the
> client shouldn't be able to specify an arbitrarily large number of
> KbdInteractiveDevices and be entitled to have the server cooperate.
> Use CVE-2015-5600.
>=20
> Here are additional notes in case anyone was expecting two CVE IDs.
>=20
> The patch at:
>=20
>   http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/auth2-chall.c
>   http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/auth2-chall.c.=
diff?r1=3D1.42&r2=3D1.43&f=3Dh
>=20
> seems to suggest a very similar decision. With this change, the server
> no longer cooperates even with:
>=20
>   -oKbdInteractiveDevices=3Dpam,pam
>=20
> and this makes sense because, if a client is behaving normally, using
> pam a second time would typically just waste server resources, and
> would not increase usability from the client's perspective. The only
> exception we've thought of is a server that sometimes makes
> false-negative access-control decisions, e.g., either it is
> intentionally designed to be inconsistent, or uses an intermittently
> available hardware authentication device. In the latter case, maybe
> users were actually supposed to do something like:
>=20
>   -oKbdInteractiveDevices=3Diahad,iahad,iahad
>=20
> and the patch would have to be revised to support that.
>=20
> More importantly, we don't think the issue should be characterized as
> a "MaxAuthTries bypass." If there are several different
> keyboard-interactive methods supported by the server, and there's a
> use case in which the client user can type in a single string and have
> the client program attempt all of the keyboard-interactive methods,
> then the server arguably shouldn't block any if MaxAuthTries is
> reached. From the perspective of the client user, it's only one try.
>=20
> Example: MaxAuthTries has its default value of six, but MIT-KIT has
> suddenly released six new major Kerberos protocol versions, and the
> legitimate user enters:
>=20
>   -oKbdInteractiveDevices=3Dkrb5,krb6,krb7,krb8,krb9,krb10,krb11
>=20
> We don't think it's necessarily correct to block use of the krb11
> protocol because it's the seventh one.
>=20
> This might not be a completely valid example. The essential point is
> that we don't feel there's a remaining vulnerability in which a
> MaxAuthTries value of N is supposed to prevent a command line with N+1
> different supported elements in the KbdInteractiveDevices list. There
> is no CVE ID tied directly to the concept of a MaxAuthTries bypass.
>=20
> -- CVE assignment team, MITRE CVE Numbering Authority M/S M300 202
> Burlington Road, Bedford, MA 01730 USA [ PGP key available through
> http://cve.mitre.org/cve/request_id.html ]

--FeAIMMcddNRN4P4/
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVsNLMAAoJEB4VYy8JqhaDhw0QALurfkviWlS588awfVenrO6N
jp1Eu31Pnl6ZZ9PD8vcaQ6NbpFHnhRUFJDHaMY5sgAdqRSUuf+yM9AP9m0H5yMuo
+YypX3LmSg1rXPqEvrKq+e548N+P0ArtsqLimKlc8VoLq1GKhFSfwK+8Q73/qj54
q6UZMuK8u3Cl4KaAZrsisKWW+8jgaDQ2ymhNZWteIMgW+k1OdIzDXmmQbNIooOky
j7bH5yYTS28VcZwreze6aFdYtc5aMciaS3Vq7/3x5U3FPlWoz277FprV0yhQoJ7G
XPUCJ2knZ4XmOye1uRWiZIhSjOjUzKhEQzfsDSf6N+SRs8RK4Z95RldJbHaadc6S
3asDJgkB0C9rMsGaMiiZ7QFasOTIbEFwtpDkc/9kDw8gFdS3Htca/55DjPIw41y7
VRCwLUsNdEohBkNPZEWifpNIsJqtbGrHjb2qUNPqCrnMgM+/zIS27plgDOaau+jY
ENCIPWFBwmyI6d29dIMozmal69NUt3gu7G17BRlMsc6aJ0z0UWf2EKcd+/JWEYMr
Z8T6HY3V/xptToMwIWFRwmYY67H2L+KGGQLJ3XZQnQ2C1M0L5I3f41srLRMnc6mp
uVH+FeC6BNoQbzfBAcH8vf0xmhtIMlWv+IBwkXK4t5duziNY8tTeLLF/YRszJnrN
oq/gyUWHk9Yd/JZ8bvtV
=nFN1
-----END PGP SIGNATURE-----

--FeAIMMcddNRN4P4/--

