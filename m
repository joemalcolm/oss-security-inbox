X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/13/2
Message-ID: <20120713051838.GB6757@suse.de>
Date: Fri, 13 Jul 2012 07:18:38 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: [dan@...eharvesters.com: [Libexif-devel] libexif project security advisory July 12, 2012]
Content-Type: text/plain; charset=utf-8

Hi,

(FYI.)

libexif 0.6.21 and exif 0.6.21 were released to fix various overflows
and related issues.

I captured the seperate patches as they went in in our bug:
https://bugzilla.novell.com/show_bug.cgi?id=771229

Ciao, Marcus

Return-Path: <meissner@...e.de>
Received: from imap.suse.de ([unix socket])
	 by imap-int (Cyrus v2.2.12) with LMTPA;
	 Fri, 13 Jul 2012 07:14:25 +0200
X-Sieve: CMU Sieve 2.2
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "relay.suse.de", Issuer "CAcert Class 3 Root" (verified OK))
	by imap.suse.de (Postfix) with ESMTPS id 8B2833C539B1
	for <meissner@...p-int.suse.de>; Fri, 13 Jul 2012 07:14:25 +0200 (CEST)
Received: from wotan.suse.de (unknown [10.120.0.1])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 4D3DC18552BF
	for <meissner@...p-int.suse.de>; Fri, 13 Jul 2012 07:14:24 +0200 (CEST)
Received: by wotan.suse.de (Postfix, from userid 10574)
	id 3FA016273; Fri, 13 Jul 2012 07:14:24 +0200 (CEST)
X-Original-To: meissner@...an.suse.de
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by wotan.suse.de (Postfix) with ESMTPS id 328256272
	for <meissner@...an.suse.de>; Fri, 13 Jul 2012 07:14:24 +0200 (CEST)
Received: by relay2.suse.de (Postfix)
	id 29CCE1858E4D; Fri, 13 Jul 2012 07:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by relay2.suse.de (Postfix) with ESMTP id 1F9B31858E4C
	for <meissner@...e.de>; Fri, 13 Jul 2012 07:14:24 +0200 (CEST)
Received: from relay2.suse.de ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10026) with ESMTP
 id 21682-02 for <meissner@...e.de>; Fri, 13 Jul 2012 07:14:23 +0200 (CEST)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 57CBC18552BF
	for <meissner@...e.de>; Fri, 13 Jul 2012 07:14:23 +0200 (CEST)
Received: from mail-n.franken.de (mail-n.franken.de [193.175.24.27])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx2.suse.de (Postfix) with ESMTP id E883CA2FD7
	for <meissner@...e.de>; Fri, 13 Jul 2012 07:14:20 +0200 (CEST)
Received: from jet.franken.de (p4FF972D8.dip.t-dialin.net [79.249.114.216])
	(Authenticated sender: jet)
	by drew.franken.de (Postfix) with ESMTP id B90831C0C0BD6
	for <meissner@...e.de>; Fri, 13 Jul 2012 07:14:19 +0200 (CEST)
Received: by jet.franken.de (Postfix, from userid 1000)
	id 35D3A69E68; Fri, 13 Jul 2012 07:14:19 +0200 (CEST)
Resent-From: Marcus Meissner <marcus@....franken.de>
Resent-Date: Fri, 13 Jul 2012 07:14:19 +0200
Resent-Message-ID: <20120713051419.GA10690@....franken.de>
Resent-To: meissner@...e.de
Received: from drew ([unix socket]) (authenticated user=jet bits=0)
	by drew (Cyrus v2.1.18-IPv6-Debian-2.1.18-5.1) with LMTP; Thu, 12 Jul 2012 23:02:06 +0200
X-Sieve: CMU Sieve 2.2
X-Original-To: marcus@....franken.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.34.181.88])
	by drew.franken.de (Postfix) with ESMTP id 291561C0B461B
	for <marcus@....franken.de>; Thu, 12 Jul 2012 23:02:06 +0200 (CEST)
Received: from localhost ([127.0.0.1] helo=sfs-ml-3.v29.ch3.sourceforge.com)
	by sfs-ml-3.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <libexif-devel-bounces@...ts.sourceforge.net>)
	id 1SpQWR-0002kg-D4; Thu, 12 Jul 2012 21:02:03 +0000
Received: from sog-mx-4.v43.ch3.sourceforge.com ([172.29.43.194]
	helo=mx.sourceforge.net)
	by sfs-ml-3.v29.ch3.sourceforge.com with esmtp (Exim 4.76)
	(envelope-from <dan@...eharvesters.com>) id 1SpQWP-0002ka-Kl
	for libexif-devel@...ts.sourceforge.net; Thu, 12 Jul 2012 21:02:01 +0000
X-ACL-Warn: 
Received: from mail-out.m-online.net ([212.18.0.9])
	by sog-mx-4.v43.ch3.sourceforge.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.76) id 1SpQWO-0006Sz-Bg
	for libexif-devel@...ts.sourceforge.net; Thu, 12 Jul 2012 21:02:01 +0000
Received: from frontend4.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3WY8kG22cNz4KK8n;
	Thu, 12 Jul 2012 23:03:02 +0200 (CEST)
Received: from colibri.localdomain (ppp-93-104-51-106.dynamic.mnet-online.de
	[93.104.51.106])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA id 3WY8hx57ppzbbkv;
	Thu, 12 Jul 2012 23:01:53 +0200 (CEST)
Received: by colibri.localdomain (Postfix, from userid 501)
	id 5074B107C9; Thu, 12 Jul 2012 23:01:53 +0200 (CEST)
Date: Thu, 12 Jul 2012 23:01:53 +0200
From: Dan Fandrich <dan@...eharvesters.com>
To: libexif-devel@...ts.sourceforge.net
Message-ID: <20120712210153.GA21435@...eharvesters.com>
Mail-Followup-To: libexif-devel@...ts.sourceforge.net,
	bugtraq@...urityfocus.com
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Headers-End: 1SpQWO-0006Sz-Bg
Cc: bugtraq@...urityfocus.com
Subject: [Libexif-devel] libexif project security advisory July 12, 2012
X-BeenThere: libexif-devel@...ts.sourceforge.net
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: libexif-devel@...ts.sourceforge.net
List-Id: <libexif-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/libexif-devel>, 
	<mailto:libexif-devel-request@...ts.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=libexif-devel>
List-Post: <mailto:libexif-devel@...ts.sourceforge.net>
List-Help: <mailto:libexif-devel-request@...ts.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/libexif-devel>, 
	<mailto:libexif-devel-request@...ts.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3567254336316948403=="
Errors-To: libexif-devel-bounces@...ts.sourceforge.net
X-Virus-Scanned: by amavisd-new at localhost
X-Spam-Status: No, score=-0.998 tagged_above=-20 required=5
 tests=[BAYES_50=0.001, IS_MAILMAN_LIST=-1, UNPARSEABLE_RELAY=0.001]
X-Spam-Score: -0.998
X-Spam-Level: 


--===============3567254336316948403==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline


--liOOAslEiF7prFVr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

libexif project security advisory
July 12, 2012

PROBLEM DESCRIPTION

A number of remotely exploitable issues were discovered in libexif
and exif, with effects ranging from information leakage to potential
remote code execution. The issues are:

CVE-2012-2812: A heap-based out-of-bounds array read in the
exif_entry_get_value function in libexif/exif-entry.c in libexif 0.6.20
and earlier allows remote attackers to cause a denial of service or
possibly obtain potentially sensitive information from process memory
via an image with crafted EXIF tags.

CVE-2012-2813: A heap-based out-of-bounds array read in the
exif_convert_utf16_to_utf8 function in libexif/exif-entry.c in libexif
0.6.20 and earlier allows remote attackers to cause a denial of service
or possibly obtain potentially sensitive information from process
memory via an image with crafted EXIF tags.=20

CVE-2012-2814: A buffer overflow in the exif_entry_format_value function
in libexif/exif-entry.c in libexif 0.6.20 allows remote attackers to
cause a denial of service or possibly execute arbitrary code via an
image with crafted EXIF tags.

CVE-2012-2836: A heap-based out-of-bounds array read in the
exif_data_load_data function in libexif 0.6.20 and earlier allows remote
attackers to cause a denial of service or possibly obtain potentially
sensitive information from process memory via an image with crafted
EXIF tags.

CVE-2012-2837: A divide-by-zero error in the
mnote_olympus_entry_get_value function while formatting EXIF maker note
tags in libexif 0.6.20 and earlier allows remote attackers to cause a
denial of service via an image with crafted EXIF tags.

CVE-2012-2840:=A0An off-by-one error in the exif_convert_utf16_to_utf8
function in libexif/exif-entry.c in libexif 0.6.20 and earlier allows
remote attackers to cause a denial of service or possibly execute
arbitrary code via an image with crafted EXIF tags.=A0

CVE-2012-2841: An integer underflow in the exif_entry_get_value function
can cause a heap overflow and potentially arbitrary code execution while
formatting an EXIF tag, if the function is called with a buffer size
parameter equal to zero or one.

CVE-2012-2845: An integer overflow in the function jpeg_data_load_data
in the exif program could cause a data read beyond the end of a buffer,
causing an application crash or leakage of potentially sensitive
information when parsing a crafted JPEG file.

There are no known public exploits of these issues.

AFFECTED VERSIONS

All of the described vulnerabilities affect libexif
version 0.6.20, and most affect earlier versions as well.

SOLUTION

Upgrade to version 0.6.21 which is not vulnerable to
these issues.

CHECKSUMS

Here are the MD5 sums of the released files:

0e744471b8c3b3b1534d5af38bbf6408  exif-0.6.21.tar.bz2
78b9f501fc19c6690ebd655385cd5ad6  exif-0.6.21.tar.gz
27339b89850f28c8f1c237f233e05b27  libexif-0.6.21.tar.bz2
9321c409a3e588d4a99d63063ef4bbb7  libexif-0.6.21.tar.gz
aa208b40c853792ba57fbdc1eafcdc95  libexif-0.6.21.zip

Here are the SHA1 sums of the released files:

74652e3d04d0faf9ab856949d7463988f0394db8  exif-0.6.21.tar.bz2
d23139d26226b70c66d035bbc64482792c9f1101  exif-0.6.21.tar.gz
a52219b12dbc8d33fc096468591170fda71316c0  libexif-0.6.21.tar.bz2
4106f02eb5f075da4594769b04c87f59e9f3b931  libexif-0.6.21.tar.gz
e5990860e9ec5a6aedde0552507a583afa989ca2  libexif-0.6.21.zip

ACKNOWLEDGEMENTS

Mateusz Jurczyk of Google Security Team reported the issues
CVE-2012-2812, CVE-2012-2813 and CVE-2012-2814. Yunho Kim reported the
issues CVE-2012-2836 and CVE-2012-2837. Dan Fandrich discovered the
issues CVE-2012-2840, CVE-2012-2841 and CVE-2012-2845.

REFERENCES

http://libexif.sf.net

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQCVAwUBT/87QSLQql8HfszFAQL73QP/YoGnsH+YqqQTHsAXVB58KJisEVBooE5D
woWy7QNzHc/OK5Xq3YQdW9QE2isM8RXEMMjg0cFCIQ/vmnCJbfJ0TIQd2qZ4Ssp4
E3uCitH7LzkoKL4C9OOn8mcqtctfP/wYwyOrqE5GV7Az+b6IkqYUJUPl3OvAtm0J
d8bV5kLhbAA=
=eVJF
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--


--===============3567254336316948403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

------------------------------------------------------------------------------
Live Security Virtual Conference
Exclusive live event will cover all the ways today's security and 
threat landscape has changed and how IT managers can respond. Discussions 
will include endpoint security, mobile security and the latest in malware 
threats. http://www.accelacomm.com/jaw/sfrnl04242012/114/50122263/
--===============3567254336316948403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
libexif-devel mailing list
libexif-devel@...ts.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/libexif-devel

--===============3567254336316948403==--



