X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2233" "Tuesday" "14" "July" "2015" "10:20:17" "+0100" "Cory Benfield" "cory@lukasa.co.uk" "<98FF0D5E-9DA0-4570-A93D-CDD6F85E91AC@lukasa.co.uk>" "57" "[oss-security] [CVE-2015-3908] Improper TLS Certificate Validation in Ansible" nil nil nil "7" "2015071409:20:17" "[oss-security] [CVE-2015-3908] Improper TLS Certificate Validation in Ansible" (number mark "U       cory@lukasa. Jul 14   57/2233  " thread-indent "\"[oss-security] [CVE-2015-3908] Improper TLS Certificate Validation in Ansible\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23678 invoked by uid 550); 14 Jul 2015 14:47:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16099 invoked from network); 14 Jul 2015 09:20:26 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:subject:date:message-id:to
         :mime-version;
        bh=/8TXAbIO80x25FD2fe1h6F0Fk1dnu4CY4uIJaua1ZKc=;
        b=GdN6lzx5WsY+ZbyoWh9gSOF/+ZBNWUcIt5dw0dTlpBpByRFdoI6Du42OgX+Wmcpwv2
         ZSw0n2BWB0SihpuRgkH8E8fGjX/9r+/ygoOSLGyTKB5tpFljR3xIj3xSG7zHj0JTvBxM
         2MTtwqLKXFiyd7iNYM9YwRSafdBX1St74wE/N06pRfmuaxziW8FEChQpK1nNEpXdaH9t
         ys2azzMUCspDU9CTUXUNKGDQldvq/NhDBIzquBg7yTTz0+6jwxtEl4o9uQWUEu9S8aLz
         1bR/GuKOY7W4la7aaobk49OgjeV/6Dqi34pfBCRMzome4vvA2UBzZJ9uRRJ43GUHJt0Z
         Vxpw==
X-Gm-Message-State: ALoCoQmj7vnwnYDai4/tzwbKLLcnUZpdzH83ttl3qWm1u3uwU7ChXod7WUx+bFmISKTkDlfLqAAq
X-Received: by 10.194.89.72 with SMTP id bm8mr77225093wjb.116.1436865615107;
        Tue, 14 Jul 2015 02:20:15 -0700 (PDT)
X-Pgp-Agent: GPGMail 2.5
Content-Type: multipart/signed; boundary="Apple-Mail=_8DE8869E-1FF2-41D7-B3D2-31FD2CBFE89E"; protocol="application/pgp-signature"; micalg=pgp-sha256
Message-Id: <98FF0D5E-9DA0-4570-A93D-CDD6F85E91AC@lukasa.co.uk>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
Date: Tue, 14 Jul 2015 10:20:17 +0100
From: Cory Benfield <cory@lukasa.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-3908] Improper TLS Certificate Validation in Ansible
To: oss-security@lists.openwall.com

--Apple-Mail=_8DE8869E-1FF2-41D7-B3D2-31FD2CBFE89E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Versions of Ansible prior to 1.9.2 fail to adequately validate HTTPS certif=
icates when using the get_url and uri modules, and when using the url and e=
tcd lookup plugins. This allows for man-in-the-middle attacks on those conn=
ections.

The fix for this problem has been released as part of Ansible 1.9.2.

The Ansible playbook below is a proof-of-concept that can be used to safely=
 validate the incorrect behaviour:

  - name: a playbook demonstrating MITM in ansible
    hosts: 127.0.0.1
    connection: local
    tasks:
    - name: this should fail
      get_url: url=3Dhttps://kennethreitz.org/ dest=3D"/tmp/shouldnotexist.=
html=E2=80=9D

This playbook attempts to download a HTML file from a site presenting a cer=
tificate that is valid, but not for the site in question. Versions of Ansib=
le from 1.9.2 onward correctly fail to validate the certificate, but earlie=
r versions will download the file regardless and the playbook will successf=
ully exit.

Cory

--Apple-Mail=_8DE8869E-1FF2-41D7-B3D2-31FD2CBFE89E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJVpNRRAAoJEHD+F/imQ+Fb9F4P/3mvcHC/PS7tu2Wnw1OLfd/+
IlXhbJBrSHtM8iwXg/h3M/0vAIXu1u27z7hplIbAsvzubcKqGEwgXWVv1FFRfF1e
o4X2vZz75Hc3hbgrSmT8toilmXLM29G17hPavdJz9Z3gFHzibqAkAmBVY+a0OHeg
6p5lGfOHzIo57PQ34HI69+YNABzm0VQc2NL5j9u8PbzNzp9OFVM2GSWyJja/XwQl
eBKNsH+49ByzgAhvgQFXrZylYBb9iJ2pQ3B9+pRhxhCXMaAIv0mX1MThX0HNdgQz
VbZNHEpMkohUvz7llGSU3kzESdXoDwGWMpY8/vlRYyl4Fw1xQIkiolEkCblEQTFh
m8P9M3CQ+Wo9ySaY2n/oYm1Ywm3U+q8sMzlrfk9lsxj98LJ5J0Ooao/81kr5l1x4
Wp3PUFirbzPaAxD/zF26pLd1Dp6Zo+lVx2rhYWXO+7o3tOmK4ihpBH84Zzk7U1Di
Fm5HRoYwPKLtrWNKkOfbaCWqQFHEHO4SxhPjkzG6mWvQrcE2KjlvxuAJB1KMjd1v
JPiFJQDXf8qyiyjr9ai3IDWX+Nd4G41HUGTZYhvWSq8qqSQAjtcnX2ub/e0mS4Yh
szBAElV50Za8w9pokNrgNQKj/+QrWfdvY/RN48Imi3MlT1RQmmrWSgQjF2/hyEGv
5cEAlzSFIjIv+DtUVRQM
=UzTF
-----END PGP SIGNATURE-----

--Apple-Mail=_8DE8869E-1FF2-41D7-B3D2-31FD2CBFE89E--
