X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1938" "Monday" "5" "October" "2015" "20:56:47" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20151006035647.GG16643@hunt>" "50" "[oss-security] CVE Request: git" nil nil nil "10" "2015100603:56:47" "[oss-security] CVE Request: git" (number mark "        seth.arnold@ Oct  5   50/1938  " thread-indent "\"[oss-security] CVE Request: git\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19993 invoked by uid 550); 6 Oct 2015 03:57:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19964 invoked from network); 6 Oct 2015 03:57:01 -0000
Message-ID: <20151006035647.GG16643@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hTiIB9CRvBOLTyqY"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: security@ubuntu.com
Date: Mon, 5 Oct 2015 20:56:47 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: git
To: oss-security@lists.openwall.com

--hTiIB9CRvBOLTyqY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

The git project announced v2.6.1 https://lkml.org/lkml/2015/10/5/683
and included the following text:

	 * Some protocols (like git-remote-ext) can execute arbitrary code
	   found in the URL. The URLs that submodules use may come
	   from arbitrary sources (e.g., .gitmodules files in a remote
	   repository), and can hurt those who blindly enable recursive
	   fetch. Restrict the allowed protocols to well known and
	   safe ones.

The following commits appear to implement the restrictions:

https://kernel.googlesource.com/pub/scm/git/git/+/a5adaced2e13c135d5d9cc65be9eb95aa3bacedf%5E%21/
https://kernel.googlesource.com/pub/scm/git/git/+/33cfccbbf35a56e190b79bdec5c85457c952a021%5E%21/
https://kernel.googlesource.com/pub/scm/git/git/+/5088d3b38775f8ac12d7f77636775b16059b67ef%5E%21/
https://kernel.googlesource.com/pub/scm/git/git/+/f4113cac0c88b4f36ee6f3abf3218034440a68e3%5E%21/
https://kernel.googlesource.com/pub/scm/git/git/+/b258116462399b318c86165c61a5c7123043cfd4%5E%21/

I do not know if this is exhaustive.

The announcement also mentions some int-based overflows but does not
describe any situations that would allow crossing privilege boundaries.

Please assign CVEs as appropriate.

Thanks

--hTiIB9CRvBOLTyqY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWE0Z/AAoJEPMhclmdjS6X4NUH/2DxA1psIjhIUSkVlD9ACuHy
Rc5cVlsZkUI2mvSrC6I6nFCR/bI/bfFuBD9rZI4L5QRejvENZgZTglw4ZD2nIc+e
rv3dTyLZP2MlPkt+Ra7cGu72hA9M34zSbIzdzJNhUnaH5QCipZ3MbyU7NwkSmIX/
wJfvlaXzQeIs10uIR2hiYmw77JK9hPrWlj2HDfi/KFXVnWpZJzQPGFxWhq+qXEqf
rryXsAu7tvrZ1yAGvUw0zSp6TjVutlqCH97hsdjMCMlo1WBOzz8EGyruXKpzw2fP
wusSHcJTq5qiyLEdzWla9WvcNh7ZXiP7WiUcmcYzyEYxV8hX6Re6lM+tRkLBxzw=
=bmXS
-----END PGP SIGNATURE-----

--hTiIB9CRvBOLTyqY--
