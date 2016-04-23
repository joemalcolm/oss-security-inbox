X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2709" "Saturday" "23" "April" "2016" "19:53:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160423235303.4DCBE6C0546@smtpvmsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF" nil nil nil "4" "2016042323:53:03" "[oss-security] Re: CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF" (number mark "U       cve-assign@m Apr 23   60/2709  " thread-indent "\"[oss-security] Re: CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF\"\n") "<20160423150350.GA28424@eldamar.local>" ("<20160423150350.GA28424@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14015 invoked by uid 550); 23 Apr 2016 23:53:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13994 invoked from network); 23 Apr 2016 23:53:15 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160423150350.GA28424@eldamar.local>
Message-Id: <20160423235303.4DCBE6C0546@smtpvmsrv1.mitre.org>
Date: Sat, 23 Apr 2016 19:53:03 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/roundcube/roundcubemail/wiki/Changelog
> https://github.com/roundcube/roundcubemail/releases

> Fix XSS issue in SVG images handling (#4949):
> https://github.com/roundcube/roundcubemail/issues/4949
> https://github.com/roundcube/roundcubemail/commit/40d7342dd9c9bd2a1d613edc848ed95a4d71aa18
> https://github.com/roundcube/roundcubemail/commit/7bbefdb63b12e2344cf1cb87aeb6e3933b4063e0

Use CVE-2015-8864 for the issue that was fixed by these commits. Use
CVE-2016-4068 for the remaining SVG XSS issues that were not fixed
(i.e., the SVG XSS issues that remain present in versions 1.0.9,
1.1.5, and 1.2-rc), as described in the
https://github.com/roundcube/roundcubemail/commit/40d7342dd9c9bd2a1d613edc848ed95a4d71aa18#commitcomment-15294218
comment:

   thomascube commented on 40d7342 Jan 6, 2016

   Good start! Removing script nodes, however, is just the beginning.
   XSS code can also be in node attributes like onclick, onmouseover,
   href="javascript:, etc. or even in CSS url() as we learned with
   HTML messages.

   So traversing the entire DOM is probably necessary to provide
   protection that goes beyond the one example we received.


> Protect download urls against CSRF using unique request tokens (#4957):
> https://github.com/roundcube/roundcubemail/issues/4957
> https://github.com/roundcube/roundcubemail/commit/4a408843b0ef816daf70a472a02b78cd6073a4d5
> https://github.com/roundcube/roundcubemail/commit/699af1e5206ed9114322adaa3c25c1c969640a53

Use CVE-2016-4069. This is not a typical type of impact associated
with CSRF; however, it is still probably best to categorize this as a
CSRF issue, not an SSRF issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXHAorAAoJEHb/MwWLVhi2yNYP/iihOBpJh4D9q5H+LtOinltO
kuiy+mRQ3LhCNOfNtL7j5oI87UnZfWFua61wxPf3ce8q05ElU0pnrALVtM3ZIewO
9Mko0i7TuVysb/0Kmr522BXKbkkumSmxmapOV83rsk2VSpVrMFXNmhPDwhQUiQ72
tJr/kCDj8yK66zRse2bO2wzmpLyAHxWaJcXb76dGuaDAyBO/PsJ+Hg32qCNTuZaf
lkhhcKIVYxVWf5zLfID9X2OQgD511DOeWJUJAKIt3LhnYfZa9ho7HYuZSAHcjoox
Vc1zz46tS8njkzJcUpBm6RhfN5p9PbXOcxo8FCC2HBAculk4qILAvPvYZInwetEx
CEpU5K9jvV1SEgwngwxVLPUf+V7o5KhBy0305W8GpFpASjOYksAi3Aho1Q0HKjd6
BOKR3+w8t+Lr+dgO6/s8r+321nLfIfEslcVky+oPDyLcgWQ5lKwCiPkJDW0BhY6K
WK4t5sSyQ+L/+hhWyX1WvRT+pR+J82pS4J+vDf9xPH41ejw7GUcMIsAXyxKFTJD4
yBphN1hmQwAdOn6DOoQeT0q22hXMFjrpy2mNSpJO7/mvC1Cezh4H9mOieo+m1/WR
rEQMgU0YvLbLU+QGJs70ffu7GbctyEy0Hcqro3PypseYazXBXbco3oeA5YoXpO4w
CnimPVkwnLWULwjvomSM
=bl7U
-----END PGP SIGNATURE-----
