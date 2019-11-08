X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3207" "Friday" "8" "November" "2019" "12:06:53" "+0000" "John Haxby" "john.haxby@oracle.com" "<E0315DDE-505B-4D2A-8567-9E1BA39ADBBF@oracle.com>" "103" "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" "^Date:" nil nil "11" "2019110812:06:53" "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" (number mark "        john.haxby@o Nov  8  103/3207  " thread-indent "\"Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|\"\n") "<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>" ("<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23661 invoked by uid 550); 8 Nov 2019 12:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23640 invoked from network); 8 Nov 2019 12:07:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2019-08-05;
 bh=WIhIIXXHH/HWaJUYUEYhtCy4sVNy+CQ0ig6QsMbf9yc=;
 b=Unc7+V9dhayTHIErQg26BWPN/clpQHuK9IV4pYSZpkBBGxSULdT8D+H8jmnftruv6nyS
 HyvB/VlGrOdJGY0DP6ilSSbJgWo79cChgL6yDvjKS5C0qEhSNbgE5g3BMIJVvITGqgA/
 2bOpUvQOUghh1m5Z0gq5kmzDwBwB3zvd9Kfxf/bqfv4Lq6wkI6saugrXu7pcSwLDJV0I
 ia0HkiawrbtPqZSZQnAAmUsBELJPVrSEyZ3ciiWh8+9pVaUZCAVXNv9eZbwEHOOV4IIz
 9rZ5lp92CjNXblWiAfve/aClagrRT35TVor1rVmRiyf5K/Lf3/+XEhJ0OBhwLt/JJKWO ZA== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D2062CC2-54FB-4219-AD8F-16D1742E7F32";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
In-Reply-To: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
Message-Id: <E0315DDE-505B-4D2A-8567-9E1BA39ADBBF@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=9 spamscore=0 mlxscore=0 mlxlogscore=700
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911080119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=11 spamscore=0 clxscore=1034
 lowpriorityscore=11 mlxscore=0 impostorscore=0 mlxlogscore=774
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911080119
Date: Fri, 8 Nov 2019 12:06:53 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Controversy and exploitability of gcc issue 30475
 |assert(int+100 > int)|
To: oss-security@lists.openwall.com

--Apple-Mail=_D2062CC2-54FB-4219-AD8F-16D1742E7F32
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 8 Nov 2019, at 08:03, Georgi Guninski <gguninski@gmail.com> wrote:
>=20
> Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|
>=20
> There is heated discussion on gcc's bugzilla starting from 2007:
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D30475
> and clang is also affected, depending on optimization flags.
>=20
> poc is the program at end.
>=20
> gcc with all optimization flags optimizes away |assert(a+100 > a)|
> even if there is no integer overflow, only signed overflow.
>=20
> clang fires the assertion with -O0, but also optimizes it away
> with -O3
>=20
> The formal verifier CBMC fires the assertion, which might of
> interest about formally verified programs.
>=20
> Signed integer arithmetic is commonly used even without integer
> overflows.
>=20
> Could this compiler issue be security problem?
>=20
> Any workarounds?


It's not really a compiler issue: the PoC is dependent on undefined behavio=
ur and the compiler is free to do whatever it wants with undefined behaviou=
r.  Many, many years ago I chatted with my then supervisor about having a c=
ompiler do interesting things with undefined behaviour for example, just re=
place that assert to print this to stdout:

	The Tao is forever undefined.
	Small though it is in the unformed state, it cannot be grasped.
	If kings and lords could harness it,
	The ten thousand things would come together
	And gentle rain fall.
	Men would need no more instruction and all things would take their course.
	Once the whole is divided, the parts need names.
	There are already enough names.
	One must know when to stop.
	Knowing when to stop averts trouble.
	Tao in the world is like a river flowing home to the sea.

Seriously, though, there are a lot of programs out there that *depend* on u=
ndefined behaviour being compiled in a particular way.   Sooner or later th=
ose programs mysteriously fail and that might lead to a security issue or j=
ust inexplicable behaviour.

In this particular case, the assert() will always trigger if the assert is =
on "a > INT_MAX-100" because that is well defined.   Does ubsan catch this =
issue?

jch

>=20
> =3D=3D=3Dpoc=3D=3D=3D
> #include <assert.h>
>=20
> int foo(int a) {
>  assert(a+100 > a);
>  printf("%d %d\n",a+100,a);
>  return a;
> }
>=20
> int main() {
>  foo(100);
>  foo(0x7fffffff);
> }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>=20
> CV:    https://j.ludost.net/resumegg.pdf
> site:  http://www.guninski.com
> blog:  https://j.ludost.net/blog


--Apple-Mail=_D2062CC2-54FB-4219-AD8F-16D1742E7F32
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXcVaXQAKCRBFC7t+lC+j
yAwBAQCzAI8WxMT0hVW1WNjw/DioV6kGyQw2D3qP+l5PgvH6MQD+Lss2hF7pkzCI
s86t8+xrYY7W/tLEoFrNzjJcQzuNGzg=
=2Pa6
-----END PGP SIGNATURE-----

--Apple-Mail=_D2062CC2-54FB-4219-AD8F-16D1742E7F32--
