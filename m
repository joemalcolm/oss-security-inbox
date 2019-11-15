X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1793" "Friday" "15" "November" "2019" "09:46:02" "+0100" "Cedric Buissart" "cbuissar@redhat.com" "<20191115084602.GA6327@cbuissar-ltop.localdomain>" "54" "[oss-security] CVE-2019-14869 ghostscript: -dSAFER escape in .charkeys" nil nil nil "11" "2019111508:46:02" "[oss-security] CVE-2019-14869 ghostscript: -dSAFER escape in .charkeys" (number mark "U       cbuissar@red Nov 15   54/1793  " thread-indent "\"[oss-security] CVE-2019-14869 ghostscript: -dSAFER escape in .charkeys\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-14869 ghostscript: -dSAFER escape in .charkeys" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5263 invoked by uid 550); 15 Nov 2019 08:46:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5238 invoked from network); 15 Nov 2019 08:46:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1573807570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=8eqfhJzRnDVl/rut6NM4HQC9e8JPLqaM+1KtNgxEYPE=;
	b=Wxosi4ftm5MUiEGtQ6SD0AZJAqyadL9c9JSXXbNUaQAvXkwjvES4HLx160YGozmLY0WSLY
	YWGc91Fhpuhr25YmFskasnb9N9jbZBhKx3/RgBr/Gt5jRreK6FmMu8IAINBwnKhi4pWA44
	gucOxY/8k3f4BAWld0EuMEYMZf8+qwg=
X-MC-Unique: cVhwPQMANJi1KoTbKEsYNA-1
Date: Fri, 15 Nov 2019 09:46:02 +0100
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20191115084602.GA6327@cbuissar-ltop.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
Subject: [oss-security] CVE-2019-14869 ghostscript: -dSAFER escape in .charkeys

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This is to publicly disclose CVE-2019-14869 : "-dSAFER escape in
.charkeys"

This is another instance of a highly priviledged operator being
accessible by specially crafted Postscript code, that can be used to
break out of the -dSAFER limitations.

It was found that `.forceput` operator was present and unprotected in
the `.charkeys` method and could be retrieved via manipulation of the
error handler.

The `.charkeys` method was vulnerable since ghostscript-9.15, in one way
or another: the privileged operator was `superexec` instead of
`.forceput` until a more recent version.

Upstream fix:
https://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=485904772c5f

Upstream bug report (currently private):
https://bugs.ghostscript.com/show_bug.cgi?id=701841

Red Hat would like to thank upstream, Artifex, for alerting us about the
flaw. The vulnerability was originally reported by Paul Manfred & Lukas Schauer.

Note: similarly to other recent ghostscript vulnerabilities, this one is
mitigated by the recent -dSAFER rework. However, ghostscript-9.27 and
older are fully impacted.

--
Cedric Buissart
Red Hat Product Security

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJdzmXKAAoJECISsYvaK7kIbU4IANCLEA0m85nopZ8EAFS83HOH
e9702IyLF0Sm1Esi0HzTk2me7Q/RrVk4jmubicinspJ//L26+BQhYGtmtxH/edhc
Z2psWa1gyoMowOYjhOwxqjsB80xbGKHOiPr1l0UTqS1hSq62oq7Q5MKI1N0CSHbf
W0JYHjFUboFXuf0vZk8gb+vtofn3OZ8qrNhjzmAvCt3nZb5V1tDl1z61w/BEog2O
n2UhgJGv0dakaLBYRYTF+x8wsNpeN9R+LTg2xqI4IwjL16kMfZkRSTi99DBjKkK1
ZFY5nGV6rIEoDrb+rMQU7WuBLwEUDfGWxZi4LsC2s/sueGHH4g4BCWJsPqiJfmY=
=x4v2
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--

