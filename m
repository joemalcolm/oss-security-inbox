X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4087" "Saturday" "9" "July" "2016" "11:27:33" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160709152733.28D676C1D52@smtpvmsrv1.mitre.org>" "98" "[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)" nil nil nil "7" "2016070915:27:33" "[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)" (number mark "U       cve-assign@m Jul  9   98/4087  " thread-indent "\"[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)\"\n") "<f1a94b45-2ea5-8943-b676-c07456992798@uni-konstanz.de>" ("<f1a94b45-2ea5-8943-b676-c07456992798@uni-konstanz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3383 invoked by uid 550); 9 Jul 2016 15:27:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3359 invoked from network); 9 Jul 2016 15:27:44 -0000
From: cve-assign@mitre.org
To: jens.erat@uni-konstanz.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <f1a94b45-2ea5-8943-b676-c07456992798@uni-konstanz.de>
Message-Id: <20160709152733.28D676C1D52@smtpvmsrv1.mitre.org>
Date: Sat,  9 Jul 2016 11:27:33 -0400 (EDT)
Subject: [oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> SOGo #3510:  DOS attack through uploading malicious attachments
> Fix:         http://github.com/inverse-inc/sogo/commit/32bb1456e23a32c7f45079c3985bf732dd0d276d
> Issue:       https://sogo.nu/bugs/view.php?id=3510

>> 1. Create a large file, for example `dd if=/dev/zero of=/tmp/1GB bs=1M count=1000`
>> 2. Open new mail in SOGo, try to attach large file
>> 3. If attachment fails, some memory gets freed, but not all of it
>> 4. Repeat 1-3 until server crashes
 
> The issues was resolved by limiting the upload size ...
> 
> Further investigation showed that not memcached was the issue but
> temporary files kept around

Use CVE-2016-6188.


> SOGo #3695:  Private information leakage through ics/XML feeds when restricted to "View the Date & Time" 
> Fix SOGo v2: https://github.com/inverse-inc/sogo/commit/717f45f640a2866b76a8984139391fae64339225
> Fix SOGo v3: https://github.com/inverse-inc/sogo/commit/875a4aca3218340fd4d3141950c82c2ff45b343d
> Issue:       https://sogo.nu/bugs/view.php?id=3695

> 1. Not all private information removed for the public free/busy view

>> I was able to observe following fields containing critical information:
>> 
>> - ORGANIZER (who invited the calendar owner?)
>> - X-ALT-DESC (Outlook-specific extended copy of the description?) 

Use CVE-2016-6189.


> SOGo #3696:  Meta information can be derived from UID/DTSTAMP attributes though
> "View the Date & Time" restricted access Backend Calendar
> Fix SOGo v2: https://github.com/inverse-inc/sogo/commit/717f45f640a2866b76a8984139391fae64339225
> Fix SOGo v3: https://github.com/inverse-inc/sogo/commit/875a4aca3218340fd4d3141950c82c2ff45b343d
> Issue:       https://sogo.nu/bugs/view.php?id=3696

> 2. It was possible to join appointments based on the UID of the
>    public free/busy view from different users, to know who has
>    appointments with whom

>> one can derive common appointments between other people

Use CVE-2016-6190.


> SOGo #3718:  Persistent Cross-Site Scripting in calendar
> Issue:       https://sogo.nu/bugs/view.php?id=3718
> Fix:         http://github.com/inverse-inc/sogo/commit/64ce3c9c22fd9a28caabf11e76216cd53d0245aa

>> When creating a calendar entry containing script code

Use CVE-2016-6191.


> SOGo #2598:  Script injection in calendar title
> Fixes:       - https://github.com/inverse-inc/sogo/commit/1a7fc2a0e90a19dfb1fce292ae5ff53aa513ade9
>              - https://github.com/inverse-inc/sogo/commit/80a09407652ec04e8c9fb6cb48e1029e69a15765
>              - https://github.com/inverse-inc/sogo/commit/3a5e44e7eb8b390b67a8f8a83030b49606956501
>              - https://github.com/inverse-inc/sogo/commit/c94595ea7f0f843c2d7abf25df039b2bbe707625
> Issue:       https://sogo.nu/bugs/view.php?id=2598
> 
> The (now public) issue log says I realized the issue also exists with contacts

>> Add injection code, for example in the "Display" name field

Use CVE-2014-9905 for the XSS issues in both the calendar title and
the contacts module.


We cannot yet send a CVE ID here for the non-public issue #3670.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXgRd2AAoJEHb/MwWLVhi2A5wP/j6sHW/jtA04EIw4E0KiQRFt
wI9QOZ1BdyptWssGcq0r5FV8p1sdVsjiFn607Dj8uVXjf1Txpai7/Z7Dpl3Ssejh
LXdABo+TDnCM49n0CKyQUzSF+HfaUoU2HRar+48pB1KqYx+hahE4TVZ+14L9etvg
UMJzkeu/cEzS8vh6G9VFp0vEOAhWuhcfKqBVrMjU2hFSCHLJVrvduO05uvMlJ0fJ
B5nLcAR6OCiFcqZ+ttHtxOCSZD96bpogBAkxCMsl7rz6iZpwqMdhJrh+8wf5cIfn
T2v+5fPRiM0/rm0NCjI8bWd87pI7ZWr+FNbuqwkPeGwHtYpwrMryfMaiMmqdSf+V
rxaKOsYwh5vr6IddVBQAQF+OmVBj71wfsydl71HvZdp4vLCZcr8EgpaQPFjltC//
2EEsQ7dsfJIGY9GfarYPVuwLN2psqiUkf1x1KvEPzcSFJn+w0LLx2qxeGwFc3X0m
11MYp+v0C1LVmYwaf+vNrnMf537sN+K8s6pN80Hf+t7lB3hEmilyeaPoXWxOyF8s
t3hAJ6isrhTZ10xqX6nFz1I69piNp4IEJQ7SgbXJoI8BJEDucYC99G/VBaB2j3WA
JdXI5I1fZZ/rTPT3EcBrM8psMWJmOGNUBnZmJfFpalIfkrD9OqKkvtovNm+EF/we
XHadO9HsP5kU7/eTgBEf
=Uq/q
-----END PGP SIGNATURE-----
