X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5151" "Thursday" "23" "July" "2015" "14:45:42" "+0000" "mancha" "mancha1@zoho.com" "<20150723144542.GE7017@zoho.com>" "112" "Re: [oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass" nil nil nil "7" "2015072314:45:42" "[oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass" (number mark "        mancha1@zoho Jul 23  112/5151  " thread-indent "\"Re: [oss-security] Re: CVE Request for OpenSSH vulnerability - authentication limits bypass\"\n") "<20150723125816.13ED03321FC@smtpvbsrv1.mitre.org>" ("<20150723114101.GD7017@zoho.com>" "<20150723125816.13ED03321FC@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1600 invoked by uid 550); 23 Jul 2015 14:46:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1580 invoked from network); 23 Jul 2015 14:46:08 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=hODdOLXe6YqH88B8hV7bk4lY+tKU3zOVXX+PfeuP+XTEXUU8DKQF1UZypM5ijHLrwmGoeKYJ6Wa4
    WnK+RviykeiGSlcwCy0cj9mTjcYVflOhE2yU01wa2tY6wHBArzub  
Message-ID: <20150723144542.GE7017@zoho.com>
References: <20150723114101.GD7017@zoho.com>
 <20150723125816.13ED03321FC@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fnm8lRGFTVS/3GuM"
Content-Disposition: inline
In-Reply-To: <20150723125816.13ED03321FC@smtpvbsrv1.mitre.org>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: cve-assign@mitre.org, isowarez.isowarez.isowarez@googlemail.com,
	djm@mindrot.org
Date: Thu, 23 Jul 2015 14:45:42 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request for OpenSSH vulnerability -
 authentication limits bypass
To: oss-security@lists.openwall.com

--Fnm8lRGFTVS/3GuM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 23, 2015 at 08:58:16AM -0400, cve-assign@mitre.org wrote:
> Our message was written from the perspective that everyone already
> understood what the patch does, and to start from there in defining
> what CVE-2015-5600 means.

The patch is relatively un-intrusive in terms of LoC but understanding
its impact requires knowledge of how OpenSSH implements
keyboard-interactive authentication. That's probably too esoteric for
one to readily assume "everyone already understands" it.=20=20
>=20
> > if the devices in the supplied client list all differ, the behavior
> > is unchanged pre and post patch:
>=20
> Yes; however, because no server supports an arbitrarily large number
> of different KbdInteractiveDevices, a client that wishes to launch an
> effective attack with an arbitrarily large number must use
> duplication, as in the original example with 10000 instances of the
> pam device. Disallowing all duplication is one way to prevent this
> specific "arbitrarily large number" scenario. As we suggested in the
> iahad example, disallowing all duplication might break somebody's use
> case. (This is just theoretical; we haven't heard any reports of a
> problem.) Even if the patch is revised to allow a small amount of
> duplication, the definition of CVE-2015-5600 will stay the same.

You make a compelling defense for your description of CVE-2015-5600. And
as you say, as worded it would cover the case of a future OpenSSH
modified to accommodate your iahad hypothetical.

Nonetheless, "arbitrarily large" isn't possible (cf. SSHBUF_SIZE_MAX and
such) yet the duplication problem remains (it isn't reasonable for a
user to expect that MaxAuthTries=3D6 allows 1000 password attempts).

A crisper and more accurate description of the current issue (sans
hypotheticals) is the ability to trigger multiple queries to a given
keyboard-interactive device within a single userauth request by having
duplication in the device list.

>=20
> > The difference in behavior can be observed when the list contains
> > repeats:
> >=20
> > -oKbdInteractiveDevices=3D"snap,snap,snap"
> >=20
> > Pre-patch the above would query the snap device three times per
> > userauth request while post-patch only once.
>=20
> Yes; "the client shouldn't be able to specify an arbitrarily large
> number of KbdInteractiveDevices and be entitled to have the server
> cooperate" means that the vulnerable behavior was the server's
> decision to cooperate with the client and execute a piece of code 3
> times (or, more importantly, 10000 times), when a more reasonable
> behavior is to execute that piece of code only once.
>=20
> > So, your hypothetical of:
> >=20
> > -oKbdInteractiveDevices=3D"krb5,krb6,krb7,krb8,krb9,krb10,krb11"
> >=20
> > would work the same before and after the fix. Each of the seven
> > listed devices would get queried once per userauth request. Assuming
> > a default maxauth of 6, that means a total of 42 device queries
> > before the connection gets severed.
>=20
> What we are saying is that we don't consider that specific behavior,
> after the fix, to be a separate vulnerability that requires a separate
> CVE ID. It is possible for someone to make an argument that the "42
> device queries" behavior is inconsistent with the documentation and
> that the connection must be severed after 6 device queries. Although
> we currently don't agree with that argument, we consider the argument
> somewhat reasonable. That's why we chose to explicitly mention the
> case of a legitimate list of seven devices, and provide our
> perspective on whether we would support a second CVE request based on
> a claim of an incomplete fix.

RFC 4256 leaves the interpretation of the submethod field of the
userauth request up to the server implementation.=20

The right way to frame the question isn't whether there's a legitimate
use of 7 devices and 6 auth tries resulting in 42 total queries but what
MaxAuthTries is meant to restrict. If it isn't entirely clear from
documentation (and maybe it isn't) that it's a bound on userauth
requests then that is easy enough to fix in the manpage.

--mancha

--Fnm8lRGFTVS/3GuM
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVsP4WAAoJEB4VYy8JqhaD2lkP/iMeiEEkDMAipyHG4Kn+Ib3g
hZrjl3JJ9jDIZty+mXNTOjElahScsTCSu4TGVi7W6MrH3582tF8TyJc0j6oAd1bq
jHBTIfP+y5YpgqpJXW1js/gzAEaBAh8oRq6mh5sukCwO2va3+ZyedBSx0WIhyiiG
9uAcrASxr07wJsK8Vpf3Bi9dg4cI6OUu9sm7H4SQt71nKtOrF7tgT5r1ZJok8+2y
+Zcns5oucG4ZB5oVimOKKCZV6y2rfGyamqJm8ARZEuQf9XYMr2EOEfqc+bQCNAEi
jXaKJyR75rOSOcBCspy5NG+lFn4Z8WsDKrrLQ27LSxEjSC1n1Z3IVemPnELCvkFd
ZsDbaCGCu6rBujTvoskVOt2vykP87ymAjsgNKc0NUIdRY2zAUhECtksKfvbYnbep
bkHA3KPcmNKhwy+UCIXxNgr1+mCIJ95Kseh5NOksMUVxm/QHDACm1a2mOFmMlQ4p
Ob5S/Sz40voEHKPpAzmJ2ddZaMpk6r3nZRAqc3x3qYs7bXgKDLjvCbiwsMjo0Z7d
DTGIZYtV/JleoYhAd3yF19mbI7PYltZFbJa4qZX73YRVM2OHBE8VC0I9Cb3HohLs
j0f2RewwJvCwzX54lNymLvQGDaVjoH9AlqsA0JAI+urkuFWxECjVZ5iq52BxnRuJ
r+8i/apBYejq7mBHakT2
=+Q4p
-----END PGP SIGNATURE-----

--Fnm8lRGFTVS/3GuM--

