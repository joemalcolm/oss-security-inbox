Received: (qmail 18116 invoked by uid 550); 4 Sep 2024 17:05:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18097 invoked from network); 4 Sep 2024 17:05:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1725469497; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type; bh=EY3/mpbfGqXoqECt2EWMiUYL2eKg3++nOyIrlNF27g4=;
	b=Nqdk4S3K8nNAyBHJhybKtVZ86HuyGZhaJMYWennoqL8K5eMP5SgRssc5Htxz3qORq5Lyzb
	pXHGVCYOshks6Fd5w5OYbiaIRa8JwKWRLPPa8VlQ9Q7uZ8bbV9zSkX+mO0+NQvvHChX013
	KL1HJ/y+W+B+eMG2qBzDENH8Rxcui4lgwYX9324lRObVYGxCFWml9HQCVgwo1sXTeCA/BE
	pHIrusmIr+AhOsi4Zcx7U1+L7IzaeynCeQp/LVvjbPX6cfigQHDmxxm6e15Ih/izUBMSle
	lTomByTD2DBQ4Vvdrs0ly7lyP9zm4EMYdSNXEkGid7vYkE37xR0kpfMZtDQZUg==
Date: Thu, 5 Sep 2024 03:04:49 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: mjo@dojo.mi.org
Cc: oss-security@lists.openwall.com, security-announce@opencontainers.org
Message-ID: <20240904.164536-sane.sobs.rich.isotope-eZfAeE5YI4N4@cyphar.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wza427svykraw5iz"
Content-Disposition: inline
Subject: [oss-security] Re: CVE-2024-45310: runc can be tricked into creating empty
 files/directories on host

--wza427svykraw5iz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

(I'm not subscribed to openwall and wasn't in Cc -- hopefully this gets
treated like a reply properly...)

On 2024-09-03, Mike O'Connor said:
> While I suspect there's enough mitigating factors for this vuln to
> truly be low severity, proving that arbitrary file creation isn't
> super-severe (let alone risky) can be hard.  I'm thinking of the Palo
> Alto mess CVE-2024-3400 from a few months back, where such behavior
> was thought to not be as big of a deal...  until it was.
>=20
> What is the security impact of creating an empty /etc/nologin?  Or an
> empty override file that might cause some systemd service (e.g. some
> firewall setup) to not to run upon reboot/restart?  Have there been OS
> assessments about where empty arbitrarily-named files can do the most
> disruption?  Maybe a title like:
>=20
>      touch considered harmful: How the presence of a file can change
>      OS and application behavior and make your head hurt
>=20
> Sure, there's predictable tmp, and the impact of removing/overwriting
> files is pretty obvious.  But, this runc writeup reminded me that the
> impact of arbirary file creation often gets short-changed.

These are very good points, thanks!

We went back and forth on the assessment and we discussed the
possibility of DoSes by creating files and so on, but we weren't aware
of an analysis that showed what the practical impact could be and what a
reasonable scoring should be. Does it make sense for every 0-byte file
creation bug to get C:H/I:H/A:H by default? Should we always analyse the
severity based on the worst possible hypothetical scenario even if it's
not clear in advance (such as a cron job running filenames as commands,
as in CVE-2024-3400)?

The other issue is that these kinds of attacks (involving a malicious
configuration) are not entirely within runc's threat model and so there
is an argument that the CVSS score should be 0, but given that tools
like Docker and Kubernetes (especially the latter) allow untrusted users
to do somewhat arbitrary configurations we have to shoulder the brunt of
security issues that come out of that (regardless of runc's threat
model).

But yeah, there is probably an argument to be made that the impact could
be argued as moderate, but I wasn't convinced there was a strong enough
justification to show that I:M is justified for such a restricted
file-creation attack nor was it clear how to analyse C: and H: outside
of coming up with hypotheticals that might not be accurate in practice.

I will keep this discussion in mind when we discuss formalising the runc
threat model!

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--wza427svykraw5iz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCZtiTMQAKCRAol/rSt+lE
b1qMAP0dNo2VWD935tHthmi7xhA5Ujbo3MZ0kRcIGnk5BTreJAD+KvAYZmqKfEEO
jHKu7zwJ7tYj/J7XnHVg6HmQbhjDTA8=
=6O2r
-----END PGP SIGNATURE-----

--wza427svykraw5iz--
