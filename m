Received: (qmail 22292 invoked by uid 550); 24 Apr 2024 11:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4038 invoked from network); 24 Apr 2024 10:38:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=powerdns.com;
	s=202306; t=1713955076;
	bh=trM1tPDMmEASpKww4pl6ZPWkzlfgCkzNjA6lKxITE70=;
	h=Subject:From:To:Date:From;
	b=Tm87H2M2Be68kjC5BOU6RLB1YcW4gSUfrhqvvkkxEC5oNfty+T0nRA9iz/IASrECB
	 +X5jTm6xRaEnvj0kAkKa1DSAcGUpgJP9FNRyWnUQmgAvvWtCL2zP8nzgXIT/VwzwYS
	 zbKMnQpi3SyEGXZHqCuVOxdBEyUdTC5JJ5rOd59TMQ3+YOp68XgWlaO7GOH8klc+Dq
	 wmgh9ePg4fq2H7f1Q/oxIaaWcPpexKwoSkgWNG+QH121isImtWMwfi+zmXEPjFXEkj
	 Htw8w3xrgwd/YQY1Mqfku/06ABpt7+o5ygx+f2STtiJcSoHIg9KX6KSwhPPnckxIXX
	 CfvJVqLMwGbnA==
Message-ID: <6fc5f0dc8f6d868e9dcf4fc2d3bc535ef8907c3c.camel@powerdns.com>
From: Peter van Dijk <peter.van.dijk@powerdns.com>
To: oss-security@lists.openwall.com
Date: Wed, 24 Apr 2024 12:37:56 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-axEDZ8KxoBj71vXMtte9"
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
Subject: [oss-security] PowerDNS Recursor Security Advisory 2024-02: if recursive
 forwarding is configured, crafted responses can lead to a denial of service
 in Recursor

--=-axEDZ8KxoBj71vXMtte9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear user,

Please find below a security advisory, relating to PowerDNS Recursor
4.8.7, 4.9.4 and 5.0.3 only.

When using recursive forwarding, a crafted response from an upstream
server can cause a Denial of Service in the Recursor.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
PowerDNS Security Advisory 2024-02: if recursive forwarding is
configured, crafted responses can lead to a denial of service in Recursor

    CVE: CVE-2024-25583
    Date: 24th of April 2024.
    Affects: PowerDNS Recursor 4.8.7, 4.9.4 and 5.0.3, earlier versions
are not affected
    Not affected: PowerDNS Recursor 4.8.8, 4.9.5 and 5.0.4
    Severity: High (only when using recursive forwarding)
    Impact: Denial of service
    Exploit: This problem can be triggered by an attacker publishing a craf=
ted zone
    Risk of system compromise: None
    Solution: Upgrade to patched version

When using recursive forwarding, a crafted response from an upstream
server can cause a Denial of Service in the Recursor. The default
configuration of the Recursor does not use recursive forwarding and is
not affected.

CVSS Score: 7.5, only for configurations using recursive forwarding, see
https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=3DAV:N/AC:L/PR:=
N/UI:N/S:U/C:N/I:N/A:H&version=3D3.1

The remedy is to update to a patched version.



--=-axEDZ8KxoBj71vXMtte9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQJQBAABCgA6FiEE+64DI4IcdwalyhUb3PUT+n7tGfMFAmYo4QQcHHBldGVyLnZh
bi5kaWprQHBvd2VyZG5zLmNvbQAKCRDc9RP6fu0Z83BjD/0ayfUjOPvTgvdqUA52
QapQ2cS2ZpI11qZm7s7M8ARJJdbb3WEnjc+67pPHNQ1WnnlsthUYsGUYwmkt3suq
CVEuXrhosT4EiMUjEz+eW1wp2n+6plmRFYArhqR9EUkpj37G6lTHkXSxy6tqWyM/
Rym/GUHQwSlyqm/cHTGFGI2GEncBFMSYclWuGHP+WKZKMY+jzUdTzorGKX5Hs2P1
rv/hNMENZhwWE64AVmm9gpCvfNTfeqem72SXjnuGjFfo3HeC3oJTJDFl7zvey8FE
8ROzGWTzWAj2+HhfFr9lheSjgCM07eH/0u5AuO+7lVkWS+VSkqD0HIYGZagWzUmQ
1MyRJC0yxWjn8+aYfNYXBrOB8C4p/gI4bC6cYj+YVf5FGbeskGgSD/iR9nT+PIdM
sXl98dgf4MDKubU8/KLU/vOM5qNDp0gtXTq/pOZG/yFf5q/C1jbwvpkZ+EkLnbYZ
N5pqzwhloSslLeZeV9OzyJEheA3CTelkey/p2+vctbXBUkVbBbI4fL0EwJWjR29M
D7MhfSNNclaOW3UEu2UJZ7KUEgbh2InY+g8Vy3wD9J/W0bQf2OyvNxQVDclE8wgH
gEEwarxomxHbFTIZvUmvDcuVgGdNjqh2OdUpSEyE5dMW07N9YCQuAizWxKBz2c00
lM68XBw0UUoaErJcnnv5RiULoQ==
=yUwy
-----END PGP SIGNATURE-----

--=-axEDZ8KxoBj71vXMtte9--
