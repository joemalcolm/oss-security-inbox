X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2161" "Tuesday" "14" "April" "2015" "03:20:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150414072059.ECDD033205D@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: discourage \"CVE only\" use of (linux-)distros" nil nil nil "4" "2015041407:20:59" "[oss-security] Re: discourage \"CVE only\" use of (linux-)distros" (number mark "        cve-assign@m Apr 14   50/2161  " thread-indent "\"[oss-security] Re: discourage \"CVE only\" use of (linux-)distros\"\n") "<20150413144114.GA29241@openwall.com>" ("<20150413144114.GA29241@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17506 invoked by uid 550); 14 Apr 2015 07:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16355 invoked from network); 14 Apr 2015 07:21:11 -0000
In-Reply-To: <20150413144114.GA29241@openwall.com>
Message-Id: <20150414072059.ECDD033205D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 14 Apr 2015 03:20:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: discourage "CVE only" use of (linux-)distros
To: solar@openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> if MITRE can assign them without obtaining detail

If the person is already very familiar with what types of issues
are included in CVE, and what requests should go to MITRE
rather than to the vendor, then we are usually most concerned
with counting vulnerabilities. In other words, minimum
information for a report about one open-source product could be:

 - is part of the report about a vulnerability affecting one
   version, and another part of the report about a vulnerability
   affecting a different version?

 - is part of the report about a vulnerability that became public
   at one point in time, and another part of the report about a
   vulnerability that became public at a different point in time,
   such that customers may realistically have an installation that
   already has a fix for only the first part?

 - is part of the report about a vulnerability discovered by one
   person/organization, and another part of the report about a
   vulnerability discovered by a different person/organization?

 - is there any reasonable interpretation that part of the report
   is about one "vulnerability type" and another part of the report
   is about a different "vulnerability type"? (We know that there
   is no possible definition of "vulnerability type" that makes
   sense for every conceivable security-research effort that may be
   occurring now or in the future.)

"already very familiar" isn't the common case, though.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVLL9UAAoJEKllVAevmvmssGMH/iWs83qn0iLz8nV4UgsAiAhG
LwflwpEO26x5bFKkSECcfi55JPZKnN4z/4+wfFakENesLeNTEu9blb6rEJcl6KbG
o/R7TUE+uA/w8VXN91U8v5E04EQXgGuSaAFs+Zn8OwpSE2NHlmxZAQVGBFR6klSi
nSnTFDGj9fkh6BUsB6yE2j9QDtw2S/TTwGYnjnoEWDXCEMQCwpKJBwbv+031CiME
09n6D7puQQ6vNv3ycYvvckUNIfEAU12hF+bxRf+6niQhpve551cccrOQZ/CdFYG8
RxMRmP5B7P5494DyyuMBFPmxRMTfo815SY5AadWhp05Y21r+pMePGPMzeuDjUpA=
=L6eh
-----END PGP SIGNATURE-----
