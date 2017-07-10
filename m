X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["15803" "Monday" "10" "July" "2017" "15:40:01" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170710134001.GF24936@suse.de>" "552" "[oss-security] PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP CVEs]" "^Date:" nil nil "7" "2017071013:40:01" "[oss-security] PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP CVEs]" (number mark "U       meissner@sus Jul 10  552/15803 " thread-indent "\"[oss-security] PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP CVEs]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24176 invoked by uid 550); 10 Jul 2017 13:40:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24144 invoked from network); 10 Jul 2017 13:40:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170710134001.GF24936@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 10 Jul 2017 15:40:01 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP
 CVEs]
To: OSS Security List <oss-security@lists.openwall.com>, security@php.net,
	kaplanlior@gmail.com

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Raw form of PHP CVE assignments.

If I made a mistake feel free to update via webform or mail me so I can do.

Ciao, Marcus

--r5Pyd7+fXNt84Ff3
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <meissner@suse.de>
Delivered-To: meissner@imap.suse.de
Received: from imap.suse.de
	by imap3-int with LMTP id eLPlOa2BY1m2TQAALh3uQQ
	for <meissner@imap.suse.de>; Mon, 10 Jul 2017 13:31:25 +0000
Received: from relay1.suse.de (gate-dmz1.suse.de [195.135.220.254])
	by imap.suse.de (Postfix) with ESMTP id E803211B6F
	for <meissner@imap-int.suse.de>; Mon, 10 Jul 2017 13:31:25 +0000 (UTC)
Received: from wotan.suse.de (wotan.suse.de [10.160.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay1.suse.de (Postfix) with ESMTPS id DFBA825CB4
	for <meissner@imap-int.suse.de>; Mon, 10 Jul 2017 13:31:24 +0000 (UTC)
Received: by wotan.suse.de (Postfix, from userid 10574)
	id DAAA3622A; Mon, 10 Jul 2017 15:31:24 +0200 (CEST)
X-Original-To: meissner@wotan.suse.de
Received: from relay1.suse.de (relay1.suse.de [149.44.160.133])
	by wotan.suse.de (Postfix) with ESMTP id D1A10609C
	for <meissner@wotan.suse.de>; Mon, 10 Jul 2017 15:31:24 +0200 (CEST)
Received: by relay1.suse.de (Postfix)
	id C1A3126017; Mon, 10 Jul 2017 13:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by relay1.suse.de (Postfix) with ESMTP id BF15A26016
	for <meissner@suse.de>; Mon, 10 Jul 2017 13:31:24 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at localhost
X-Spam-Flag: NO
X-Spam-Score: -1.51
X-Spam-Level:
X-Spam-Status: No, score=-1.51 tagged_above=-9999 required=5
	tests=[BAYES_50=0.8, RCVD_IN_DNSWL_MED=-2.3, T_RP_MATCHES_RCVD=-0.01]
	autolearn=disabled
Received: from relay1.suse.de ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id H8JTgdZVR9MU for <meissner@suse.de>;
	Mon, 10 Jul 2017 13:31:23 +0000 (UTC)
Received: from mx1.suse.de (mx1.suse.de [195.135.220.2])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by relay1.suse.de (Postfix) with ESMTPS id B526D25CB4
	for <meissner@suse.de>; Mon, 10 Jul 2017 13:31:23 +0000 (UTC)
Received: from smtpvmsrv1.mitre.org (smtpvmsrv1.mitre.org [192.52.194.136])
	by mx1.suse.de (Postfix) with ESMTP id 6220FAA6E
	for <meissner@suse.de>; Mon, 10 Jul 2017 13:31:23 +0000 (UTC)
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id 5E6536C00A3;
	Mon, 10 Jul 2017 09:31:22 -0400 (EDT)
Received: from imshyb01.MITRE.ORG (imshyb01.mitre.org [129.83.29.2])
	by smtpvmsrv1.mitre.org (Postfix) with ESMTP id 50A7F6C00AF;
	Mon, 10 Jul 2017 09:31:22 -0400 (EDT)
Received: from imshyb02.MITRE.ORG (129.83.29.3) by imshyb01.MITRE.ORG
 (129.83.29.2) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Mon, 10 Jul
 2017 09:31:21 -0400
Received: from rcf-smtp.mitre.org (10.140.19.249) by imshyb02.MITRE.ORG
 (129.83.29.3) with Microsoft SMTP Server id 15.0.1263.5 via Frontend
 Transport; Mon, 10 Jul 2017 09:31:22 -0400
Received: from cvecmssrv1.mitre.org (cvecmssrv1.mitre.org [129.83.19.107])
	by rcf-smtp.mitre.org (Postfix) with SMTP id C5E0C18002E;
	Mon, 10 Jul 2017 09:30:57 -0400 (EDT)
From: <cve-request@mitre.org>
To: <meissner@suse.de>
CC: <cve-request@mitre.org>
Subject: Re: [scr358150] 7 PHP CVEs
Message-ID: <682966c1d3d34f709abfc33f5e12a040@imshyb02.MITRE.ORG>
Date: Mon, 10 Jul 2017 09:31:22 -0400
MIME-Version: 1.0
Old-Content-Type: text/plain
Content-Type: application/pgp; format=text; x-action=sign

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [Suggested description]
> In PHP before 5.6.31, 7.x before 7.0.17, and 7.1.x before 7.1.3,
> remote attackers could cause a CPU consumption denial of service attack by injecting long form variables,
> related to main/php_variables.c.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-407
> 
> ------------------------------------------
> 
> [Vendor of Product]
> PHP
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> php - 5.6 before 5.6.31
> php - 7.0 before 7.0.17
> php - 7.1 before 7.1.3
> 
> ------------------------------------------
> 
> [Affected Component]
> processing of FORM variables
> 
> ------------------------------------------
> 
> [Attack Type]
> Remote
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> remote
> 
> ------------------------------------------
> 
> [Reference]
> https://bugs.php.net/bug.php?id=73807
> https://github.com/php/php-src/commit/a15bffd105ac28fd0dd9b596632dbf035238fda3
> https://github.com/php/php-src/commit/0f8cf3b8497dc45c010c44ed9e96518e11e19fc3
> http://php.net/ChangeLog-7.php
> http://php.net/ChangeLog-5.php
> http://openwall.com/lists/oss-security/2017/07/10/6
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> pparadowski at media4u dot pl

Use CVE-2017-11142.


> [Suggested description]
> In PHP before 5.6.31,
> an invalid free in the WDDX deserialization of boolean parameters could be used by attackers able to inject XML for deserialization to crash the PHP interpreter,
> related to an invalid free for an empty boolean element in ext/wddx/wddx.c.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-763
> 
> ------------------------------------------
> 
> [Vendor of Product]
> PHP
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> PHP - 5.6 before 5.6.31
> 
> ------------------------------------------
> 
> [Affected Component]
> WDDX extension of PHP
> 
> ------------------------------------------
> 
> [Attack Type]
> Remote
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> injecting bad XML into the WDDX deserializer
> 
> ------------------------------------------
> 
> [Reference]
> https://bugs.php.net/bug.php?id=74145
> https://git.php.net/?p=php-src.git;a=commit;h=2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> http://php.net/ChangeLog-5.php
> http://openwall.com/lists/oss-security/2017/07/10/6
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> varsleak at gmail dot com

Use CVE-2017-11143.


> [Suggested description]
> In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7,
> the openssl extension PEM sealing code did not check the return value of the OpenSSL sealing function, which could lead to a crash of the PHP interpreter,
> related to an interpretation conflict for a negative number in ext/openssl/openssl.c, and an OpenSSL documentation omission.
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> PHP
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> php - 5.6 before 5.6.31
> php - 7.1.7, 7.0.21
> 
> ------------------------------------------
> 
> [Affected Component]
> php openssl extension
> 
> ------------------------------------------
> 
> [Attack Type]
> Remote
> 
> ------------------------------------------
> 
> [Impact Code execution]
> true
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> decoding a supplied PEM file
> 
> ------------------------------------------
> 
> [Reference]
> https://bugs.php.net/bug.php?id=74651
> http://git.php.net/?p=php-src.git;a=commit;h=73cabfedf519298e1a11192699f44d53c529315e
> http://git.php.net/?p=php-src.git;a=commit;h=89637c6b41b510c20d262c17483f582f115c66d6
> http://git.php.net/?p=php-src.git;a=commit;h=91826a311dd37f4c4e5d605fa7af331e80ddd4c3
> http://php.net/ChangeLog-7.php
> http://php.net/ChangeLog-5.php
> http://openwall.com/lists/oss-security/2017/07/10/6
> 
> ------------------------------------------
> 
> [Discoverer]
> Sebastian Li, Wei Lei, Xie Xiaofei and Liu Yang of Nanyang Technological University

Use CVE-2017-11144.


> [Suggested description]
> In PHP before 5.6.31, 7.x before 7.0.21, and 7.1.x before 7.1.7,
> lack of a bounds check in the date extension's timelib_meridian parsing code could be used by attackers able to supply date
> strings to leak information from the interpreter, related to an ext/date/lib/parse_date.c out-of-bounds read affecting the
> php_parse_date function.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-126
> 
> ------------------------------------------
> 
> [Vendor of Product]
> php
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> php - all versions 5.6.31 7.0.21 7.1.7
> 
> ------------------------------------------
> 
> [Affected Component]
> PHP date parsing library
> 
> ------------------------------------------
> 
> [Attack Type]
> Remote
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Parsing invalid dates with timelib_meridian function
> 
> ------------------------------------------
> 
> [Reference]
> https://gist.github.com/anonymous/bd77ac90d3bdf31ce2a5251ad92e9e75
> https://bugs.php.net/bug.php?id=74819
> http://php.net/ChangeLog-7.php
> http://php.net/ChangeLog-5.php
> http://openwall.com/lists/oss-security/2017/07/10/6
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> l dot wei at ntu dot edu dot sg

Use CVE-2017-11145.


> [Suggested description]
> In PHP through 5.6.31, 7.x through 7.0.21, and 7.1.x through 7.1.7,
> lack of bounds checks in the date extension's timelib_meridian parsing code could be used by attackers able to supply date
> strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the
> php_parse_date function. NOTE: this vulnerability exists because of an incomplete fix for CVE-2017-11145.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-126
> 
> ------------------------------------------
> 
> [Vendor of Product]
> php
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> php - all versions 5.6.31 7.0.21 7.1.7
> 
> ------------------------------------------
> 
> [Affected Component]
> PHP date parsing library
> 
> ------------------------------------------
> 
> [Attack Type]
> Remote
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Parsing invalid dates with timelib_meridian function
> 
> ------------------------------------------
> 
> [Reference]
> https://gist.github.com/anonymous/bd77ac90d3bdf31ce2a5251ad92e9e75
> https://bugs.php.net/bug.php?id=74819
> http://openwall.com/lists/oss-security/2017/07/10/6
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> l dot wei at ntu dot edu dot sg

Use CVE-2017-11146.


> [Suggested description]
> In PHP before 5.6.30 and 7.x before 7.0.15,
> the PHAR archive handler could be used by attackers supplying malicious archive files to crash the PHP interpreter or
> potentially disclose information due to a buffer over-read in the phar_parse_pharfile function in ext/phar/phar.c.
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> php
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> php - 5.6 before 5.6.30
> php - 7.0 before 7.0.15
> 
> ------------------------------------------
> 
> [Affected Component]
> PHP Phar parser
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> supplying a malicious PHAR archive
> 
> ------------------------------------------
> 
> [Reference]
> https://bugs.php.net/bug.php?id=73773
> http://git.php.net/?p=php-src.git;a=commit;h=e5246580a85f031e1a3b8064edbaa55c1643a451
> http://php.net/ChangeLog-7.php
> http://php.net/ChangeLog-5.php
> http://openwall.com/lists/oss-security/2017/07/10/6

Use CVE-2017-11147.


> [Suggested description]
> In PHP before 5.6.28 and 7.x before 7.0.13,
> incorrect handling of various URI components in the URL parser could be used by attackers to bypass hostname-specific URL checks,
> as demonstrated by 
> evil.example.com:80#@good.example.com/
> and
> evil.example.com:80?@good.example.com/ inputs to the parse_url function (implemented in the
> php_url_parse_ex function in ext/standard/url.c).
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-74
> 
> ------------------------------------------
> 
> [Vendor of Product]
> PHP
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> php - 5.6 before 5.6.28
> php - 7.0 before 7.0.13
> 
> ------------------------------------------
> 
> [Affected Component]
> hostname parsing in the URL parser
> 
> ------------------------------------------
> 
> [Attack Type]
> Context-dependent
> 
> ------------------------------------------
> 
> [CVE Impact Other]
> hostname parsing bypasses
> 
> ------------------------------------------
> 
> [Attack Vectors]
> attackers able to supply URL for parsing
> 
> ------------------------------------------
> 
> [Reference]
> https://bugs.php.net/bug.php?id=73192
> http://git.php.net/?p=php-src.git;a=commit;h=b061fa909de77085d3822a89ab901b934d0362c4
> http://php.net/ChangeLog-7.php
> http://php.net/ChangeLog-5.php
> http://openwall.com/lists/oss-security/2017/07/10/6
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> mala at ma dot la

Use CVE-2016-10397.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJZY4FZAAoJEHb/MwWLVhi2R8YP/13GFykAcj7/k2SimsmMk30P
9iIqY/J0xpkKJCU5NrlSlmY82a3PN+oWpObtYoI3zB7fH7ReLP1BKsU3V8JIgp04
6mXKDZVZ38QqZsKMh0Qz3kbMJC7ZtRsu1Rvwim0BMq8+PD/cCz6w4fOWgqQAivst
nLxYrd1HRF8OBqQE99ZKqXNenfaKqpsa6o2tugWX3D2uQJ5yLJWMNgyIpjWDI8Hq
DJTAD2LSct20Pd41G8Lh+c93UKZ4YK0H90kH48xB2Hk0OlfGWR5rzGvSTkrPx8bc
paQKU559JjMCsapJAT+ojPQY5Wxp8kh+K6E5PC54PMRd8TDwTKu7qQw8vUZRm6j4
LfU2hfD8VN85OiX7ARFBwDzM8RfvEfMzbP4tlHpNMOFjLTxL/JOjAEYrnO6ITDTA
K98F3LMrV4H2sJyAvTg/6Gm8a8ak7sS0j2dkjbn0CgRxUwlBtFbEJtv47WO9Vj//
/woZtn/ayDzFdqTbI/UJn+aUe8WD7j4M+N6qJZTyeu+lIE9y0dmW2BqUSRRZc1OL
1nW85DjIssN4wcr3IzUhTgfVYQruPEnyKmondfHBR0qwPE94xvMe0V2xXTwCR6s0
Jgj/fRox6L32iqTiXG9+OCcWOZmI7FV+ckNP4FD8BNwpD0FE8o2iznJ6U6f0vrPm
Xe0eZzR/AwJsJRH/wx83
=uxf6
-----END PGP SIGNATURE-----


--r5Pyd7+fXNt84Ff3--
