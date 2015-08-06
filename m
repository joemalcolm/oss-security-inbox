X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4211" "Thursday" "6" "August" "2015" "16:23:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150806202319.542C06C0129@smtpvmsrv1.mitre.org>" "98" "[oss-security] Re: CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution." nil nil nil "8" "2015080620:23:19" "[oss-security] Re: CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution." (number mark "        cve-assign@m Aug  6   98/4211  " thread-indent "\"[oss-security] Re: CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution.\"\n") "<55C27568.8070503@xiphosresearch.co.uk>" ("<55C27568.8070503@xiphosresearch.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32729 invoked by uid 550); 6 Aug 2015 20:23:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32706 invoked from network); 6 Aug 2015 20:23:31 -0000
In-Reply-To: <55C27568.8070503@xiphosresearch.co.uk>
Message-Id: <20150806202319.542C06C0129@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  6 Aug 2015 16:23:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution.
To: darren.martyn@xiphosresearch.co.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I am requesting a CVE to be issued for the SuiteCRM product. There
> exists a race condition in the image upload verification component which
> leads to a race condition wherein an uploaded piece of PHP code exists
> on disc temporarily before being deleted, which can be leveraged to gain
> code execution. This vulnerability was introduced in version 7.2.2, as a
> patch to fix a prior code execution issue found in 7.2.1.
> 
> Github issue: https://github.com/salesagility/SuiteCRM/issues/333
> https://github.com/salesagility/SuiteCRM/commit/b1b3fd61c7697ad2073cd253d31c9462929e7bb5

> https://github.com/XiphosResearch/exploits/tree/master/suiteshell
> 
> SuiteCRM suffers a post-authentication shell upload vulnerability in
> its "Upload Company Logo" functionality, wherin it uses a blacklist in
> an attempt to prevent the upload of executable code. Furthermore, its
> "check for valid image" test leaves uploaded files in a tempdir that
> is web accessible. It is possible to bypass the blacklist to upload
> executable PHP code with the "phtml" extension to this temporary
> directory and thus gain code execution under the context of the
> webserver user

Use CVE-2015-5946 for the original incomplete blacklist vulnerability
in which an authenticated attacker could, at any time, upload an
executable file (such as a phtml file) to a location from which the
web server serves files.

The blacklist was:

        'php', 'php3', 'php4', 'php5', 'pl', 'cgi', 'py',
        'asp', 'cfm', 'js', 'vbs', 'html', 'htm' 


Use CVE-2015-5947 for the other original issue in which the:

  if(!verify_uploaded_image

code block does not attempt to restrict access after an "unverified"
file is detected. CVE-2015-5946 and CVE-2015-5947 seem to be
independently relevant, although possibly that depends on the "Found
{$m[0]} in $path, not allowing upload" code.


> The Post-Auth RCE allegedly "fixed" in Commit b1b3fd6 is not fixed.
> 
> The fix simply makes the bug slightly harder to exploit, turning it
> from a straight-shot file upload bug into a lovely race condition.
> 
> Do note, this fix could lead to the file being there for a short
> period of time leading to a race condition wherin the attacker simply
> has to beat the unlink to the punch and spawn a reverse shell/drop
> further malicious files/whatever.

Use CVE-2015-5948 for the race condition that exists because of the
incomplete fix for CVE-2015-5947.


> vulnerability in
> its "Upload Company Logo" functionality, wherin it uses a blacklist in
> an attempt to prevent the upload of executable code.

There is no CVE ID specifically for the concept of using blacklisting
rather than whitelisting. In practice, a large blacklist can be
constructed that results in a negligible chance that an allowed file
would be executable on a customer system with a realistic
configuration. This may be considered an unrecommended or overly risky
design, but the issue is not included in CVE.

> its
> "check for valid image" test leaves uploaded files in a tempdir that
> is web accessible.

There is no CVE ID specifically for the concept of using a temporary
directory that is web accessible. The same directory could be used,
without the race condition, in a number of ways -- possibly including
renaming files before initial storage, or some type of access control
for the directory. A web-accessible temporary directory is sometimes
unavoidable if the goal is to support installation in the widest
possible set of web-hosting environments.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVw8GqAAoJEKllVAevmvmsIMoH/ibuwat8qEV1KMrGg/p5E3H8
uZNJnUWTqfkasLAT2UY/QHtmb1NAwBRAPHH39ex0dM2i2Kja4SkqSEGBO9fdGYfI
Li6Bgc5EuwD5v4Al89IJMe4paiOsRtXyT/AKcVFtKIqNkCvTQs60p0b7CrQVQmzC
3rOOch7xFm8qMV3Dwda0+DPtjFANTqdHcUpnmRYPtZORk3YGgIXhT1gA/XeHbBjH
/lmIcK98SLOr4WHHPAgRpZ6HRmclQr0lvQQqx96dxZEZwtNoEcG/ru8piEstej7c
nHU2eIddiuLo/ClSazb+ZBkBkFtXcynkJjosnYgMOCY47sUK6igwZvLTV2HbgVQ=
=fz7X
-----END PGP SIGNATURE-----
