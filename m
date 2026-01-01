Received: (qmail 9508 invoked by uid 550); 1 Jan 2026 22:03:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12243 invoked from network); 1 Jan 2026 14:10:16 -0000
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=ed2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=opSFbQgMxS7VWaRfSs8hJE93CqutvHmnwAW/562f1NA=; t=1767276610; x=1768486210; 
	b=2bINY+wJh+ht8uTtKwszdbCFRN46QpN5y8oa2rr2Af0BXerUk0+VDQvDDCQ+ZLmNa2jx9Ns9vg9
	mxcMbNC1JCA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=rsa2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=opSFbQgMxS7VWaRfSs8hJE93CqutvHmnwAW/562f1NA=; t=1767276610; x=1768486210; 
	b=pd2tas/TYo0inR0ujLh6/7PM0jlj4cwYEaJlkFMo8HtzI5ctfSnH2oioX4UgyrCB84BpPX77a36
	BlgbdgXVcsR5tP+qabWrihaTUzgHb4ABhmox2tg16So+inm41/YJXI1i5NGIB5o5Eo4SWUenhPxih
	xZfI31IoDCpstvCgm6eu26aRwnsfjd+tjeZAz4IEd+NNg0I8/7bjmpozN7zy1szv3vI74G+aP0A2A
	lpSYXOZOguzwQMtx9PeRU1WduvI+2uB2gpR0Nzv99Yoi0eb+lncXTNJ7jauaYT7UDip7Xa9vocNEk
	S43F5V7UqAi2k77sj8xYeRcZres1KqAq616EqzhuaZrDwSvVzal4+AIReuRddf3bi8KRaQd+uPyL0
	5aC2jwjOqvR9Tz76zszL8L4Od3x6cnv1dDrQ56gk8M9oAIeTQf2WQNpNfEWeoa4GuTmQVYyZ5;
From: Simon Josefsson <simon@josefsson.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: oss-security@lists.openwall.com,  kf503bla@duck.com
In-Reply-To: <87ms2y1d2m.fsf@gmail.com> (Collin Funk's message of "Wed, 31 Dec
	2025 14:49:53 -0800")
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
	<928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
	<6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
	<878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
OpenPGP: id=B1D2BD1375BECB784CF4F8C4D73CF638C53C06BE;
 url=https://josefsson.org/key-20190320.txt
X-Hashcash: 1:23:260101:oss-security@lists.openwall.com::MAkvCojSNRq1DRfl:3xe4
X-Hashcash: 1:23:260101:collin.funk1@gmail.com::1h8s2u+AV0VHpyao:7ktn
X-Hashcash: 1:23:260101:kf503bla@duck.com::PnoVx93SjnNT4YWV:ubBu
Date: Thu, 01 Jan 2026 15:11:13 +0100
Message-ID: <87eco91kzi.fsf@josefsson.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: Best practices for signature verifcation

--=-=-=
Content-Type: text/plain

I forget a major aspect the competition is doing worse than PGP: public
key distribution.  While PGP key distribution has been a continous
problematic matter, it may be because the PGP ecosystem attempts to
address this problem and the other sign+verify technologies has given up
on solving it.

Collin Funk <collin.funk1@gmail.com> writes:

> Doesn't Sigstore require a centralized Rekor instance? That was the
> impression I based on a very brief look at it previously.

Yes, but I don't see that as a major problem since the transparency
model uses monitors/witnesses to keep instances honest.  Same situation
with Sigsum really.  Sigstore/Sigsum offers properties none of the other
solutions offer, so it may be a price that we need to pay to get those
properties.  I think this is somewhat different compared to other
centralized services patterns, which is generally a deal-breaker.

Demi Marie Obenour <demiobenour@gmail.com> writes:

> I do think that better CMS/PKCS#7 implementations would be worth
> pursuing.  This is because it is hard-coded into a huge number
> of applications that will be extremely difficult to change.
> These include:
>
> - Windows and UEFI Authenticode.
> - macOS and iOS code signing.
> - Legally binding CMS Advanced Electronic Signatures (CAdES).

Why is compatibility with that an argument?  I don't think CMS/PKCS#7
offers anything compelling that PGP doesn't, and the complexity is
horrible (just think ASN1).

> Would it be possible to standardize some form of metadata for SSH signatures?
>
> CMS and OpenPGP support time-stamping countersignatures is critical.
> This is critical for some applications, notably Authenticode and CAdES.
> Should this be supported?

Is that a critical feature for a signature format?  Why not just design
a metadata format for that use-case, and sign the metadata using SSH
signatures?

Feature creep in signature systems seems to be a big problem that
eventually turns them into a copy of PGP or CMS.

/Simon

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQNoBAEWCgMQFiEEo8ychwudMQq61M8vUXIrCP5HRaIFAmlWgIIUHHNpbW9uQGpv
c2Vmc3Nvbi5vcmfCHCYAmDMEXJLOtBYJKwYBBAHaRw8BAQdACIcrZIvhrxDBkK9f
V+QlTmXxo2naObDuGtw58YaxlOu0JVNpbW9uIEpvc2Vmc3NvbiA8c2ltb25Aam9z
ZWZzc29uLm9yZz6IlgQTFggAPgIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgBYh
BLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XQkBQkNZGbwAAoJENc89jjFPAa+BtIA
/iR73CfBurG9y8pASh3cbGOMHpDZfMAtosu6jbpO69GHAP4p7l57d+iVty2VQMsx
+3TCSAvZkpr4P/FuTzZ8JZe8BrgzBFySz4EWCSsGAQQB2kcPAQEHQOxTCIOaeXAx
I2hIX4HK9bQTpNVei708oNr1Klm8qCGKiPUEGBYIACYCGwIWIQSx0r0Tdb7LeEz0
+MTXPPY4xTwGvgUCZ9F0SgUJDWRmSQCBdiAEGRYIAB0WIQSjzJyHC50xCrrUzy9R
cisI/kdFogUCXJLPgQAKCRBRcisI/kdFoqdMAQCgH45aseZgIrwKOvUOA9QfsmeE
8GZHYNuFHmM9FEQS6AD6A4x5aYvoY6lo98pgtw2HPDhmcCXFItjXCrV4A0GmJA4J
ENc89jjFPAa+wUUBAO64fbZek6FPlRK0DrlWsrjCXuLi6PUxyzCAY6lG2nhUAQC6
qobB9mkZlZ0qihy1x4JRtflqFcqqT9n7iUZkCDIiDbg4BFySz2oSCisGAQQBl1UB
BQEBB0AxlRumDW6nZY7A+VCfek9VpEx6PJmdJyYPt3lNHMd6HAMBCAeIfgQYFggA
JgIbDBYhBLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XTSBQkNZGboAAoJENc89jjF
PAa+0M0BAPPRq73kLnHYNDMniVBOzUdi2XeF32idjEWWfjvyIJUOAP4wZ+ALxIeh
is3Uw2BzGZE6ttXQ2Q+DeCJO3TPpIqaXDAAKCRBRcisI/kdFok7wAP43BV+sBbnN
PaeXG3ufmFcAeVRZYrQ68Wo5tPPbBfO2fQEArhqns69a42xORpdZawdssbZmtz65
JskQAYNuJQjl2gI=
=bFaP
-----END PGP SIGNATURE-----
--=-=-=--
