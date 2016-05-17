X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1879" "Tuesday" "17" "May" "2016" "11:52:28" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160517155228.E08766C0624@smtpvmsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)" nil nil nil "5" "2016051715:52:28" "[oss-security] Re: CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)" (number mark "U       cve-assign@m May 17   45/1879  " thread-indent "\"[oss-security] Re: CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)\"\n") "<20160516075324.GA10354@eldamar.local>" ("<20160516075324.GA10354@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5758 invoked by uid 550); 17 May 2016 15:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5738 invoked from network); 17 May 2016 15:52:41 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160516075324.GA10354@eldamar.local>
Message-Id: <20160517155228.E08766C0624@smtpvmsrv1.mitre.org>
Date: Tue, 17 May 2016 11:52:28 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> CVE-2015-7674, an integer overflow flaw in the pixops_scale_nearest
> function, was fixed by
> 
> https://git.gnome.org/browse/gdk-pixbuf/commit/?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa
> 
> There is another commit in the gdk-pixbuf repository to fix overflows
> in the pixops_composite_nearest, pixops_composite_color_nearest and
> pixops_process functions:
> 
> https://git.gnome.org/browse/gdk-pixbuf/commit/?id=dbfe8f70471864818bf458a39c8a99640895bd22
> 
> Can you assign an additional CVE for this since the scope for
> CVE-2015-7674 was for the pixops_scale_nearest function?
> 
> The two commits were not fixed in
> the same release, the initial one resulting in CVE-2015-7674 is
> contained in 2.32.1, whereas the second commit came later in 2.33.1.

Use CVE-2015-8875 for dbfe8f70471864818bf458a39c8a99640895bd22.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXOz25AAoJEHb/MwWLVhi2uzQQAJLasmM6bKZ9byBNHW92u63I
V8zfQ1vKPHJsQUJ+/ydbfmlyxeClfUUPYK37NLFzMtlhZjuRte8FPaYoYjayahSn
sfGfBsw/Vtpx14t3AUofZx+NAnr37EOD/N1iXHnBKdO7YZtBkIBfB/0ts0uxnY6f
7AYMChqNpqFI9gZdCAJjao0spCe11D203QLUygDGFZZ+/+bbEfIJZK4KZGisR0tY
n8MZln8+QstCnuG/5/6MPa976dMe3a0bNjGuMg399qP9iDCHmGnfAmoKh68YQFMT
NO6Q1J6TPwLKT+xRNfTzdwmZFYW2m59oj1BSZ/jvWbl/8lOn+oukBpQElwuvB6jz
rwJWU11gMwPXPEMyEnKW9X2U3zMYVcGzPD20/j4rJJsL2vA78iCrgF6owGYZPAji
mFFm+GovverJqJWx452UeUdsBbEYc/A5hlQN6oa0780QLas6Wo3QZdCyuPpDWnu+
eh/U2qVk4+BGLQiZb55dlBqmVJkW7RktqUnhFYgDC7kUbR3hpprKKDj5NnSznuYG
Jzs1LBV6h3wb4LBcILU4d+z1OcSRFYL334XHGEurtML08GTAhuqMhZT3o/YnFeut
EStuqTBEWmQd0IEsxYhC6sP1w4+rfIfEd0X94vi6qqBettbmNguTgAgiy/SLNISl
FshmJwoViYA7W+UAo1fz
=rGoH
-----END PGP SIGNATURE-----
