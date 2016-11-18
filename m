X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3021" "Thursday" "17" "November" "2016" "19:21:07" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<10d2a3813cbd44d29450eed87119277b@imshyb02.MITRE.ORG>" "64" "[oss-security] Re: CVE request: MyBB multiple vulnerabilities" nil nil nil "11" "2016111800:21:07" "[oss-security] Re: CVE request: MyBB multiple vulnerabilities" (number mark "U       cve-assign@m Nov 17   64/3021  " thread-indent "\"[oss-security] Re: CVE request: MyBB multiple vulnerabilities\"\n") "<20161110171551.GB22569@tunkki>" ("<20161110171551.GB22569@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13959 invoked by uid 550); 18 Nov 2016 00:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13932 invoked from network); 18 Nov 2016 00:21:19 -0000
From: <cve-assign@mitre.org>
To: <henri@nerv.fi>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161110171551.GB22569@tunkki>
Message-ID: <10d2a3813cbd44d29450eed87119277b@imshyb02.MITRE.ORG>
Date: Thu, 17 Nov 2016 19:21:07 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: MyBB multiple vulnerabilities

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Fixed in 1.8.6
> https://blog.mybb.com/2015/09/07/mybb-1-8-6-1-6-18-merge-system-1-8-6-release/

CVE-2015-8973 Medium Risk: Forum password bypass in xmlhttp.php
CVE-2015-8974 Low Risk: SQL Injection in Grouppromotions module (ACP)
CVE-2015-8975 Low Risk: Possible XSS Injection in the error handler
CVE-2015-8976 Low Risk: Possible XSS issues in old upgrade files
CVE-2015-8977 Low Risk: Possible Full Path Disclosure in publicly accessible error log files


> Fixed in 1.8.7
> https://blog.mybb.com/2016/03/11/mybb-1-8-7-merge-system-1-8-7-release/

CVE-2016-9402 Medium risk: Possible SQL Injection in moderation tool
CVE-2016-9403 Low risk: Missing permission check in newreply.php
CVE-2016-9404 Low risk: Possible XSS Injection on login
CVE-2016-9405 Low risk: Possible XSS Injection in member validation
CVE-2016-9406 Low risk: Possible XSS Injection in User CP
CVE-2016-9407 Low risk: Possible XSS Injection in Mod CP logs
CVE-2016-9408 Low risk: Possible XSS Injection when editing users in Mod CP
CVE-2016-9409 Low risk: Possible XSS Injection when pruning logs in ACP
CVE-2016-9410 Low risk: Possibility of retrieving database details through templates
CVE-2016-9411 Low risk: Disclosure of ACP path when sending mails from ACP
CVE-2016-9412 Low risk: Low adminsid & sid entropy
CVE-2016-9413 Low risk: Clickjacking in ACP
CVE-2016-9414 Low risk: Missing directory listing protection in upload directories


> Fixed in 1.8.8
> https://blog.mybb.com/2016/10/17/mybb-1-8-8-merge-system-1-8-8-release/

CVE-2016-9415 Medium risk: Style import CSS overwrite on Windows servers
CVE-2016-9416 Medium risk: SQL Injection in the users data handler
CVE-2016-9417 Medium risk: SSRF attack in fetch_remote_file()
CVE-2016-9418 Medium risk: Possible short name access to ACP backups on Windows servers
CVE-2016-9419 Low risk: Stored XSS in the ACP
CVE-2016-9420 Low risk: Loose comparison false positives
CVE-2016-9421 Low risk: Possible XSS injection in ACP users module

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYLkkZAAoJEHb/MwWLVhi2lXYP/30k+COm7wVbzUrRw6eEQ780
osNfSo7+y6m8Xq/wn9NsdaAkPfq8ReAFm+fJXyPFH3Go/PWgzF/JNDmS5F58IMyT
JtkbLLDvZTjaIHMnMD5gWUVhxPX6CgxY5ISgTjraTKqGULlYALv08DRKbsLKVaCp
LOVO7mE46wIGk4BIhhOaLOGrn5a+zDsLy24EHzFAUkqm98RscOoGLSf4j4IHiZ5/
pREAbb1xDBibBEFG9d/9jXMOLYPQVwhBhANAISmBd0wePYQFitto17ZjIA4bWoEN
OuK/CG3o+wZr6p+wdfpKZ10Rep5C37Hts6T0leXYqVecerF5KkKwhPyGsF5jp6My
TgyLB84jepVWRwtSHvgpbL1Z6uCy38f16u6rhXdOMAcOKTrJDu8jnJzzb8RCs0oW
IUTGIIFeO7RGbTKqNcz1ALNYpmmrEJvF3BYQw+l5d/Xko0k2pYrjFwJU9EMk0kyk
Z0QrAOfXIkPDfDtGrrgwgMdZ7u3QpipadnZqsRRXSf2x5xOCxMMe+Ys5JUiHvfW2
d9VftjQeCiWcn5m5Tx8KzvkEKZjDq2rr6Zq3kplva4mHWGXV1UJlX6lTwbLIHjd7
H9WTdklCNLe3H95dTgoO41vlV6hDruGHAq3TwZgfYJHUE4vikFO7eroS8XyYzuOP
WPLCAtP/smMfqPIgmSPh
=RfoI
-----END PGP SIGNATURE-----
