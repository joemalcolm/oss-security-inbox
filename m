X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2505" "Sunday" "24" "April" "2016" "12:52:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160424165242.6CE3F332037@smtpvbsrv1.mitre.org>" "57" "[oss-security] Re: CVE Request: jq: stack exhaustion using jv_dump_term() function" nil nil nil "4" "2016042416:52:42" "[oss-security] Re: CVE Request: jq: stack exhaustion using jv_dump_term() function" (number mark "U       cve-assign@m Apr 24   57/2505  " thread-indent "\"[oss-security] Re: CVE Request: jq: stack exhaustion using jv_dump_term() function\"\n") "<CACn5sdTyH2a6dbw4JDvUGHK39AzhWNxfrTLpaftkjDYmQjAu9A@mail.gmail.com>" ("<CACn5sdTyH2a6dbw4JDvUGHK39AzhWNxfrTLpaftkjDYmQjAu9A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7402 invoked by uid 550); 24 Apr 2016 16:52:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7380 invoked from network); 24 Apr 2016 16:52:54 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdTyH2a6dbw4JDvUGHK39AzhWNxfrTLpaftkjDYmQjAu9A@mail.gmail.com>
Message-Id: <20160424165242.6CE3F332037@smtpvbsrv1.mitre.org>
Date: Sun, 24 Apr 2016 12:52:42 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: jq: stack exhaustion using jv_dump_term() function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A crash caused by stack exhaustion parsing a JSON was found. It affects, at
> least version 1.5 as well as the last git revision. Technical details and a
> reproducer are available here:
> 
> https://github.com/stedolan/jq/issues/1136

>> jq . qcufnzxcnp.json.4167733746247029131
>> 
>> Program received signal SIGSEGV, Segmentation fault.

>>> https://github.com/stedolan/jq/blob/master/README.md
>>> jq is a lightweight and flexible command-line JSON processor.

We do not feel that a stack-exhaustion attack against a command-line
program requires a CVE ID in all cases. A jq bug was discovered; the
question is whether it's a security bug. This depends on the existence
of a common use case in which an unattended process receives untrusted
JSON files, and (for example) the overall resource consumption is
substantially higher than what an attacker could achieve by submitting
a JSON file that is parsed without encountering any jq bugs.

Our understanding is that https://jqplay.org/ is an existence proof of
"unattended process receives untrusted JSON files." Also,
https://stedolan.github.io/jq/manual/ might imply that the . filter is
not expected to result in a lot of resource consumption (stack
exhaustion or anything else). So, a need for a CVE ID seems plausible;
however, we would like to have more information about security
relevance if anyone wants many CVE IDs for many different jq bugs
causing stack exhaustion.

Use CVE-2016-4074.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXHPkoAAoJEHb/MwWLVhi2klQP/0JXSWdl1OK3qZD/7Ze8TGyi
rbzXE7w0xk9/QPTjbvODOxDDIWOu1WKPbXLtk0Q3pMBbEIsSNB0gIF0uBpxA6jWa
i+faeokrPE2VH8cKd1Esvo7GJ0hbGxF2o2StNIkqoTPlV+Ycy13NEt9fgJ1KBf7K
kdmB9fd5yBLiP6Fbiob1jB7a/YSXIZ7QmtlrverLnrC2lNpKTIzMp2ena5wE5QBB
ebc0cvtW149ktlfz3axexPM/GVOAnIPLqCtDskDjgSD2BngPuFIfI4+isai+mPQS
6xRO4zJuZokKGLwIe2XuHCu3BSqHO5GXP2vgOy8JDEUaKejvUQlqdDpvqypa3CrN
pNAGz4BXrOrCuXQOIsVcHFjSjzauAIP5ttioSX6DEeGCSkhSGuLe7v62SvlEJCmP
clKRaXK0cTzYOneNiZncha8mUQpWpAe9q9DNutnQhIuA6d5Jx4wzXA8f8MmpUG5T
eO9df1RkNca7+PzNSgspBQTdqBKcDCVqJSY47/VIf9oZKPyzKUI0k2pDgyajwIDv
frelAoZ3CM2iPZdjJUY3EAn/CJV1rWMGFIUbCSDkyTshlP07V2cSbDj3KGySt0ZA
Tdtt3Pt2r4CbBn3rwLd1g5GOTW7Od54wxUTnSOaFikZo6oEVhmOyG3AGIBsdtbxM
mQMgvymwfziBQ5SeGM7D
=BV9n
-----END PGP SIGNATURE-----
