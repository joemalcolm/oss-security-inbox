X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2908" "Thursday" "21" "March" "2019" "16:31:01" "+0100" "Cedric Buissart" "cbuissar@redhat.com" nil "69" nil "^Date:" nil nil "3" nil nil (number mark "        cbuissar@red Mar 21   69/2908  " thread-indent "\"[oss-security] ghostscript: 2 -dSAFER bypass: CVE-2019-3835 & CVE-2019-3838\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ghostscript: 2 -dSAFER bypass: CVE-2019-3835 & CVE-2019-3838" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26297 invoked by uid 550); 21 Mar 2019 15:31:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26279 invoked from network); 21 Mar 2019 15:31:17 -0000
Message-ID: <20190321153101.GA23870@cbuissar-ltop.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Thu, 21 Mar 2019 15:31:05 +0000 (UTC)
Date: Thu, 21 Mar 2019 16:31:01 +0100
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ghostscript: 2 -dSAFER bypass: CVE-2019-3835 & CVE-2019-3838
To: oss-security@lists.openwall.com

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

This is to disclose 2 vulnerabilities in ghostscript (https://ghostscript.com/).


1- CVE-2019-3835 ghostscript: superexec operator is available

It was found that the superexec operator was available in the internal dictionary.  A specially crafted PostScript file could use this flaw in order to, for example, have access to the file system outside of the constrains imposed by -dSAFER.

This one is considered particularly Important because it can be easily triggered inside popular Linux PostScript viewers, or embedded in a PDF when read by the `gs` command, and could be used to modify the content of bashrc.

Upstream fixes:
 * Fix bug 700585: Restrict superexec and remove it from internals and gs_cet.ps
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=2055917
 * Bug 700585: Obliterate "superexec". We don't need it, nor do any known apps.
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=d683d1e6

Upstream bug report (currently restricted) : https://bugs.ghostscript.com/show_bug.cgi?id=700585

Note: The only important fix is the second one, d683d1e6, the other one is only a dependency.

To test if you are affected (on recent ghostscript, starting from gs-9.22 [starting from commit 8556b698892]):

$ gs -dSAFER -dNODISPLAY
GS> 1183615869 internaldict /superexec known { (VULNERABLE\n) } { (SAFE\n) } ifelse print

On versions older than 9.22, this would be sufficient :

GS> /superexec where { (VULNERABLE\n) } { (SAFE\n) } ifelse print



2- CVE-2019-3838 ghostscript: forceput in DefineResource is still accessible

It was found that the forceput operator could be extracted from the DefineResource method using methods similar to the ones described in CVE-2019-6116. A specially crafted PostScript file could use this flaw in order to, for example, have access to the file system outside of the constrains imposed by -dSAFER.

Upstream bug report (currently restricted) : https://bugs.ghostscript.com/show_bug.cgi?id=700576

Upstream fixes:
* https://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ed9fcd95bb01
* https://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a82601e8f95a

Don't hesitate to let me know if further information is required

Best regards,

--
Cedric Buissart
Red Hat Product Security

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJck641AAoJECISsYvaK7kIcs0H/jN/7wCkI3p6iMiZtQlnUhm6
eQzmyT1BEDLt3n53isqjlPRTyBCwRfKu4axoo235cjde8hlkUvGVEvcCQeyNEp2t
/R9GkJw3OgwrY/MdrsnP2eZRuQScihxDjLSwj7ZJ4Z4MB7N16PT65D8nJ4wM/+Ef
/no4r81tKzirMT0Bo7PrVC5yxkrSHP8r3z1WclJWNANiyg4bxAkQ+DatEOdWV5GE
87TOAtzMmD0vbS4k2s4Du7iu2d3gjC+WvUe601qr5NbfkGvld0zEM6bERMP4u4vG
Ff9AOphUT5ePpi7diinniTK3IrwZL14IrdOyqEWmAx9EbbwnRclkFwmWVsQ0DB4=
=7/Yh
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
