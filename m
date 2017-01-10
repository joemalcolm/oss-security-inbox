X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1283" "Tuesday" "10" "January" "2017" "15:56:57" "+0100" "Andreas Stieger" "astieger@suse.com" "<8e3602af-836a-d812-91ed-d78d7ed2a150@suse.com>" "46" "[oss-security] CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8" nil nil nil "1" "2017011014:56:57" "[oss-security] CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8" (number mark "U       astieger@sus Jan 10   46/1283  " thread-indent "\"[oss-security] CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3926 invoked by uid 550); 10 Jan 2017 14:57:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3896 invoked from network); 10 Jan 2017 14:57:37 -0000
To: oss-security@lists.openwall.com
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <8e3602af-836a-d812-91ed-d78d7ed2a150@suse.com>
Date: Tue, 10 Jan 2017 15:56:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1,
 GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8

Hello,

GnuTLS 3.3.26 and 3.5.8 were released, with the following:

https://gnutls.org/security.html#GNUTLS-SA-2017-1

It was found using the OSS-FUZZ fuzzer infrastructure that decoding a
specially crafted X.509 certificate with Proxy Certificate Information
extension present could lead to a double free. This issue was fixed in
GnuTLS 3.3.26 and 3.5.8.

https://gitlab.com/gnutls/gnutls/commit/c5aaa488a3d6df712dc8dff23a049133cab=
5ec1b



https://gnutls.org/security.html#GNUTLS-SA-2017-2

It was found using the OSS-FUZZ fuzzer infrastructure that decoding a speci=
ally crafted OpenPGP certificate could lead to heap and stack overflows.=20

The support of OpenPGP certificates in GnuTLS is considered obsolete. As
such, it is not recommended to use OpenPGP certificates with GnuTLS.

https://gitlab.com/gnutls/gnutls/commit/49be4f7b82eba2363bb8d4090950dad976a=
77a3a
https://gitlab.com/gnutls/gnutls/commit/5140422e0d7319a8e2fe07f02cbcafc4d65=
38732
https://gitlab.com/gnutls/gnutls/commit/94fcf1645ea17223237aaf8d19132e004af=
ddc1a



Could CVEs please be assigned for these issues?

Thanks,
Andreas


--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)


