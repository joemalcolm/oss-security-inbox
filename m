X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3166" "Tuesday" "14" "June" "2016" "22:40:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160615024015.E24396C0201@smtpvmsrv1.mitre.org>" "69" "[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)" "^Cc:" nil nil "6" "2016061502:40:15" "[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)" (number mark "        cve-assign@m Jun 14   69/3166  " thread-indent "\"[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)\"\n") "<b0d573ff-aa3e-0e02-c385-9d75c43ae141@uni-konstanz.de>" ("<b0d573ff-aa3e-0e02-c385-9d75c43ae141@uni-konstanz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5974 invoked by uid 550); 15 Jun 2016 02:40:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5940 invoked from network); 15 Jun 2016 02:40:27 -0000
In-Reply-To: <b0d573ff-aa3e-0e02-c385-9d75c43ae141@uni-konstanz.de>
Message-Id: <20160615024015.E24396C0201@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 14 Jun 2016 22:40:15 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)
To: jens.erat@uni-konstanz.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

We have a few questions about this. First, several of the
https://sogo.nu/bugs URLs provide an "Access Denied" response and we
were wondering whether that was intentional. MITRE has no role in
determining the list charter, but
http://oss-security.openwall.org/wiki/mailing-lists/oss-security says
"List Content Guidelines ... Any security issues that you post to
oss-security should be either already public or to be made public by
your posting."

When required, CVE IDs can be assigned based on commits in conjunction
with non-public bug reports; this potentially addresses all of the
cases except for SOGo #3670, which is apparently not yet public at
all.

Also, your message didn't mention whether you are making the CVE
request on behalf of the Inverse team, or whether you are noting
issues that are security-related from your own perspective.

Going through the list of public issues:

SOGo #3510 - is the ultimate case of the entire issue summarized by
"copies the attachment (into memcached?) and then eliminates the copy
in the sogod. The memcached copy stays forever/until the SOGo service
is restarted"? Or is there a second implementation error? It seems
that part of the issue, but not all of it, is a feature request (SOGo
#3135) suggesting that SOGo should have size limits because
configuring limits at the level of the web server and SMTP server
disrupts the user experience.

SOGo #3695 is listed twice but the second one has 3696 in the URL. We
are guessing that the second "SOGo #3695" is just a "SOGo #3696" typo.
More importantly, are there two distinct code problems? Or is it a
single code problem that is reachable with different attack vectors?

SOGo #3718 has two identical
"Issue: https://sogo.nu/bugs/view.php?id=3718" lines. Was one of them
supposed to be a different URL?

SOGo #2598 - we are able to assign CVE-2014 IDs. Does "SOGo #2598:
Script injection in calendar title ... Reporter: Jens Erat" mean that
your own discovery was only about the calendar title, and that
additional attack vectors ("contacts module" and "CSS dialogs") were
follow-on discoveries by the Inverse team?

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXYL+JAAoJEHb/MwWLVhi2PTsP/iNm7/+Zm9i08VM/T8HlRltR
F38rhWFOg9tZ+zQcATWAYINlsTOGBAUpF7N/J2zVnxiY1ZyRTPl5KApqi0aN9d+H
hlUMXl0mxxjxWLFEbOfkgZhiqKr+sE1S2KQ9aBaXV86DF1BEBVE0NiMzkgp+vipj
s13AIn8CtcZbHpKYOwgfYqHdOEX0vgs8ap/WQL/JXYNKk0KXbF33DFXFui3vn3n4
BkRDfb6MO1+DdA1yePtaTArY16RncvRwpWnbYhTT62nIQdQVUZ2digeGgD+Ob7/N
ZNLt+MhfKXVFe5GuSl7J7mW4G22FSsAlvTUbt56g1ZUcz8HnrMP6IKxQPmELRYs+
MZUiuoyHvsD274VjlCDLdn95vF7kLBIkTRDGLy4RNrDbvrZ/Yj0cG/qt5IK3AUL3
fA29LlViMzjdUwH73IgC/Elt6+m4xJeECn/vBo5tjXzWv/Cg938oWZarXGm9w0XC
100oSk9lbNT8dmWq04m90C0lg6h5c24v05vjlBmqnXQZbroBo0GN6ac6Z1quyAhS
ncvbH0H4s4H9NIADedI8q1gzYTObgE3sa6AZTBt4xTzC3S3XuXZTupga6NCaXGJ1
IlL51OwN4mLez1AmWe12iIFrAPDmCfwPA+QUQMyXsL+TT6WCo4oaCn7jOV4+Uieq
tZ6r8wbwS5WPFqI+2lHU
=EtEt
-----END PGP SIGNATURE-----
