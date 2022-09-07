Received: (qmail 5447 invoked by uid 550); 7 Sep 2022 01:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5426 invoked from network); 7 Sep 2022 01:30:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1662514220;
	bh=PjvFZxIpNkuiutIW/x06hEClm9iY0zvRYR1CjKsxY+s=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=vN39PnEDxY0byHUcWlbfTp6pyEvojvVD/1OOr8z7LbM8yVs6D4jKkpAi2uk9/qhCA
	 jqG43JyTS79dphXCnSmLCbEJmYVb7u2I+PRdD6/xelzbQuwytPpDmPNXf0N5xkkTj0
	 kqJuul+aTMwXu/4qD1cAyGFVQ/jeiAyuddaJPQs5j8a449MdUmDEBU3qS5xznnGSyN
	 i3H3Q+f8HBfsahv6YF7KDlci/jllmLS11gNqCvu/iVzT9jU1yI+LHA5BR4k6eWYN1+
	 krnDD7cC3o+HrgiL8H1zaSOmFZ9Wx42DftQ8H5jzu9VDMDCUwMsXW4W90TJLr7JQZ9
	 Xj9QKVY5LvpjA==
Date: Wed, 7 Sep 2022 01:30:17 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20220907013017.GA1357227@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
 <CAH8yC8k8C-gp9upSpJLsXrhBB5-qSnKGeP34+32A-_s5YG3UTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline
In-Reply-To: <CAH8yC8k8C-gp9upSpJLsXrhBB5-qSnKGeP34+32A-_s5YG3UTA@mail.gmail.com>
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 06, 2022 at 08:45:28AM -0400, Jeffrey Walton wrote:
> One of the problems with GMP is, it will crash instead of returning
> failure. The problem becomes more acute if the program using GMP is
> handling sensitive information, like a private key or passphrase. The
> sensitive material can be written to a dump file and can be sent to an
> error reporting service.

Could an application that handles secrets and uses GMP use prctl(2)'s
PR_SET_DUMPABLE command to prevent dumping the core file? It'd also
prevent using ptrace-based debugging, so it's not without costs, but if
it handles secrets, that's probably also a good idea.

Thanks

--tThc/1wpZn/ma/RB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmMX9CkACgkQ8yFyWZ2N
LpeD9ggAm7AuZ9Dcksv1gw+5QE+eyc4rGCPQTuhuy/+3BZi28NplQTXXYwlL7y3Q
t+IMXCGi9vvJR8quG8vTmUZxDQK0FPdLUFpTmoQgt6LkZus1SfOm4Pmzxa2n+YdY
c5e0aBnJCmCaQmq1dM8QFVpjaRvB1F0DtJ5QkeCg65QmoG6h2RGWYlp85sU9VP5F
ms0vrevpFtQxTAvXmJizBuE1gEDRZ/anPEls+G0ka+AHEEN3OTzTRWYVlWQc7V1D
+awLqFE2jIKcw4K/foRDWP5lW9612Bb1cCbU1spnrYFHZXKtxuXlzp/ZRRvh/M6T
6sAURZsHzGplIBROx8IVOIjhCe7nWw==
=/EZF
-----END PGP SIGNATURE-----

--tThc/1wpZn/ma/RB--
