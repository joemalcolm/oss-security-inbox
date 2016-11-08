X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4416" "Tuesday" "8" "November" "2016" "14:06:14" "+0100" "Andrej Nemec" "anemec@redhat.com" "<58beef31-d838-42a0-cafc-85221417785c@redhat.com>" "135" "[oss-security] CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string" nil nil nil "11" "2016110813:06:14" "[oss-security] CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string" (number mark "U       anemec@redha Nov  8  135/4416  " thread-indent "\"[oss-security] CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string\"\n") "<a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>" ("<a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11308 invoked by uid 550); 8 Nov 2016 13:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11286 invoked from network); 8 Nov 2016 13:06:29 -0000
References: <a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
X-Forwarded-Message-Id: <a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>
Message-ID: <58beef31-d838-42a0-cafc-85221417785c@redhat.com>
Date: Tue, 8 Nov 2016 14:06:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Ekit1uLPUW3gaCFTS3CxPfO8w8II529NN"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 08 Nov 2016 13:06:17 +0000 (UTC)
Subject: [oss-security] CVE Request: Cryptography 1.5.3: HKDF might return an empty
 byte-string

--Ekit1uLPUW3gaCFTS3CxPfO8w8II529NN
Content-Type: multipart/mixed; boundary="4oGeQRJwocf8r5aqseJpkWMp4hJOedjWH";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <58beef31-d838-42a0-cafc-85221417785c@redhat.com>
Subject: CVE Request: Cryptography 1.5.3: HKDF might return an empty
 byte-string
References: <a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>
In-Reply-To: <a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>

--4oGeQRJwocf8r5aqseJpkWMp4hJOedjWH
Content-Type: multipart/alternative;
 boundary="------------FCF58C3C354593F8B135A3C3"

This is a multi-part message in MIME format.
--------------FCF58C3C354593F8B135A3C3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello all,

A security issue was fixed in Cryptography 1.5.3 and disclosed publicly
in the changelog, posted below:

1.5.3 - 2016-11-05

* Security issue: Fixed a bug where HKDF would return an empty
byte-string if used with a length less than algorithm.digest_size.
Credit to Markus D=C3=B6ring for reporting the issue.

Changelog:

https://cryptography.io/en/latest/changelog/#id1

Upstream bug:

https://github.com/pyca/cryptography/issues/3211

Upstream patch:

https://github.com/pyca/cryptography/commit/b924696b2e8731f39696584d12cceeb=
3aeb2d874

Mitre, would you mind assigning a CVE number for this issue? Thanks!

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA


--------------FCF58C3C354593F8B135A3C3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8=
">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hello all,<br>
    <br>
    A security issue was fixed in Cryptography 1.5.3 and disclosed
    publicly in the changelog, posted below:<br>
    <br>
    1.5.3 - 2016-11-05<br>
    <br>
    * Security issue: Fixed a bug where HKDF would return an empty
    byte-string if used with a length less than algorithm.digest_size.
    Credit to Markus D=C3=B6ring for reporting the issue.<br>
    <div class=3D"section" id=3D"id1"><br>
      Changelog:<br>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://cryptography.io/en=
/latest/changelog/#id1">https://cryptography.io/en/latest/changelog/#id1</a=
><br>
      <br>
      Upstream bug:<br>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/pyca/cr=
yptography/issues/3211">https://github.com/pyca/cryptography/issues/3211</a=
><br>
      <br>
      Upstream patch:<br>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/pyca/cryptogr=
aphy/commit/b924696b2e8731f39696584d12cceeb3aeb2d874">https://github.com/py=
ca/cryptography/commit/b924696b2e8731f39696584d12cceeb3aeb2d874</a><br>
      <br>
      Mitre, would you mind assigning a CVE number for this issue?
      Thanks!<br>
    </div>
    <br>
    Best Regards,<br>
    <div class=3D"moz-forward-container">
      <pre class=3D"moz-signature" cols=3D"72">--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA</pre>
    </div>
  </body>
</html>

--------------FCF58C3C354593F8B135A3C3--

--4oGeQRJwocf8r5aqseJpkWMp4hJOedjWH--

--Ekit1uLPUW3gaCFTS3CxPfO8w8II529NN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJYIc3GAAoJEIkERKHVe23aTwQP/2kBY7K1yUBH4uZaRMu93dnq
Ohf4BmMH+SjBN3DNifCMXDKLxXW3SrREROX+X2pvvbJwnECe2w23cS8YGY1wg2Ni
WB/caivpkMajljZw97J3tORnDaA1acTtthIfff2O0iDka/RzjjBfKeTl2Y4lbwOv
1VKNkxtiltkRaowfMpzKhXlEVGqtBiwQR8eapePFUpbsMDgzYrXHnxynqbd1xxk/
KuzvHUln4NmWjN6FCEZkBUB5H9xz1I+V8slP6neEU7dHGu+JVg7dEOMKEcopG7Rn
g9hdyO6PHlh3xYGjmkVzaejucf1Irzf5ekyfnUZbvwjsh+qSGyz7CTCKKVHXGDUO
/Q2BHXii06ZnGxb0sIrz4HUgVzL9Fx1VpVx3itOX9oQ2EUr7TFxX5Nqd65ahrbbL
yxWf34MtETSLr4j1nLeqU+E4esC4bUJVHS2F7JpZTJ46ZUfoOByA3YXVx7Ian1VJ
VPAPl5ohcjlgWwNNM+SfhoQGxXQSw3qy1xNja3xMV5LVT3glnWreHZBLpkEdTBuz
k8QRZ315UYhg+10Ti82kzcJ0YkpsWbB2EvvZFckDdlib+BZ838R8AaqS7iTTm9IH
7x1M6GB9RVzd87cg4Zwf9gbdVtBTCbeXRu8YhUE99xFEbn1rqux5sge1eaKjojxl
LjLOEJvgixWV2y+xaHTe
=3ofc
-----END PGP SIGNATURE-----

--Ekit1uLPUW3gaCFTS3CxPfO8w8II529NN--
