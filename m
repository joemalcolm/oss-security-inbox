Received: (qmail 5409 invoked by uid 550); 17 Feb 2026 21:27:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28204 invoked from network); 17 Feb 2026 21:21:21 -0000
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=ed2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Zqt4kAS+DVHn9JKVk1SERNBrKhT+lk2cYNSXlkUGACY=; t=1771363282; x=1772572882; 
	b=r0BLAmIzjSntf0dzPt2w1N6mufDavfknyFLDEr1UJB7gStENVTpnL53QtOTxZ8ZFVVFcFEmCrtO
	+BieJAIiBDw==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=rsa2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Zqt4kAS+DVHn9JKVk1SERNBrKhT+lk2cYNSXlkUGACY=; t=1771363282; x=1772572882; 
	b=RAtwWq0DVz6yHmuyU9DKHXwB5lTCmwP4PfULRepw/vQj1XwJrvqTkvpR1R6Piob7GeC8z2YZjIR
	8Br9fb8mLBsb56l07HcJeKNIu3Zhuj/YHC3CYTsA0KS/kR2QIqPJLxX9WsLNOvAgAf7VfZt5Kb/5S
	IRryFKHeUeS3+xbnXP3VN5Hp89cwqJrSY7Ns6lyLdp6Ss+uvhe2dMyEgyKxQ8lAzCf7vkFeE11M0f
	V4JU1oKKz/yUZAo7m74g26U+gCunHIAQsyJWa+IFw6ExqW914NXSsl/qD1BqbaeeNqyH4mGv0AbpG
	GK8yApj22p5P9BFEzCDD8WCUiOCQhPMa/1acdyAuNcYeFHhijSMrfeWacjbz6GHa7JgnfG3BoskKJ
	mmrIWOLGc0lMZJ/wKrxrc2W/HKyhq1V8e5Qf4DekXYCwYeI84AratDMqj1P2XdwYTovTTNDSz;
From: Simon Josefsson <simon@josefsson.org>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <87seazqslh.fsf@gentoo.org> (Sam James's message of "Tue, 17 Feb
	2026 15:48:10 +0000")
References: <87seazqslh.fsf@gentoo.org>
OpenPGP: id=B1D2BD1375BECB784CF4F8C4D73CF638C53C06BE;
 url=https://josefsson.org/key-20190320.txt
X-Hashcash: 1:23:260217:sam@gentoo.org::yCS9pjdttSxo2EhE:8yVs
X-Hashcash: 1:23:260217:oss-security@lists.openwall.com::gB3N0YUzQlWAkwVC:9xE3
Date: Tue, 17 Feb 2026 22:21:17 +0100
Message-ID: <87a4x7awxe.fsf@josefsson.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: zlib security audit by 7asecurity

--=-=-=
Content-Type: text/plain

Great to see audits of widely used code!  Gzip next?

Sam James <sam@gentoo.org> writes:

> * ZLB-01-001 WP2: Heap Buffer Overflow via Legacy gzprintf Implementation (High)

That vulnerability seems to require that zlib was built with
-DNO_vsnprintf -DNO_snprintf, targetting a system lacking 'snprintf'.

Does anyone know of a real-world environment using that configuration?

I don't see the applicability discussed in the report, and before
assigning a severity rating to this problem, I think it is relevant to
understand what environments really are affected.

/Simon

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQNoBAEWCgMQFiEEo8ychwudMQq61M8vUXIrCP5HRaIFAmmU280UHHNpbW9uQGpv
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
is3Uw2BzGZE6ttXQ2Q+DeCJO3TPpIqaXDAAKCRBRcisI/kdFojR5AP9agEi3oCLA
lOLnh/KT5Syhzh6oapik9Mx1tq1EJdVPhQD+Oc07ok9FNWeyk83oxHYp/DXcOWi/
i1An/jIhj6fsHAY=
=ZYMw
-----END PGP SIGNATURE-----
--=-=-=--
