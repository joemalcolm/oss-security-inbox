Received: (qmail 24460 invoked by uid 550); 18 Apr 2023 01:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24334 invoked from network); 18 Apr 2023 01:27:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781222;
	bh=/oLZjoSnfAATkAs9JYZIIKCbW2uSbsGEATbFHSfC+aE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=nOoYyqV/6omoFNMvTn2DcJVuHCvu4kzkTxrvHUav2L3gAHyBsae46diWlSvZNcWHU
	 Y4+uayaXbQXg93z+t4ZvcvgkQM5S7nsHkmb6FySV+k5n+3BvoYf//Xna12SISPB2FL
	 j2GZUf5IHT1UQ5NKRXi2BHfFDS15gtfGN3FRjL37miGIc8NGdzR4S+SZvOTWQgRK+k
	 S+ICT3P/+lku0eTId1MypOdMYrezP1pZ0RcNd4ueZDwAQD8R4cQOL1nxa6eCumOxmA
	 jU2S4dgnKFhXdPYOYfHOu/ckRCJjIUrM0anJj/qinVMZeX/CB8mWcTUje5OhNupdfa
	 kfixfRUYVNxxQ==
Date: Tue, 18 Apr 2023 01:26:59 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Heping Wang <peacewong@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012659.GH1655348@millbarge>
Mail-Followup-To: Heping Wang <peacewong@apache.org>,
	oss-security@lists.openwall.com
References: <be3b46f7-0dbf-95cf-b512-1e4a4450763a@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dMyqICaxQaaUjrCL"
Content-Disposition: inline
In-Reply-To: <be3b46f7-0dbf-95cf-b512-1e4a4450763a@apache.org>
Subject: Re: [oss-security] CVE-2023-27602: Apache Linkis publicsercice
 module unrestricted upload of file

--dMyqICaxQaaUjrCL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 10, 2023 at 06:14:37AM +0000, Heping Wang wrote:
> https://linkis.apache.org
> https://www.cve.org/CVERecord?id=CVE-2023-27602

Hello Heping, thanks for contacting the oss-security mail list about this
security issue in an Apache project.

I'd like to suggest that your email would be far more useful if
it included some details like affected versions: ideally, when a
vulnerability was introduced, and definitely, when it was fixed, if a
fix is available. Best would be a direct link to a patch in a source
control system, or attaching the patch directly.

This particular email has very few details and no references for a fix so
it is very difficult for anyone to take concrete actions.

Here's two recent postings that are far easier for downstream distributors
and consumers alike to use:
https://www.openwall.com/lists/oss-security/2023/04/04/1
https://www.openwall.com/lists/oss-security/2023/03/21/3

I'd like to encourage Apache to use these as inspiration for future
oss-security postings.

Thanks


--dMyqICaxQaaUjrCL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98eMACgkQ8yFyWZ2N
LpdqiQgAvUcmpd9qUNxq7Lq+Hx1FwmQqSH0JaAorhOk2siTW0EEQTKezP8sTFUQY
+pRqutHZFF432r46P1jzi6LeZQqyyzXR1WDcmjpJyxkF0BQ0T0otLtQFVH5pcHcR
DRMO6pP3RRbez7OMgdDRKSj2N2cz+Qv5hyRqDmRIRcB841HP0o1GgP4mHKzglPrg
ToeBZl24qJALUV+lkm9HH80SdIeRt9FpwVRe+1s0WRPgHn1wS9YCIwqOrsetPXob
cSv+JoN+FdUDn1xwqKIWwt6UO2Q2hHqW5udoB4yQpvCW+NqLY+exQA40R5XBwjp2
RS6lBDUzaOU/kKjSKhlU6ES8vteFzg==
=lOd+
-----END PGP SIGNATURE-----

--dMyqICaxQaaUjrCL--
