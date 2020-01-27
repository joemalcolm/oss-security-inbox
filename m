X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1590" "Monday" "27" "January" "2020" "10:43:58" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200127094358.GA11637@f195.suse.de>" "37" "Re: [oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector" nil nil nil "1" "2020012709:43:58" "[oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector" (number mark "U       mgerstner@su Jan 27   37/1590  " thread-indent "\"Re: [oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector\"\n") "<20200120145148.GG10486@f195.suse.de>" ("<20200120145148.GG10486@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12134 invoked by uid 550); 27 Jan 2020 09:44:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12113 invoked from network); 27 Jan 2020 09:44:11 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 27 Jan 2020 10:43:58 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200127094358.GA11637@f195.suse.de>
References: <20200120145148.GG10486@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
In-Reply-To: <20200120145148.GG10486@f195.suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg
 allows privilege escalation / DoS attack vector

--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I've informed the upstream maintainer about this issue on 2019-11-13 and
> discussed various aspects of a suitable security fix with him. No
> agreement on a suitable publication date for this finding or a final
> patch could be achieved and I did not hear back for around a month by
> now.

I've been informed by a third party that an upstream release sarg-2.4.0
[1] containing a fix [2] is now available.

[1]: https://sourceforge.net/projects/sarg/files/sarg/sarg-2.4.0/
[2]: https://sourceforge.net/p/sarg/code/ci/8ec6d20be8c0da3c885aba78e63251f2e5080748

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl4usN4ACgkQFMQFyXGS
NVN9ihAAnAgiC7hURl3jxhxAMdzwvFzN0ZdlUaQpJmkiclknu75uUzl/19pMYRhL
PNby6RrXyYVh9VD/gsPUvsi3tBIrenGwQ301Axgi8qI6M6KPEGEpOSXx2ahWF9fe
dsz5MSpXPM7xrI/i7Xp6R81woSWP21ErW7CP2bzaRswjXzCpsBTjzp/aGJolSEQ3
uaiWilNBSbDNUhJYl+FPOCezkDQMVXPgGsXVN8f1VOR+0z7ozEmio1xSR1Cg2SEy
vewpmFzi1OsNHtHQghMC7HSlb4u2CII32+Zzgt1jjsFKyz/F6sTNCp9kmTza8fy1
wuDVLUq/lxUVGb5RfrKKmA20xWcAkRKwdQ3vzve5PS5X9k4dTc4fNOpW0gzXzqgR
uGII5hvkUSMifJGhoMInWjxczq0kKA+Ql9tEgj+EDVBN2qrKzc8/uXxwsHSWZtm/
IXn83X5RqpHA2n9xvLz7uOBvgSsgL6FIy17lE77oRYZgFXM2RT1hPF1QCFN3ox9B
8uWhvU1mdA/WOaT1gskxGJTZaoCgadKaQTdgp5rHSdkYQVMF59Yw625utJU2AXQU
DwsqC0R1obaLjNxTAmmUdilGvTN2y4eRR6cq/GBid1ljJaNkdJFtMo6BaJV0KWFP
o8UMEOVj/P78HAZN8VhnjQTXMs68qL7tm10/wRV3Oc4XOETERjw=
=zWLD
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
