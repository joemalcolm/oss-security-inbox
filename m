X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3419" "Tuesday" "18" "October" "2016" "12:34:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161018163436.85A436C4EC1@smtpvmsrv1.mitre.org>" "74" "[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "10" "2016101816:34:36" "[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       cve-assign@m Oct 18   74/3419  " thread-indent "\"[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12\"\n") "<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>" ("<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25694 invoked by uid 550); 18 Oct 2016 16:34:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25662 invoked from network); 18 Oct 2016 16:34:48 -0000
From: cve-assign@mitre.org
To: kaplanlior@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
Message-Id: <20161018163436.85A436C4EC1@smtpvmsrv1.mitre.org>
Date: Tue, 18 Oct 2016 12:34:36 -0400 (EDT)
Subject: [oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Please assign a CVE for the following issue:
> 
> Bug #73147    Use After Free in unserialize()
> https://bugs.php.net/bug.php?id=73147
> http://git.php.net/?p=php-src.git;a=commit;h=0e6fe3a4c96be2d3e88389a5776f878021b4c59f

Can you clarify what should be the scope of this CVE?
zend_unset_property doesn't exist at all in PHP 7.0.11. The
0e6fe3a4c96be2d3e88389a5776f878021b4c59f commit adds
zend_unset_property for PHP 7.0.12, and arranges for
zend_unset_property to be called only from
"ZEND_METHOD(CURLFile, __wakeup)" in ext/curl/curl_file.c.

We're not sure whether that affects anything outside of the CURLFile
implementation. However, 73147 discusses other concerns such as "The
similar bug can be also triggered via Exception::__toString with
DateInterval::__wakeup" and "The problem is that every __wakeup that
modifies any property would produce the same problem."

There seems to be a related code change between 7.0.11 and 7.0.12 that
arranges for additional calls to zend_unset_property:

  http://git.php.net/?p=php-src.git;a=blobdiff;f=Zend/zend_exceptions.c;h=f21968733581a3cb672d039bec16ce6f17a93db9;hp=95d18f45fbea8808c00975b5df4619d5d6745ab0;hb=689a9b8def07875641b3132a82c701fb7acb676c;hpb=4165d976066129000d947ffa3be73f91e9867635

So, some of the options include:

1. 0e6fe3a4c96be2d3e88389a5776f878021b4c59f is a complete security
patch that fixes everything discussed in 73147, including the "other
concerns" mentioned above.

2. 0e6fe3a4c96be2d3e88389a5776f878021b4c59f fixes only the CURLFile
implementation. The "other concerns" mentioned above are
vulnerabilities that still exist in 7.0.12.

3. The combination of 0e6fe3a4c96be2d3e88389a5776f878021b4c59f and the
above Zend/zend_exceptions.c diff is a complete security patch that
fixes everything discussed in 73147, including the "other concerns"
mentioned above. There only needs to be one CVE ID associated with
this complete security patch.

4. The combination of 0e6fe3a4c96be2d3e88389a5776f878021b4c59f and the
above Zend/zend_exceptions.c diff is a complete security patch that
fixes everything discussed in 73147, including the "other concerns"
mentioned above. There should be one CVE ID for the security fix to
the CURLFile implementation, and a separate CVE ID for the security
fix found in Zend/zend_exceptions.c.

Which of the above (1 through 4) is correct and/or preferred?

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYBk6wAAoJEHb/MwWLVhi2Yo8QAKuttCiRlpUzKx0qxM5tOGyb
NkmqUkuN00zgavqyeBrPPM0WnzaF0VKdGS/0rW6ExBog6gbhgl1hUSIzug4PcnlX
Nk2acUlS21JmMFXroeKFQh5IvEvsvjEWwmpogopyoNv7c+Asal+F8BFP1DiVKR3a
g3Iv/tqjpIqh87qVESZSce/u6u44v4wd6V4ouTFe9mYiUQSPMkssTjRMjMwulVlp
A17ddOUZ06qubRpu3S6eBzDLtLkOuEMpFKxxYssEl+zoa0ac1Aq9HqkNoo632wSR
mHeB9yZ5tpQ+cbOwPZ30GoQW2JkrtRcj2UpdnTAl9JoFgpGa8xVl7DR9bQCe2XMB
OFfRx9+x1TTJZGQ+EppmmNA/kpskHSZE1AeoeZj4lD7gvQjHUJcmjtkrSik9Dt86
dinb2KiiNeedyTH3TfBcmbIKU9ub6ztsf3Rl1ODcsOb//5ru0vTihLPGw6icoBcG
jYN61oXHyNRLfwQRdXoSEciLpDkiPVYf50B83XXOQGUMA68oNV+Ns/lSInxh33zU
FKR1ePK/cBjr6D+/sV32tre1IPvHATh/uB1ECP8H4NvRixFqtvy64a0xCsd5WJB7
sOq9wAH5Q6ebiShuncSS35F+47ILMdiIu7hT8F6gVQvGccnPMS6DgldGeb0RS56I
5haHYZHlQuvZEF8ZtfhR
=o6SF
-----END PGP SIGNATURE-----
