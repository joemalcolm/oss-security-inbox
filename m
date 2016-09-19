X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1416" "Monday" "19" "September" "2016" "11:32:01" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160919183201.GA29516@hunt>" "41" "Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" nil nil nil "9" "2016091918:32:01" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "U       seth.arnold@ Sep 19   41/1416  " thread-indent "\"Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<20160916173838.GL8683@netmeister.org>" "<7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>" "<E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26029 invoked by uid 550); 19 Sep 2016 18:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25993 invoked from network); 19 Sep 2016 18:32:15 -0000
Date: Mon, 19 Sep 2016 11:32:01 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: John Haxby <john.haxby@oracle.com>
Cc: oss-security@lists.openwall.com,
	Jan Schaumann <jschauma@netmeister.org>,
	"chet.ramey" <chet.ramey@case.edu>
Message-ID: <20160919183201.GA29516@hunt>
Mail-Followup-To: John Haxby <john.haxby@oracle.com>,
	oss-security@lists.openwall.com,
	Jan Schaumann <jschauma@netmeister.org>,
	"chet.ramey" <chet.ramey@case.edu>
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <20160916173838.GL8683@netmeister.org>
 <7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>
 <E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 18, 2016 at 08:06:57PM +0100, John Haxby wrote:
> >>> A little while ago, one of our users discovered that by setting the
> >>> hostname to $(something unpleasant), bash would run "something
> >>> unpleasant" when it expanded \h in the prompt string.
> >=20
> > This issue has been public since October, 2015 in Ubuntu's bug tracking
> > system.
> >=20
>=20
> Yes, the message was more to let people know that CVE-2016-0634  had
> been assigned for this issue.   Do you have a link to the Ubuntu issue
> and a different CVE number?

Hello John; we did not assign a CVE number for this issue.

Bernd Dietzel reported it at:
https://bugs.launchpad.net/ubuntu/+source/bash/+bug/1507025

Thanks

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJX4C8hAAoJEPMhclmdjS6XazMH/2adjIXEzrmPi1aeDz/vARpf
weYQkZBYdSwU19nDWKcCPeUDPhZkjdHdsZZk3hVKTfeIgc+dvm03ILBFC8II2HIe
ChLZ2YM39NcnWx16WOglT+qSP/iihD1HL4wva9rkbSGZ1Q/cxztHA3fDYwd4rNkb
bBSa9jatHbqGCgSQqpVX5uKfHuFNZWvEGZdaQMTVu9oD0XZ0nj476QSV598wIGES
vefHaLL5lfLn9dmYd0Px0GLjvU/oJjx1L7yPtCjuAYkd0YiCC2qwR3e3Cfh20jCk
pMgDO3ORnweZ7h/6oKu3tYu10aZ+r+fDglrBzxIB6Mf96TlW6hRTdtv59rLSwBE=
=vT4j
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--
