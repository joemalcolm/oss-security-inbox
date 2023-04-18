Received: (qmail 7842 invoked by uid 550); 18 Apr 2023 01:29:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7792 invoked from network); 18 Apr 2023 01:29:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781352;
	bh=Yik4RSJz8YI7s8cb9vjyXnLVB24DTUP9cKq3IHrD8rI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=QJDkL1BIJoBFKzlJhEV0EmgQjjw1tKxZDg+Y3m6rHg5Ls9Q1fJn/cLDl8P/DLGUkd
	 yposHiIlZJf/khr7+HZYW1adkBWSEL4W/qjRIOiLtk8p2l7rv/2NBKKcmIB1kWSHH+
	 zKV1HfFAHeWFAjDon1qypyF0q2LWhQdNpmCTlxl+uqCiuws6SDHaXVJq7OxuJfwERt
	 2dCXDFjlDpC3s/AMOoblWrjx18qpOcDfKo/hHPq7lsrRqRTVuvDSL8RZm0cbuyV7Nf
	 2GMkTDLiAeXoEVx2vj0aFgQgdG2jvUWVw/L7ZVn1q9/dBxIJhhhMwnzXxBrbwlDeTv
	 vhEmZ6UOGQsDw==
Date: Tue, 18 Apr 2023 01:29:10 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Jialin Qiao <qiaojialin@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012910.GK1655348@millbarge>
Mail-Followup-To: Jialin Qiao <qiaojialin@apache.org>,
	oss-security@lists.openwall.com
References: <546b3452-d9b0-a16d-76eb-d8a87429e595@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x1F0m3RQhDZyj8sd"
Content-Disposition: inline
In-Reply-To: <546b3452-d9b0-a16d-76eb-d8a87429e595@apache.org>
Subject: Re: [oss-security] CVE-2023-30771: Apache IoTDB Workbench:
 apache/iotdb-web-workbench: forge the JWTToken to access workbench

--x1F0m3RQhDZyj8sd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Apr 16, 2023 at 02:48:14AM +0000, Jialin Qiao wrote:
> https://iotdb.apache.org
> https://www.cve.org/CVERecord?id=CVE-2023-30771

Hello Jialin, thanks for contacting the oss-security mail list about this
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


--x1F0m3RQhDZyj8sd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98mUACgkQ8yFyWZ2N
LpfQVQf/YWlaYW5xXAuNxzEc/eL1Fpxb4mmHQfWHeLjjYDWiy80q9/s8IysW6jx4
AZTkKEH39rHGu6nVCV0ViJFJ6Th5vcac5scm228UozibXDTJgSAVLM2V7PYYkWdt
pLZteDPS1yqcgXTprvZceE/fOD2mvzmeQUFdi0NTVCSRptDAKwPcQ7gZ9p5x2F2k
rViW75dWnxLZWzZQ1VZ2xC0ceWo6KGw1uWtT8tJJFtc7C0FbMWdJFQDsfI9GjOkm
8RFd6fIUOxE6e0CReSfKSW1uEVrqUrq0k0uFOiTjIXI0NlcePCqhTez2+mopKKD3
a0DRMzxq9yxNt+xiPJYv4X6jwSjZjQ==
=ITgJ
-----END PGP SIGNATURE-----

--x1F0m3RQhDZyj8sd--
