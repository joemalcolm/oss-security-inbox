Received: (qmail 3414 invoked by uid 550); 18 Apr 2023 01:28:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3375 invoked from network); 18 Apr 2023 01:28:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781315;
	bh=z+94GMcPGeVagCXZgoqlQpvrENDUhV879CJ8YeIv+KU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=C5Pluf/pM5+zuKr0+GCYVjB/zYQkYbWrNiBBfhWP5dxKIKi5lO7IQ6YmZTiYagQ7J
	 ReVEEoAx4doq+Ge72XROKrJ8UQ9i3C6NKnOj5lqI1Ujdxe0dqjmWpPN+R63ZzhuymC
	 fij1gL4X4DqOzLEZwIDmD1NbHrxCu7lASpf+U0JsNj60caX25A5W41ZMgqFjR29g39
	 yJrUxu/Ud3TBpd+Q+PbkVAF0UZ1aXN4bx29py9caeoT20XmUhB6jKGBnse+qk04tJB
	 +ORbQpn1C6XuTsWjHxy9DkPYaJM8LDTqLslJeQEmp8tHm+c5q4YCCfVQhqlLp7AuUz
	 CNAlQ5bdz5SSw==
Date: Tue, 18 Apr 2023 01:28:33 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Angela Schreiber <angela@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012833.GJ1655348@millbarge>
Mail-Followup-To: Angela Schreiber <angela@apache.org>,
	oss-security@lists.openwall.com
References: <13ae48ed-68df-186b-ca74-2b6e1cb56a33@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibvzjYYg+QDzMCy1"
Content-Disposition: inline
In-Reply-To: <13ae48ed-68df-186b-ca74-2b6e1cb56a33@apache.org>
Subject: Re: [oss-security] CVE-2022-45064: Apache Sling Engine:
 Include-based XSS

--ibvzjYYg+QDzMCy1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 12, 2023 at 03:39:15PM +0000, Angela Schreiber wrote:
> https://sling.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2022-45064

Hello Angela, thanks for contacting the oss-security mail list about this
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


--ibvzjYYg+QDzMCy1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98kEACgkQ8yFyWZ2N
Lpdglwf7BJtZwfzeENL1kCbRIpUlUo5ZHMI4msW8TWNrysB5yYL6Dv+FUXoIqKJp
wq9iL8lkUXdA9gV8BnpMg6FcIb57BJAKDjvSZ0KqPPrvt96g8aqyZ9Pc72aMTBBv
l6hJRecRbV/k8p7hlYfSYhjnpkPuGVQpN7RJxBpsce8Z5bTNgf6f5QjY65rtYVnM
mU/9edMhuEs5QQsmGdbNzRff6wgdJseN1N18XRTJrgqFDDlp0vltUK9ypoBMUVKg
u1pfHTq+3uq08pe8SxFOldGC40MYXOeJFSBdeLeEcDSRuyywpr5LTxPyT2yYYiqI
ZcLehx2TM86wEVVVCbMhiRMXTMWJyg==
=i0H+
-----END PGP SIGNATURE-----

--ibvzjYYg+QDzMCy1--
