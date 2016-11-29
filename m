X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2337" "Tuesday" "29" "November" "2016" "17:29:39" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d2199a0a0afa4844b7add509b108329c@imshyb02.MITRE.ORG>" "54" "[oss-security] Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045" nil nil nil "11" "2016112922:29:39" "[oss-security] Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045" (number mark "U       cve-assign@m Nov 29   54/2337  " thread-indent "\"[oss-security] Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045\"\n") "<20160927012359.GA30247@sin.redhat.com>" ("<20160927012359.GA30247@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3812 invoked by uid 550); 29 Nov 2016 22:30:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3791 invoked from network); 29 Nov 2016 22:30:06 -0000
From: <cve-assign@mitre.org>
To: <dmoppert@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20160927012359.GA30247@sin.redhat.com>
Message-ID: <d2199a0a0afa4844b7add509b108329c@imshyb02.MITRE.ORG>
Date: Tue, 29 Nov 2016 17:29:39 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1382202

> The reproducer [of https://github.com/uclouvain/openjpeg/issues/725] happens to tickle
> a flaw in a patch for CVE-2013-6045 that was posted here back when:
> 
> http://seclists.org/oss-sec/2013/q4/412
> 
> segfault-1.patch uses:
> 
> +                     tilec->data = (int*) opj_aligned_malloc((comp0size+3) * sizeof(int));
> 
> which should have used compcsize instead of comp0size.
> 
> Upstream never included this patch - deeper work went into eliminating this and
> other issues in openjpeg-1.5.2.  The patch that addresses this particular issue
> seems to be 69cd4f92 (hunk starting /* testcase 1336.pdf.asan.47.376 */).
> 
> https://github.com/uclouvain/openjpeg/commit/69cd4f92
> https://github.com/uclouvain/openjpeg/issues/297
> 
> This hasn't been an issue in upstream openjpeg releases for a long time ...
> but there are LTS distributions around still shipping 1.5.1 (or 1.3) with the
> patches from here applied.  Those should preferably upgrade to 1.5.2:  changing
> comp0size to compcsize eliminates this particular crash ...

Use CVE-2016-9675 for this vulnerability, stated to have a "crash or
possible code execution" impact, that results from mistakenly using
the comp0size variable (instead of compcsize).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYPgC5AAoJEHb/MwWLVhi2hbcP/1RHpatrKyMXBx7glnwHES3y
RzIKPd/DHgpd4DoXVjHCv9EFnkLbcGT1r9efX1GZKxi5SKDRtdPr8X6430mYk5Pu
VilIA+8npB3rfaOncVLGJ24jrlcxrp2UF+w+5soWa442PEtd45UtY2WxLcXsIdtq
z3cmoVcYcCyWan5aQjFBJEssNk7c5vglt/6nxW2jrmZpOqMYcPt9XlcfbZRk8T19
501bqoURLLhy5YL9+jKQdUtPhbaf+JSVqyHxOqOg+xrVd1AqIaWvJ7evVRaVYlWB
+agVEVb2uviA6UB9OQKPK0UkHRRYWW4uvCnQS6zOvCs4U6PdEcHZMXtdp8LrRQI4
F28az8rxpfnU9aHE3Syu6zlqy27ZbwLorLEL43FjeduhMxbxaPiatU6lubVawZf3
UV0YyEx7hSMQ/xFTG8HtJ1cwZf4hLqDK0idABBEW6PNR1eyFoHbMG/tMOUX439fy
qyvSAJ69YS4ftXTihKWMNOA7Z0kOgN87rZMU3A7Uh9Boy7y3IobmrRMaD2VdE3aW
OF4Sa2dLyHV+/LKmC3n/o60dGVJDyNALhdGNtnG8MoQVwFhhr7Db4LPpLSWPKc2I
3LgTaLbxdjctvZLU/aWjF/YEaGDeWHtsWfP0XnBEceaGIxl5tddhIhfjTN14Rb89
Y6Lf6hQUSq1ZoR8Rpkc+
=riCJ
-----END PGP SIGNATURE-----
