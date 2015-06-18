X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2639" "Thursday" "18" "June" "2015" "12:41:18" "-0400" "Giancarlo Canales" "gcanalesb@me.com" "<BA939B00-BFFE-40B1-B496-23DEA74FD586@me.com>" "70" "Re: [oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" nil nil nil "6" "2015061816:41:18" "[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" (number mark "        gcanalesb@me Jun 18   70/2639  " thread-indent "\"Re: [oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch\"\n") "<20150618162009.E54B1132E58E@smtpvbsrv1.mitre.org>" ("<20150618162009.E54B1132E58E@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15446 invoked by uid 550); 18 Jun 2015 16:41:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15420 invoked from network); 18 Jun 2015 16:41:42 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-18_04:2015-06-18,2015-06-18,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506180280
Content-type: text/plain; charset=us-ascii
MIME-version: 1.0 (1.0)
X-Mailer: iPhone Mail (12F70)
In-reply-to: <20150618162009.E54B1132E58E@smtpvbsrv1.mitre.org>
Content-transfer-encoding: quoted-printable
Message-id: <BA939B00-BFFE-40B1-B496-23DEA74FD586@me.com>
References: <20150618162009.E54B1132E58E@smtpvbsrv1.mitre.org>
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Thu, 18 Jun 2015 12:41:18 -0400
From: Giancarlo Canales <gcanalesb@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Possible CVE Request: Multiple stack overflows
 in squashfs-tools and sasquatch
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Yes, that is correct.=20

Thanks.

> On Jun 18, 2015, at 12:20 PM, cve-assign@mitre.org wrote:
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
>> Sasquatch is an experimental fork of squashfs-tools.
>> I'm requesting a CVE number for this vulnerability, per project.
>=20
> CVE assignments typically cannot be done that way.
>=20
>> https://github.com/devttys0/sasquatch/pull/5
>=20
> As far as we can tell, there are two independent types of problems:
>=20
>  - "int bytes" is incorrect because the return value of
>    SQUASHFS_FRAGMENT_BYTES can be larger than the maximum
>    value of a signed int
>=20
>  - pull/5 says "If we fix this by making the variable size_t, we run
>    into an unrelated problem in which the stack VLA allocation of
>    fragment_table_index[] can easily exceed RLIMIT_STACK" but
>    actually RLIMIT_STACK can be exceeded regardless of the data type
>    of the bytes variable
>=20
> We understand that the pull request is only intended to be an example
> code change, not a comprehensive code change to all affected
> functions.
>=20
> This type of fork situation can have up to six CVEs:
>=20
> 1 - all "int where size_t is correct" issues that occur only in squashfs-=
tools
>=20
> 2 - all "int where size_t is correct" issues that occur only in sasquatch
>=20
> 3 - all "int where size_t is correct" issues that occur in both squashfs-=
tools and sasquatch
>=20
> 4 - all "exceeding RLIMIT_STACK" issues that occur only in squashfs-tools
>=20
> 5 - all "exceeding RLIMIT_STACK" issues that occur only in sasquatch
>=20
> 6 - all "exceeding RLIMIT_STACK" issues that occur in both squashfs-tools=
 and sasquatch
>=20
> We would guess that the most likely case is that only 3 and 6 are
> applicable, i.e., the code problems are found only in
> unsquash-1.c/unsquash-2.c/unsquash-3.c/unsquash-4.c and all of these
> files exist in both squashfs-tools and sasquatch. Is this correct?
>=20
> - --=20
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>=20
> iQEcBAEBAgAGBQJVgu8IAAoJEKllVAevmvms4iAH/2jSsPzoTZ4CPOCHDte6TuWr
> 1S02rSBvhaQ0HngavjC66y7EAdUK98SZpDeLwN9XP2o/jyhm8YMjcqgaJ/Kerf6s
> W1QhG8Bq3h4bLiGLOWNteqCt3YinB8KNAppqXI8/zpFWH9SSHaAu0EYp5bS6Pqvz
> ldan3rWvLCojwH/cfLWCPjUCi4dYPVN60x631WpH5Fg9ysLrlPLcFNpnBH17t+ul
> k9tHS1YSox3AfdMjN1snzPalwpXqc2Qz3AlmrmeB/4YGaW7D1+fAOIr2jKEbbTUN
> fk/7Nk86Keo2vp4nHavIwtuaYYB9g6AjP/nVsdzQAoITzz9yvwFp9xklHoUbtnM=3D
> =3DYsiJ
> -----END PGP SIGNATURE-----
