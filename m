X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2400" "Monday" "5" "December" "2016" "15:50:41" "-0600" "Steven M. Schweda" "sms@antinode.info" "<16120515504112_2020046C@antinode.info>" "71" "[oss-security] CVE Request: Info-Zip zipinfo buffer overflow" nil nil nil "12" "2016120521:50:41" "[oss-security] CVE Request: Info-Zip zipinfo buffer overflow" (number mark "U       sms@antinode Dec  5   71/2400  " thread-indent "\"[oss-security] CVE Request: Info-Zip zipinfo buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12257 invoked by uid 550); 5 Dec 2016 22:02:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12018 invoked from network); 5 Dec 2016 22:01:33 -0000
Date: Mon, 5 Dec 2016 15:50:41 -0600 (CST)
Message-Id: <16120515504112_2020046C@antinode.info>
From: "Steven M. Schweda" <sms@antinode.info>
To: tyhicks@canonical.com, oss-security@lists.openwall.com
Cc: security@ubuntu.com, Info-ZIP-Dev@goatley.com
X-VMS-To: SMTP%"tyhicks@canonical.com" SMTP%"oss-security@lists.openwall.com"
X-VMS-Cc: SMTP%"security@ubuntu.com" IZ,SMS
Subject: [oss-security] CVE Request: Info-Zip zipinfo buffer overflow

From: Tyler Hicks <tyhicks@canonical.com>

   Thanks for the (thorough, helpful) report.

> Alexis Vanden Eijnde has discovered a zipinfo buffer overflow and
> reported it here:
> 
>   https://launchpad.net/bugs/1643750
> 
> It is very similar to, but different than, this `unzip -l` crasher:
> 
>   http://www.openwall.com/lists/oss-security/2014/11/03/5

   It is.  And the easy fix is also very similar (and should appear in
the next UnZip release, version 6.1e beta):

ALP $ gdiff zipinfo.c;39 zipinfo.c
2568c2568,2579
<         sprintf(&methbuf[1], "%03u", G.crec.compression_method);
---
>         /* 2016-12-05 SMS.
>          * https://launchpad.net/bugs/1643750
>          * Unexpectedly large compression methods overflow
>          * &methbuf[].  Use the old, three-digit decimal format
>          * for values which fit.  Otherwise, sacrifice the "u",
>          * and use four-digit hexadecimal.
>          */
>         if (G.crec.compression_method <= 999) {
>             sprintf( &methbuf[ 1], "%03u", G.crec.compression_method);
>         } else {
>             sprintf( &methbuf[ 0], "%04X", G.crec.compression_method);
>         }

   Typical output (pre-release UnZip 6.1e beta, with some minor,
unrelated report format changes from UnZip 6.0):

   Old:

ALP $ unzip6l -Z PoZ.zip
Archive:  ALP$DKC0:[UTILITY.SOURCE.ZIP.test_mthd_ovflo]PoZ.zip;1
Zip file size: 154 bytes, number of entries: 1
-rw-rw-r--  3.0 unx        2 tx u65535 16-Nov-21 19:07 a
                                ^^^^^^
1 file, 2 bytes uncompressed, 2 bytes compressed:  0.0%

   New/next:

ALP $ unzipx -Z PoZ.zip
Archive:  ALP$DKC0:[UTILITY.SOURCE.ZIP.test_mthd_ovflo]PoZ.zip;1
Archive size: 154 bytes; Members: 1
-rw-rw-r--  3.0 unx        2 tx FFFF 16-Nov-21 19:07 a
                                ^^^^
Members: 1; Bytes uncompressed: 2, compressed: 2, 0.0%
Directories: 0, Files: 1, Links: 0

> The zipinfo buffer overflow occurs due to a flaw in zipinfo.c's
> zi_short() function:
> [...]

   Yeah.  We should have noticed this whan the "unzip -l" complaint was
made.

> Please assign a CVE. Also, consider assigning a CVE to the related
> `unzip -l` issue from 2014. Thank you!

   Is that something I should do?  (I normally get reports with CVEs; I
have never created one.)

------------------------------------------------------------------------

   Steven M. Schweda               sms@antinode-info
