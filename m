X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1324" "Sunday" "10" "April" "2016" "10:23:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160410142311.A459F336036@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE request: cronic - predictable temporary files" nil nil nil "4" "2016041014:23:11" "[oss-security] Re: CVE request: cronic - predictable temporary files" (number mark "U       cve-assign@m Apr 10   38/1324  " thread-indent "\"[oss-security] Re: CVE request: cronic - predictable temporary files\"\n") "<570986F2.5020308@vorlons.info>" ("<570986F2.5020308@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32264 invoked by uid 550); 10 Apr 2016 14:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32212 invoked from network); 10 Apr 2016 14:23:23 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <570986F2.5020308@vorlons.info>
Message-Id: <20160410142311.A459F336036@smtpvbsrv1.mitre.org>
Date: Sun, 10 Apr 2016 10:23:11 -0400 (EDT)
Subject: [oss-security] Re: CVE request: cronic - predictable temporary files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=820331
> 
> very predictable temporary files (like
> /tmp/cronic.out.$$) that depends only on PID:

> OUT=/tmp/cronic.out.$$
> ERR=/tmp/cronic.err.$$
> TRACE=/tmp/cronic.trace.$$

> "$@" >$OUT 2>$TRACE

Use CVE-2016-3992.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXCl6/AAoJEL54rhJi8gl5nCsP/RzD+Emxt2vl9hJ9ihPhOKuV
w3phB2guMZvZWQ0UFLQVzR7KfGQM84FLET9Fce0bW2Lb614U2XMjV+JXxQ/qklsg
y6ZlJh+tSkQyuJWdIzmWt4kJWpPFqF3S3Lu06+yc7iTg/clIX9trjwDTGMTNDewJ
F5qhrWDpAflz1KH6nmlbcRNsQC4fbJ0SUUCKOJEvAwIfn0x8fr9Z/iQGZ8odQ7rW
uqE8NXh6ERPZkzu3hKLLGdbachECDMK5NPACUnKbjrUZu+rAjhupFuFS12vQyAA8
oMAUZUApw7HT/34u2Wq+qijVnNjRKieOpuTdlksats9RB/smtm3JC4BTJVnpdm2E
4LiuoEm8sQOP4kaaxOduC9+CQlqU9Z9ZFfq92w55KPqAYL/8lEbeES2OFSPZxUOC
wGEaElcvbJQgATsm7P7tKknvCrl4onj4clI9ekbhf2ZRbLpM/VqH4Pp115cEH1ot
CKAAiWOWSZwiSREyxSymyLbWhjm+8F2R83j1ArF6HGSBa1A/2WH4zJKXpa9QLPQ0
7B3rO9SVQReg91FDwmIzOk5Ej6kKnBM7n5pi4EoIbLTOawQSWXPSdp+wy+VFN7qu
NsfFrK28Q22TtatkR6KgjwIztC/fXVNiFomObYy0v2orIUesX3BPtKQzfEr5wlOD
ZxbxbhEU0G3owq9goQo8
=NKUf
-----END PGP SIGNATURE-----
