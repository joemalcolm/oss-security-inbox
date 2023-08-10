Received: (qmail 30237 invoked by uid 550); 10 Aug 2023 18:09:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30217 invoked from network); 10 Aug 2023 18:09:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1691690979;
	bh=G9CD6/xyViCX05IpHNSjiilM0DPW18TlQcIkh/YfOL4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=aFp1uBwsIy0tC2IA6S3uGiD8ZDinUvktj3bPOtLvDsyJqyIrFThFyey9gFVcm8vH8
	 3MkN2moak398mh8zvknbT1ZlraOpdjngZpZtN95QrYONqnVF4hbZnXmReEv4n7sLLQ
	 tiA86ieZq7Oi7H5XSPQOVJGUhOqBpRCj3RyUKE4fG3p1IqWC2DGD2WlylReQHCvr6G
	 5HUk/LC7UBog6sxdI1UlqcX69Xzz4KNqH2s7G7ENs+PxtGHskEwPvmBYOm5TUhth0E
	 ND9c6vWnFyyBeThqpL9Wjyw10Vw5S8W2eazliq4WAQ7WGVswoHzAuBkeu3dpPhEHRN
	 j8GjY6t3jiC7Q==
Date: Thu, 10 Aug 2023 18:09:37 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20230810180937.GA1577154@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <bb9a7bc.103221.189dd38cdc8.Coremail.linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <bb9a7bc.103221.189dd38cdc8.Coremail.linma@zju.edu.cn>
Subject: Re: [oss-security] CVE-2023-3772: Linux kernel:
 xfrm_update_ae_params NULL pointer dereference

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 10, 2023 at 10:13:54AM +0800, Lin Ma wrote:
> Hello there, we found a NPD bug in Linux kernel XFRM submodule.

> [fix status]:
> to ipsec tree now but not yet upstream, see https://kernel.googlesource.com/pub/scm/linux/kernel/git/klassert/ipsec/

More specifically, https://kernel.googlesource.com/pub/scm/linux/kernel/git/klassert/ipsec/+/00374d9b6d9f932802b55181be9831aa948e5b7c%5E%21/#F0

Thanks

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmTVJ90ACgkQ8yFyWZ2N
LpdFAwf+LEywZuO5iZKdDLMCHMNMz3RxIUlMKi1EXVnqHTwXz+HQ84BumzeUrDSg
QBoZYOj0m3flv6rIkmttuhPFm6k55DOW6bHwlR9u3cdGcqDbIeyoi7pVak44Pnt0
O0qAPP/b5mTrT6R1YVoJhfyODPwdnbggFvvpbpixc8naWQoJzsA/7wcHUVut7dsg
mOnjtO3iRLdt/lkgB9iSm4YP7lvQoiZ2qOvNxqL11skrtwjykEtfpWJH8nZ3jSQc
6K7f62wBkQ8d5tae/V6Bo/5sdA14Q8Lt7ImMFgyrcw/hY9tuFKv649rFINjI/gOU
KvK/e6ljB1ciKZzxZrICzBm2GYtIjw==
=k3bN
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
