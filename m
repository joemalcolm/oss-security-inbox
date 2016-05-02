X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2451" "Monday" "2" "May" "2016" "19:22:30" "+0200" "Andrew Shadura" "andrew@shadura.me" "<57278CD6.2030209@shadura.me>" "69" "[oss-security] [SECURITY ISSUES] CVE-2016-3691 and CVE-2016-3114" nil nil nil "5" "2016050217:22:30" "[oss-security] [SECURITY ISSUES] CVE-2016-3691 and CVE-2016-3114" (number mark "U       andrew@shadu May  2   69/2451  " thread-indent "\"[oss-security] [SECURITY ISSUES] CVE-2016-3691 and CVE-2016-3114\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7484 invoked by uid 550); 2 May 2016 17:22:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7456 invoked from network); 2 May 2016 17:22:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=shadura.me;
	 s=a; h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To;
	bh=2foTFd3P8nYu2MKWqzbUM/03tJvGeW90tdwHDTuQlu8=; b=WElcOqCk55xxwvD+cKQFBkvo3i
	+atvNv4pQz7CXwpeGHD3Y00V8MqO5QZl95NBlBsIdedZEnMlrwEp0s/IhNf2MlYUEP1c1Ui9PfznW
	U5DzhX4vD//g96vr1On32R+vngywOTLEquZD8dd69nyvGcY71eZCM6WyyhKVjlX5weRs=;
To: Kallithea <kallithea-general@sfconservancy.org>
Cc: oss-security@lists.openwall.com
From: Andrew Shadura <andrew@shadura.me>
Message-ID: <57278CD6.2030209@shadura.me>
Date: Mon, 2 May 2016 19:22:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="kVe4swjV9kAcV0o00FkxiPQH6gArGPwQ2"
Subject: [oss-security] [SECURITY ISSUES] CVE-2016-3691 and CVE-2016-3114

--kVe4swjV9kAcV0o00FkxiPQH6gArGPwQ2
Content-Type: multipart/mixed; boundary="pKn6Ik9hgW2opdH8qtOeG6DOlX0lLxitf"
From: Andrew Shadura <andrew@shadura.me>
To: Kallithea <kallithea-general@sfconservancy.org>
Cc: oss-security@lists.openwall.com
Message-ID: <57278CD6.2030209@shadura.me>
Subject: [SECURITY ISSUES] CVE-2016-3691 and CVE-2016-3114

--pKn6Ik9hgW2opdH8qtOeG6DOlX0lLxitf
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello everyone,

We've discovered the following security issues in Kallithea.

CVE-2016-3114: Privilege escalation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The vulnerability that allowed logged-in users to edit or
delete open pull requests associated with any repository to which
they had read access, plus a related vulnerability allowing logged-in
users to delete any comment from any repository, provided they could
determine the comment ID and had read access to just one repository.

CVE-2016-3691: CSRF protection bypass
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Routes allows GET requests to override the HTTP method, which breaks
the Kallithea CSRF protection (which only applies to POST requests).

The attacker might misuse GET requests method overriding to trick user
into issuing a request with a different method, thus bypassing the
CSRF protection.

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

S=C3=B8ren L=C3=B8vborg wrote patches fixing these issues, both of which are
included in the release 0.3.2. Users are advised to upgrade as soon as
possible.

--=20
Cheers,
  Andrew


--pKn6Ik9hgW2opdH8qtOeG6DOlX0lLxitf--

--kVe4swjV9kAcV0o00FkxiPQH6gArGPwQ2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXJ4zWAAoJEJ1bI/kYT6UUZz8H/jgPW3aeAHyTVab1l75IAFKu
j7wyM1PgU7T1SdrLc/cHpAzmIn7DAzklUAhBb8BtP76Nxr/xhmLTAGzzD75Jaifb
3ZLnt0n9sakvMLJUtcjZF5Ku6cRNYSViZ9CPFfBh8Im/6VbGJ7Trvz5sZQ8bctCu
+39dja+f8EjWRjvg09+ENJ/EwclY0HTzVDt8rG2jExkIJ4BjmF9b2YQiEAwBuUvr
KDkrUtRnh7A+fyItYb9GXY5ClaoFhYbhUVIS5FOO0nfR30q3tgEq9nHpnT/4va2w
h36Rq+/2JS2rtxRwzkK+U1himdKzPs5zkVp435Ir1qCvhiuhCr8MUuzq+pY+MHQ=
=lNMe
-----END PGP SIGNATURE-----

--kVe4swjV9kAcV0o00FkxiPQH6gArGPwQ2--
