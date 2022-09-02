Received: (qmail 13547 invoked by uid 550); 2 Sep 2022 20:43:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13529 invoked from network); 2 Sep 2022 20:43:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1662151384;
	bh=TQXOr8GCDMV9ZmrjpRqzyeTBLKe4HM+TJlbwpaO3fRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=rlvHM4HQ/0I/66jJZ82ivjeQv3tc7ZQ6K+dcLl2hkmIMzwTbH13dv1JrO55/1KI9+
	 MN5FJ1y5z/1+AMflD9A3iOQuiB1xaeIHN26ANO7vE0Y+ovxzr2JxpF1+8yzH+vuRNT
	 tY5KcGSgBihm/SWPXXXPBs7gm7Fxg3UijwQzFAZzftv9b9CkXXLyjA7cjhPV5ZalKH
	 aAys8YZTtRGNP1a1jS/31AosYpaUCkPAhudRcCvYGxuPz+es3mhCiv3FFzrOMuzqGz
	 xtutGD1fBm/lVPeNTDQfwFJXzKeMU3tdBpWsfPcw0O6GFEJfs+H5ziQ2Dh/mDPZPj4
	 DqcNOsg5izDjA==
Date: Fri, 2 Sep 2022 20:43:01 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Jedidiah Cunningham <jedcunningham@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20220902204301.GA3212087@millbarge>
Mail-Followup-To: Jedidiah Cunningham <jedcunningham@apache.org>,
	oss-security@lists.openwall.com
References: <c44d5503-8393-4048-2b2b-5bc3ddac3a43@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
In-Reply-To: <c44d5503-8393-4048-2b2b-5bc3ddac3a43@apache.org>
Subject: Re: [oss-security] CVE-2022-38170: Apache Airflow: Overly permissive
 umask for deamons

--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 02, 2022 at 03:55:07AM +0000, Jedidiah Cunningham wrote:
> In Apache Airflow prior to 2.3.4, an insecure umask was configured for numerous Airflow components when running with the  `--deamon` flag which could result in a race condition giving world-writable files in the Airflow home directory and allowing local users to expose arbitrary file contents via the webserver.

Hello Jedidiah,

Thanks for contributing to the oss-security list; I believe your
contributions would be far more valuable if they included some further
details -- providing links to issues and commits is common, but you could
also include the details in the email if that's easier for whatever reason.

Thanks

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmMSaswACgkQ8yFyWZ2N
LpfeFAgAqVrfZNCG3FOt4MNUadVa39OC2HQFtSACi+NpfJR0fGoPBjAb4MDZgvFo
umGT4hTd8ljTSPZQR/0obwy7WBnvRAdAlyGZlL6dcogeKEgG2dZhILCoNCCUavFP
0YZO4wzJD6exrc4FwPdkK1bWtYI6uixF0nRrz8B3hRhuOF2PSo8Tn/149X5ZZ/+o
BC2sO4W8/uwjHs6tkwCxKJb1JdylG+I7Yj9sRonFI1D4LJlZOSn7JJu7wK0tevEx
OLFGaROuF95is+J4ZjcPc6Hz2LIUqCzKqYAa8TcO9VoUoxyrRAraqBLu6Y0rHGTz
j9tpgT6BYDDSYG4R9PdZB/UM9GevDA==
=T5fR
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
