X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4382" "Wednesday" "8" "February" "2017" "00:00:24" "+0100" "Jens Heyens" "jens.heyens@cispa.saarland" "<38c661a9-5631-2bc0-a4eb-7821733d0f24@cispa.saarland>" "119" "[oss-security] CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion" nil nil nil "2" "2017020723:00:24" "[oss-security] CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion" (number mark "U       jens.heyens@ Feb  8  119/4382  " thread-indent "\"[oss-security] CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10163 invoked by uid 550); 7 Feb 2017 23:32:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20465 invoked from network); 7 Feb 2017 23:00:46 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at HIZ-Mailrelay triton.rz.uni-saarland.de
To: oss-security@lists.openwall.com
From: Jens Heyens <jens.heyens@cispa.saarland>
Cc: Ben Stock <stock@cs.uni-saarland.de>
Message-ID: <38c661a9-5631-2bc0-a4eb-7821733d0f24@cispa.saarland>
Date: Wed, 8 Feb 2017 00:00:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="wqHlr7lo2QUoiK2q9jcihgTUoXwNCqdvr"
X-Greylist: Sender succeeded SMTP AUTH authentication, not delayed by milter-greylist-3.0 (triton.rz.uni-saarland.de [134.96.7.25]); Wed, 08 Feb 2017 00:00:34 +0100 (CET)
Subject: [oss-security] CVE Request - Code execution vulnerability in GNU/bash v4.4
 autocompletion

--wqHlr7lo2QUoiK2q9jcihgTUoXwNCqdvr
Content-Type: multipart/mixed; boundary="iH0GRjeWwHnxegwG9P3BldwW0nPT9CevP";
 protected-headers="v1"
From: Jens Heyens <jens.heyens@cispa.saarland>
To: oss-security@lists.openwall.com
Cc: Ben Stock <stock@cs.uni-saarland.de>
Message-ID: <38c661a9-5631-2bc0-a4eb-7821733d0f24@cispa.saarland>
Subject: CVE Request - Code execution vulnerability in GNU/bash v4.4
 autocompletion

--iH0GRjeWwHnxegwG9P3BldwW0nPT9CevP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

we would like to request a CVE ID for a vulnerability in GNU/bash
version 4.4, discovered on 2017-01-17. The issue has been fixed.
A detailed description can be found in our report (available at
https://github.com/jheyens/bash_completion_vuln | direct link
https://github.com/jheyens/bash_completion_vuln/raw/master/2017-01-17.bash_=
completion_report.pdf
).

In short: We can create a file with a specially crafted file name. A
user trying to use bash' path completion feature ('TAB-completion') on
this file will execute shell code without any additional actions taken.

The issue has been reported on 2017-01-17, a fix has been added to the
git's master branch on 2017-01-20 by GNU/bash maintainer Chet Ramey
(Commit ID 4f747edc625815f449048579f6e65869914dd715, available at
http://git.savannah.gnu.org/cgit/bash.git/commit/?id=3D4f747edc625815f44904=
8579f6e65869914dd715
).


Sincerely,

Jens Heyens
CISPA

Additional information as requested on the disclosure wiki:

1. Email address of requester (so we can contact them)
	jens.heyens@cispa.saarland,  stock@cs.uni-saarland.de
2. Software name and optionally vendor name
	GNU/bash
3. At least one of (to determine is this a security issue):
  -  Type of vulnerability
	arbitrary code execution
  -  Exploitation vectors
	local, drive-by downloads, anything able to name files anywhere
  -  Attack outcome
	system compromised?
4. For Open Source at least one of:
  -  Link to vulnerable source code or fix
	Fix:
http://git.savannah.gnu.org/cgit/bash.git/commit/?id=3D4f747edc625815f44904=
8579f6e65869914dd715
  -  Link to source code change log
	N/A
  -  Link to security advisory
	Original report:
https://github.com/jheyens/bash_completion_vuln/raw/master/2017-01-17.bash_=
completion_report.pdf
  -  Link to bug entry
	in GNU/Savannah, but it's a non-public issue
  -  Request comes from project member (a.k.a. =E2=80=9Ctrust me, it's a pr=
oblem=E2=80=9D)
	No.
5. Affected version(s) (3.2.4, 3.x, current version, all current
releases, something)
	>4.3, <4.4-patch7
6. Whether or not this has been previously requested (i.e. on OSS-Sec or
to cve-assign)
	Yes, but we did not receive any information at all for three weeks.
Full story (and the advice to write to this list) here:
https://www.reddit.com/r/security/comments/5slvtu/how_do_i_request_a_cve_id=
_for_a_gnubash/
7. Is this an Open Source or commercial software request
	Yes, GPLed
8. Is this an embargoed issue (if yes and commercial: send to
cve-assign, if yes and open source: send to distros@?)
	I wouldn't think so
9. If multiple issues are listed please list affected versions for each
issue and/or who reported them (so we can determine CVE split/merge).
	No






--iH0GRjeWwHnxegwG9P3BldwW0nPT9CevP--

--wqHlr7lo2QUoiK2q9jcihgTUoXwNCqdvr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJPBAEBCAA5FiEEfunv57Tj1WsL7NSZUyz+/WOhgwQFAliaUZEbHGplbnMuaGV5
ZW5zQGNpc3BhLnNhYXJsYW5kAAoJEFMs/v1joYMEdhQP/0IV61pRV0XkiR4fep/f
566NJCAkIMVqVONixadtDvJhCZ+TtWPWhJmlCs/sE+DwbMsMT15ey+yH4uRe5+ht
UtMzTC7/L6ZmAr+OYEL/Oj8Fe0KS455If6yQqNX8NoEa3+5e5Nkmp9yNGSLGWk+m
/SYv0MSpcX5cPIBctO6T+yM8FkbHCsazLmJ3IUNMnGJD5R6xyVoXK9UE4k5qbHXx
sT0mx/O17AkDHOVrXqmSiVlqsatKzjjlAph7xKtE9fNzIQgf1e3xKFt4pqID0yyw
tGr/kZHMZwwYAwt49gTJGPXwhox3b1UX0k6bNTXDLgw4XuZb+O16WM5mOXX/xID/
l+btfAoLYYqxhsR4XPLDop3XAZm4GVH5ASgD7fTbg3FvpErA6w0kIXUAcenmdInM
UfEo+ol25HBRwxW/41jTE+XzEWrPxQeQBqH9tjyk3UdwMue4HGvf8l3WAqbuMBb7
5Supmf+d6ummv2Jg6Q4gIHkjzh/BOpDzxDffMBjrbzVr3X+XMWuNH3fuEdsBaBzc
hq6mCxh9PzC93VwWQI2xFvMLPocxBQ0o3Uf3kwYTQ1FkobRv5FptRnyiLXSXtRpf
TZ8FJ/oeHf4TZr2gsEwX8UKzZKrPwDf/gSZ29AwixHwTUXD+ACVobVdrP9iUGkYv
SCKHn3E/Vu6EJZhHsq4MjXDR
=FiG3
-----END PGP SIGNATURE-----

--wqHlr7lo2QUoiK2q9jcihgTUoXwNCqdvr--
