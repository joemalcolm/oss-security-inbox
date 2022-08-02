Received: (qmail 3512 invoked by uid 550); 2 Aug 2022 11:29:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32363 invoked from network); 2 Aug 2022 09:02:24 -0000
Message-ID: <adf7f4c9-f388-a882-562a-f2b424f16a09@prodaft.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prodaft.com; s=dkim;
	t=1659430931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:mime-version:mime-version:content-type:content-type:autocrypt:autocrypt;
	bh=Zu+ACzvkHETErwwQMSmoPKvA0rtUpP3MtBf3/G/Cqdo=;
	b=jsNlxPuCEgM28GzPByxW7tmBUxP4P0DU25u/MjuEUKRGuOgk6JaCjrVWAmcm1hdG1cASvr
	NU4FTIHt8Yp77zfWCBhJEFU2uP7qjyKXMnzqqYJzAgAMORa/LU/EyJvjljkIFWdkPCbj6z
	50jZC+md1E0YCWTs7Bszxq1+e9usSjX4TIubKT6QgQauuz0Wn6vYwdCCPq7z1VpjcXP3vF
	Mqqf7FPfgMoQgiqNpWbRCvU7W5IeT5O9+gb8K8MGmw+BZ0Vga4Tz3Bma9wMTOCTFG15lMS
	xv+/fnu5S8FbtH/S3vFJ2le5QHcCDTrfFy7oV1KAJYaiADeLIIBa3Mw9j83k5Q==
Date: Tue, 2 Aug 2022 11:53:25 +0300
MIME-Version: 1.0
From: EGE BALCI <ege@prodaft.com>
To: oss-security@lists.openwall.com
Content-Language: en-US
Autocrypt: addr=ege@prodaft.com; keydata=
 xjMEX6rxCRYJKwYBBAHaRw8BAQdA11KsPdla0MjhA2LUsm0XGrTZLU24GM6HGKmP+ypedNvN
 G0VHRSBCQUxDSSA8ZWdlQHByb2RhZnQuY29tPsKWBBMWCAA+FiEEVq3AKtvqsHf0dWZczcoP
 S0RFqjkFAl+q8QkCGwMFCQlmAYAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQzcoPS0RF
 qjk11gD/fJaI4Q7GDUCpVrHjynTYRzJtm24UuCo2KI0u0S8q9aoA/igwX9hZncmFGTyRpBrG
 wBvMfK/plhhz1kfg8k7Y22gHzjgEX6rxCRIKKwYBBAGXVQEFAQEHQKFNTvLkx0e8TuTML8hb
 etR10NsYfC7AOtqAPElS5XVmAwEIB8J+BBgWCAAmFiEEVq3AKtvqsHf0dWZczcoPS0RFqjkF
 Al+q8QkCGwwFCQlmAYAACgkQzcoPS0RFqjlP7gEAnQNCnn+isTLts+7WNd0osOptxZqAUmuO
 ZfhrE078hQsA/iI2xSqjbq2cJjH+TbRD2WSBzrOx2rSOlOIZoDU8AfQF
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3msH4MvmVlKK3o19rbCKjdo4"
Subject: [oss-security] CVE-2022-29154: Rsync client-side arbitrary file write vulnerability.

--------------3msH4MvmVlKK3o19rbCKjdo4
Content-Type: multipart/mixed; boundary="------------55aJI9BsJvXemVWbyyZq7Dj8";
 protected-headers="v1"
From: EGE BALCI <ege@prodaft.com>
To: oss-security@lists.openwall.com
Message-ID: <adf7f4c9-f388-a882-562a-f2b424f16a09@prodaft.com>
Subject: CVE-2022-29154: Rsync client-side arbitrary file write vulnerability.

--------------55aJI9BsJvXemVWbyyZq7Dj8
Content-Type: multipart/mixed; boundary="------------uTRPw7bpJ3a0rIBeOWULpWW6"

--------------uTRPw7bpJ3a0rIBeOWULpWW6
Content-Type: multipart/alternative;
 boundary="------------FmPrj1cF3Xc0xsThnY0Opv4e"

--------------FmPrj1cF3Xc0xsThnY0Opv4e
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

RGF0ZSByZXBvcnRlZMKgwqDCoMKgwqDCoMKgwqDCoMKgIDogSnVseSAyNSwg
MjAyMg0KQ1ZFIGlkZW50aWZpZXJzwqDCoMKgwqDCoMKgwqDCoCA6IENWRS0y
MDIyLTI5MTU0Lg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpSc3lu
YyBjbGllbnQtc2lkZSBhcmJpdHJhcnkgZmlsZSB3cml0ZSB2dWxuZXJhYmls
aXR5LiAoQ1ZFLTIwMjItMjkxNTQpDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCg0KID4+Pj4gV2UgaGF2ZSBkaXNjb3ZlcmVkIGEgY3JpdGljYWwg
YXJiaXRyYXJ5IGZpbGUgd3JpdGUgdnVsbmVyYWJpbGl0eSANCmluIHRoZQ0K
ID4+Pj4gcnN5bmMgdXRpbGl0eSB0aGF0IGFsbG93cyBtYWxpY2lvdXMgcmVt
b3RlIHNlcnZlcnMgdG8gd3JpdGUgYXJiaXRyYXJ5DQogPj4+PiBmaWxlcyBp
bnNpZGUgdGhlIGRpcmVjdG9yaWVzIG9mIGNvbm5lY3RpbmcgcGVlcnMuIFRo
ZSBzZXJ2ZXIgY2hvb3Nlcw0KID4+Pj4gd2hpY2ggZmlsZXMvZGlyZWN0b3Jp
ZXMgYXJlIHNlbnQgdG8gdGhlIGNsaWVudC4gRHVlIHRvIHRoZSANCmluc3Vm
ZmljaWVudA0KID4+Pj4gY29udHJvbHMgaW5zaWRlIHRoZQ0KID4+Pj4gW2Rv
X3NlcnZlcl9yZWN2XSgNCiA+Pj4gDQpodHRwczovL2dpdGh1Yi5jb20vV2F5
bmVEL3JzeW5jL2Jsb2IvODVjNTZiMjYwM2Q5N2MyMjU4ODkxNzU3OTdmZmZm
Njc0NWE0ZDMwNS9tYWluLmMjTDExMTgNCiA+Pj4gKQ0KID4+Pj4gZnVuY3Rp
b24sIGEgbWFsaWNpb3VzIHJ5c25jIHNlcnZlciAob3IgTWFuLWluLVRoZS1N
aWRkbGUgYXR0YWNrZXIpIGNhbg0KID4+Pj4gb3ZlcndyaXRlIGFyYml0cmFy
eSBmaWxlcyBpbiB0aGUgcnN5bmMgY2xpZW50IHRhcmdldCBkaXJlY3Rvcnkg
YW5kDQogPj4+PiBzdWJkaXJlY3Rvcmllcy4gQW4gYXR0YWNrZXIgYWJ1c2lu
ZyB0aGlzIHZ1bG5lcmFiaWxpdHkgY2FuIG92ZXJ3cml0ZQ0KID4+Pj4gY3Jp
dGljYWwgZmlsZXMgdW5kZXIgdGhlIHRhcmdldCByc3luYyBkaXJlY3Rvcnkg
YW5kIHN1YmRpcmVjdG9yaWVzIA0KKGZvcg0KID4+Pj4gZXhhbXBsZSwgdG8g
b3ZlcndyaXRlIHRoZSAuc3NoL2F1dGhvcml6ZWRfa2V5cyBmaWxlKS4gVGhp
cyBpc3N1ZSANCmlzIHZlcnkNCiA+Pj4+IHNpbWlsYXIgd2l0aCB0aGUNCiA+
Pj4+IFtDVkUtMjAxOS02MTExXShodHRwczovL3d3dy55b3V0dWJlLmNvbS93
YXRjaD92PWZjZXNLZ2ZTUHE0KS4NCiA+Pj4+DQogPj4+PiBCZXN0IHJlZ2Fy
ZHMsIEVnZSBCQUxDSSwgVGFoYSBIQU1BRC4NCg0KVGhlIHZ1bG5lcmFiaWxp
dHkgd2FzIGFkZHJlc3NlZCB3aXRoIHRoZSBkZXZlbG9wZXIgb2YgdGhlIHJz
eW5jIHByb2plY3QgDQphbmQgbmVjZXNzYXJ5IHBhdGNoZXMgYXJlIG1hZGUu
IFJlbGF0ZWQgY29tbWl0IGFuZCBkZXRhaWxzIGNhbiBiZSBmb3VuZCANCmlu
IHRoZSBmb2xsb3dpbmcgbGlua3MsDQotIGh0dHBzOi8vZG93bmxvYWQuc2Ft
YmEub3JnL3B1Yi9yc3luYy9ORVdTDQotIGh0dHBzOi8vZG93bmxvYWQuc2Ft
YmEub3JnL3B1Yi9yc3luYy9yc3luYy4xI01VTFRJLUhPU1RfU0VDVVJJVFkN
Ci0gDQpodHRwczovL2dpdGh1Yi5jb20vV2F5bmVEL3JzeW5jL2NvbW1pdC9i
NzIzMWM3ZDAyY2ZiNjVkMjkxYWY3NGZmNjZlN2Q4YzUwN2VlODcxDQoNCldl
IHJlY29tbWVuZCB1cGRhdGluZyB0byB0aGUgbGF0ZXN0IHN0YWJsZSB2ZXJz
aW9ucyBvZiByc3luYy4NCg0KLS0gDQoqRWdlIEJBTENJKg0KVGhyZWF0IElu
dGVsbGlnZW5jZSBUZWFtIExlYWQNCg0KKlBST0RBRlQgQ3liZXIgU2VjdXJp
dHkgVGVjaG5vbG9naWVzIElOQy4qDQoqQ0g6KiBZLVBhcmMsIHJ1ZSBHYWxp
bMOpZSA3LCAxNDAwIFl2ZXJkb24tbGVzLUJhaW5zLCBTd2l0emVybGFuZA0K
Kk5MOiogV2lsaGVsbWluYSB2YW4gUHJ1aXNlbndlZyAxMDQsIDI1OTUgQU4g
RGVuIEhhYWcsIE5ldGhlcmxhbmRzDQoqRS46KmVnZVthdF1wcm9kYWZ0LmNv
bQ0KKklOOiovZWdlYmFsY2kNCg0KSW4gY2FzZSB5b3UgdGhpbmsgeW914oCZ
cmUgbm90IHRoZSBkZXNpZ25hdGVkIHJlY2lwaWVudCBvZiB0aGUgZS1tYWls
IA0KaGVyZWJ5OyBwbGVhc2UgZGVsZXRlIGl0IGFjY29yZGluZ2x5LiAqVGhp
cyBlLW1haWwgbWF5IGhhdmUgYmVlbiBzZW50IA0KZnJvbSBhIG1vYmlsZSBk
ZXZpY2UuIFBsZWFzZSBjb250YWN0IG1lIGZyb20gbXkgbW9iaWxlLCBpbiBj
YXNlIHlvdSANCm5vdGljZSBhbiBlcnJvciBpbiB0aGUgY29udGVudC4gUFMu
IEZlZWwgZnJlZSB0byBjb250YWN0IG1lIHZpYSBTaWduYWwsIA0KVGhyZWVt
YSBvciBUZWxlZ3JhbTsgb3IgYXNrIGZvciBteSBwdWJsaWMgUEdQIGtleSBm
b3IgaGlnaC1wcm9maWxlIGNhc2VzIA0KdGhhdCBtYXkgcmVxdWlyZSBoaWdo
ZXIgY29uZmlkZW50aWFsaXR5Lg0K

--------------FmPrj1cF3Xc0xsThnY0Opv4e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Date reported=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 : July 25, 2022<br>
      CVE identifiers=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : CVE=
-2022-29154.<br>
------------------------------------------------------------------------<br>
      Rsync client-side arbitrary file write vulnerability.
      (CVE-2022-29154)<br>
------------------------------------------------------------------------<br>
      <br>
      &gt;&gt;&gt;&gt; We have discovered a critical arbitrary file
      write vulnerability in the<br>
      &gt;&gt;&gt;&gt; rsync utility that allows malicious remote
      servers to write arbitrary<br>
      &gt;&gt;&gt;&gt; files inside the directories of connecting peers.
      The server chooses<br>
      &gt;&gt;&gt;&gt; which files/directories are sent to the client.
      Due to the insufficient<br>
      &gt;&gt;&gt;&gt; controls inside the<br>
      &gt;&gt;&gt;&gt; [do_server_recv](<br>
      &gt;&gt;&gt; <a class=3D"moz-txt-link-freetext"
href=3D"https://github.com/WayneD/rsync/blob/85c56b2603d97c225889175797ffff=
6745a4d305/main.c#L1118">https://github.com/WayneD/rsync/blob/85c56b2603d97=
c225889175797ffff6745a4d305/main.c#L1118</a><br>
      &gt;&gt;&gt; )<br>
      &gt;&gt;&gt;&gt; function, a malicious rysnc server (or
      Man-in-The-Middle attacker) can<br>
      &gt;&gt;&gt;&gt; overwrite arbitrary files in the rsync client
      target directory and<br>
      &gt;&gt;&gt;&gt; subdirectories. An attacker abusing this
      vulnerability can overwrite<br>
      &gt;&gt;&gt;&gt; critical files under the target rsync directory
      and subdirectories (for<br>
      &gt;&gt;&gt;&gt; example, to overwrite the .ssh/authorized_keys
      file). This issue is very<br>
      &gt;&gt;&gt;&gt; similar with the<br>
      &gt;&gt;&gt;&gt; [CVE-2019-6111](<a class=3D"moz-txt-link-freetext"
        href=3D"https://www.youtube.com/watch?v=3DfcesKgfSPq4">https://www.=
youtube.com/watch?v=3DfcesKgfSPq4</a>).<br>
      &gt;&gt;&gt;&gt;<br>
      &gt;&gt;&gt;&gt; Best regards, Ege BALCI, Taha HAMAD.<br>
      <br>
      The vulnerability was addressed with the developer of the rsync
      project and necessary patches are made. Related commit and details
      can be found in the following links,<br>
      - <a class=3D"moz-txt-link-freetext"
        href=3D"https://download.samba.org/pub/rsync/NEWS">https://download=
.samba.org/pub/rsync/NEWS</a><br>
      - <a class=3D"moz-txt-link-freetext"
        href=3D"https://download.samba.org/pub/rsync/rsync.1#MULTI-HOST_SEC=
URITY">https://download.samba.org/pub/rsync/rsync.1#MULTI-HOST_SECURITY</a>=
<br>
      - <a class=3D"moz-txt-link-freetext"
href=3D"https://github.com/WayneD/rsync/commit/b7231c7d02cfb65d291af74ff66e=
7d8c507ee871">https://github.com/WayneD/rsync/commit/b7231c7d02cfb65d291af7=
4ff66e7d8c507ee871</a><br>
      <br>
      We recommend updating to the latest stable versions of rsync.<br>
    </p>
    <div class=3D"moz-signature">-- <br>
      <b>Ege BALCI</b><br>
      Threat Intelligence Team Lead<br>
      <br>
      <b>PRODAFT Cyber Security Technologies INC.</b><br>
      <b>CH:</b> Y-Parc, rue Galil=C3=A9e 7, 1400 Yverdon-les-Bains,
      Switzerland<br>
      <b>NL:</b> Wilhelmina van Pruisenweg 104, 2595 AN Den Haag,
      Netherlands <br>
      <b>E.:</b>ege[at]prodaft.com<br>
      <b>IN:</b>/egebalci<br>
      <br>
      In case you think you=E2=80=99re not the designated recipient of the
      e-mail hereby; please delete it accordingly. *This e-mail may have
      been sent from a mobile device. Please contact me from my mobile,
      in case you notice an error in the content. PS. Feel free to
      contact me via Signal, Threema or Telegram; or ask for my public
      PGP key for high-profile cases that may require higher
      confidentiality.</div>
  </body>
</html>

--------------FmPrj1cF3Xc0xsThnY0Opv4e--

--------------uTRPw7bpJ3a0rIBeOWULpWW6
Content-Type: application/pgp-keys; name="OpenPGP_0xCDCA0F4B4445AA39.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCDCA0F4B4445AA39.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xjMEX6rxCRYJKwYBBAHaRw8BAQdA11KsPdla0MjhA2LUsm0XGrTZLU24GM6HGKmP=0A=
+ypedNvNG0VHRSBCQUxDSSA8ZWdlQHByb2RhZnQuY29tPsKWBBMWCAA+FiEEVq3A=0A=
KtvqsHf0dWZczcoPS0RFqjkFAl+q8QkCGwMFCQlmAYAFCwkIBwIGFQoJCAsCBBYC=0A=
AwECHgECF4AACgkQzcoPS0RFqjk11gD/fJaI4Q7GDUCpVrHjynTYRzJtm24UuCo2=0A=
KI0u0S8q9aoA/igwX9hZncmFGTyRpBrGwBvMfK/plhhz1kfg8k7Y22gHzjgEX6rx=0A=
CRIKKwYBBAGXVQEFAQEHQKFNTvLkx0e8TuTML8hbetR10NsYfC7AOtqAPElS5XVm=0A=
AwEIB8J+BBgWCAAmFiEEVq3AKtvqsHf0dWZczcoPS0RFqjkFAl+q8QkCGwwFCQlm=0A=
AYAACgkQzcoPS0RFqjlP7gEAnQNCnn+isTLts+7WNd0osOptxZqAUmuOZfhrE078=0A=
hQsA/iI2xSqjbq2cJjH+TbRD2WSBzrOx2rSOlOIZoDU8AfQF=0A=
=3DqzZ3=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------uTRPw7bpJ3a0rIBeOWULpWW6--

--------------55aJI9BsJvXemVWbyyZq7Dj8--

--------------3msH4MvmVlKK3o19rbCKjdo4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQRWrcAq2+qwd/R1ZlzNyg9LREWqOQUCYujmBQUDAAAAAAAKCRDNyg9LREWqOVWK
AP96d8XH9j8+zHstMmIqjmBUkojfgto/600mgSfu2uc7BAEA2eqZgnGv7b+Ke/+59Ei4XPWCrsvg
9KRP4m6IaMhFBgg=
=dmkT
-----END PGP SIGNATURE-----

--------------3msH4MvmVlKK3o19rbCKjdo4--
