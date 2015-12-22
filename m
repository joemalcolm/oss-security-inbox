X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2794" "Tuesday" "22" "December" "2015" "12:12:13" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151222171213.8E8206C046C@smtpvmsrv1.mitre.org>" "67" "[oss-security] Re: CVE Request: Use after free in PHP Collator::sortWithSortKeys function" "^Cc:" nil nil "12" "2015122217:12:13" "[oss-security] Re: CVE Request: Use after free in PHP Collator::sortWithSortKeys function" (number mark "        cve-assign@m Dec 22   67/2794  " thread-indent "\"[oss-security] Re: CVE Request: Use after free in PHP Collator::sortWithSortKeys function\"\n") "<CA+KTh2zX+FrBinNUikbOE5HBgzRpDbo9XxZ-iUBeOhbqaqUEEg@mail.gmail.com>" ("<CA+KTh2zX+FrBinNUikbOE5HBgzRpDbo9XxZ-iUBeOhbqaqUEEg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30417 invoked by uid 550); 22 Dec 2015 17:12:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30386 invoked from network); 22 Dec 2015 17:12:25 -0000
In-Reply-To: <CA+KTh2zX+FrBinNUikbOE5HBgzRpDbo9XxZ-iUBeOhbqaqUEEg@mail.gmail.com>
Message-Id: <20151222171213.8E8206C046C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
Date: Tue, 22 Dec 2015 12:12:13 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Use after free in PHP Collator::sortWithSortKeys function
To: emmanuel.law@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I reported a use after free in PHP's Intl extension. The vulnerability
> is in Collator::sortWithSortKeys function. Only Php 7.0.0 is affected.
> 
> This can potentially be remotely exploitable if the sorting function
> is called on a user supplied array.
> 
> https://bugs.php.net/bug.php?id=71020

>>   - Array is destroyed via zval_ptr_dtor( array );
>>   - sortKeyIndxBuf[0....0xba].zstr are now dangling pointers
>>   - New array initialized (Hashtable with initial element size of 8)
>>   - As the dangling pointers are added to array, the size of the Hashtable grows.
>>   - As the Hashtable grows, it's allocated more memory via zend_hash_do_resize()
>>   - It will then be allocated memory that co-incides with an address
>>     pointed to by the dangling pointer sortKeyIndxBuf[j].zstr. Thus
>>     sortKeyIndxBuf[j].zstr now no longer points to a valid zval.
>>   - ... it will access dereference whatever is the value within this "corrupted zval"

>> [2015-12-07 19:04 UTC] ab@php.net
>> Yeah, we should have kept this till short before the release, as usually done
>> for security patches.

Use CVE-2015-8616.


Also, while we're doing CVEs for PHP 7.0.1, this one is CVE-2015-8617:

  https://bugs.php.net/bug.php?id=71105
  http://php.net/ChangeLog-7.php
  https://github.com/php/php-src/commit/b101a6bbd4f2181c360bd38e7683df4a03cba83e

  [2015-12-13 02:48 UTC] laruence@php.net ... this is a security fix

  A format string vulnerability exists in PHP-7.0.0 due to how
  non-existent class names are handled. ... Adding a "%s" as the
  second parameter there seems to fix the issue.


If anyone is familiar with "Fixed double free in error condition of
format printer" in that changelog and wants a CVE ID, please let us
know.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWeYPqAAoJEL54rhJi8gl5xLsP/irDZCa+BewL5P85OM4lSVpH
EXymkZ8YPztD9d2F0ulbworvpZfM5HKASUHIAM1GwpHm4yOvUvIZKh+U7h0/S8bM
BEeURKkhCH3IO/fpPC9P3rMK9psBMuLpWLOvOBLDdDVRhnL79SfGa+sMlTZa66BF
E+a4hSpjAj9zIz9rL3kYfVcQDNb8AAlHvtCBNMawTt6fOvG2+Be1jKRYmp4RZYjK
6ypArIvMpsRqN3DaYgT44xVR73MgHBk3AmiS8aFzWHNBC3NC7FeYRCth9Zj/MXu+
4wRBOnTkDsBve/zTHjhDaa+689Qqtj5y+i7WBjnG+0FA1/u9gLm2jq2RfBMK03QC
vo1789S/49E/DqJ62IwfgBuZoqZWwN2CcScl1f2oevqB2MqyJEFlBIXr/Wz1XrOK
UPRhheFu70xsh+S1C+2a73CROBuVcoe5IUcACSyTRCBTCY6kZhi+pekPfqG/dpZi
tTHNeY+BBdfmFOGE73GacgVZgAotLi0oYn6FtAevW4Tpncg/5q0jpDkbLzl5ph8i
YgEbh+NKnK/8ozJ1f81fMk7ABpv5nnElnxh+PLAgtMns91CjGERcE+iPX/eEkJcP
OuWyEzRXmGiegWj2wSoePSHqyehvMHg5HIFLQewUUcgAn5Qww8EZoF/kG2dH1v7G
ugNG8OFxuFJlXpNRTaGH
=4znN
-----END PGP SIGNATURE-----
