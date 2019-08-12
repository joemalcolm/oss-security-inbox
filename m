X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2960" "Monday" "12" "August" "2019" "15:25:15" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<20190812132515.GA4647@cbuissar-ltop.localdomain>" "74" "[oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" "^Date:" nil nil "8" "2019081213:25:15" "[oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" (number mark "        cbuissar@red Aug 12   74/2960  " thread-indent "\"[oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1\"\n") "<20190807065737.GA3930@cbuissar-ltop.localdomain>" ("<20190807065737.GA3930@cbuissar-ltop.localdomain>") nil nil nil nil nil nil nil "[oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14330 invoked by uid 550); 12 Aug 2019 13:25:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14307 invoked from network); 12 Aug 2019 13:25:32 -0000
Message-ID: <20190812132515.GA4647@cbuissar-ltop.localdomain>
References: <20190807065737.GA3930@cbuissar-ltop.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
In-Reply-To: <20190807065737.GA3930@cbuissar-ltop.localdomain>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Mon, 12 Aug 2019 13:25:20 +0000 (UTC)
Date: Mon, 12 Aug 2019 15:25:15 +0200
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1
To: oss-security@lists.openwall.com

--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

This is to disclose a new vulnerability in ghostscript, rated as Important.

Ghostscript is a suite of software providing an interpreter for Adobe Syste=
ms' PostScript (PS) and Portable Document Format (PDF) page description lan=
guages.  Its primary purpose includes displaying (rasterization & rendering=
) and printing of document pages, as well as conversions between different =
document formats.
URL : www.ghostscript.com

The flaw is a usual "getting a reference to a privileged function" (the scr=
ipt must successfully be able to overload the error handling code to take a=
dvantage of that flaw), allowing arbitrary file access.


* CVE-2019-10216 ghostscript: -dSAFER escape via .buildfont1 (701394):
It was found that the .buildfont1 procedure did not properly secure its pri=
vileged calls, enabling scripts to bypass `-dSAFER` restrictions. A special=
ly crafted PostScript file could use this flaw to escalate its privileges a=
nd, for example, access files outside of restricted areas.

All released versions of ghostscript are believed to be impacted, up to, an=
d including, 9.27 (however, master should not be affected: see below for bu=
ilds post commit 7ecbfda92).

Upstream bug report (currently restricted) : https://bugs.ghostscript.com/s=
how_bug.cgi?id=3D701394
Upstream fix : http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;=
h=3D5b85ddd19=20

Acknowledgements:
* Red Hat would like to thank Artifex for alerting us.
* The vulnerability was originally discovered by Netanel from Cloudinary.


Noteworthy :=20
A recent modification, started in upstream commit 7ecbfda92b4c8dbf6f6c2bf8f=
c82020a29219eff, changed the access to file permissions. After this commit,=
 the ability to modify the /PermitFile* entries from systemdict's /userpara=
ms entry should have no effect.
That is to say: getting a reference to highly privileged function (such as =
.forceput), can still be used to remove SAFER, and modify the /PermitFile* =
lists. However, the interpreter will still refuse to access files outside o=
f a list provided from a set of command line options. This should mitigate =
the class of ghostscript vulnerabilities similar to the one described above.

Best regards,

--
Cedric Buissart
Product Security
Red Hat

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJdUWiwAAoJECISsYvaK7kI5VcH/3jK50zSrdL1Si6P3XwRdiSl
6vxbpLbwrVeFFP56Kv12FamR/rOzTEFwKv4Qu1Rce3L356XhtbDaP8MDEuBiamsp
RjHh6LvIjFaCOE6aCg6Nr2Xv4GGjQJ4DKBKfJMKHV+PFLE7sgI3UxhWC2KCB4pVa
x3Rppbhc9fYk7FMG1NYAdFBfw9kOgy42Lp4SOABI4rGxp2UBeuy2pg0JZ6E1P1s1
zDw6BEmXVhqk5gJT8VbCDeiIWo91mDujXyTgMxr7rzDLGO3Tsk7+tTA/bPMGf179
gip79Z7UuOrCIx9FFtagE2Sokt1d4IoHFghY47FXFDybG61UbrzaxtpiTVpZU5E=
=SThX
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--
