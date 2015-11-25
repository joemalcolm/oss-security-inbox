X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Wednesday" "25" "November" "2015" "14:26:22" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1511251422050.31323@wniryva>" "43" "[oss-security] CVE request Qemu: net: eepro100: infinite loop in processing command block list" nil nil nil "11" "2015112508:56:22" "[oss-security] CVE request Qemu: net: eepro100: infinite loop in processing command block list" (number mark "U       ppandit@redh Nov 25   43/1659  " thread-indent "\"[oss-security] CVE request Qemu: net: eepro100: infinite loop in processing command block list\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24084 invoked by uid 550); 25 Nov 2015 08:56:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24060 invoked from network); 25 Nov 2015 08:56:50 -0000
Date: Wed, 25 Nov 2015 14:26:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>
Message-ID: <alpine.LFD.2.20.1511251422050.31323@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] CVE request Qemu: net: eepro100: infinite loop in processing command
 block list

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the i8255x (PRO100) emulation support is vulnerable
to an infinite loop issue. It could occur while processing a chain of commands
located in the Command Block List(CBL). Each Command Block(CB) points to the
next command in the list. An infinite loop unfolds if the link to the next
CB points to the same block or there is a closed loop in the chain.

A privileged(CAP_SYS_RAWIO) user inside guest could use this flaw to crash
the Qemu instance resulting in DoS.

Upstream patch:
- ---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-10/msg03911.html


This issue was discovered by Qinghao Tang of QIHU 360 Marvel Team.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWVXe3AAoJEN0TPTL+WwQfIo4QALVYkf11kp4qH+XI8b9gpeyK
CmidvlMj5EAXNN0JB6HiUpgQ3PYfg3VrCzNC5miYvR5H7P5yWLdSyEA6nnEdA5sH
qO5dHzt7iXFYw7xcndu7sBAzrFGOBmGxyD+8EM4/CI8gyI1eaJqS0raKAPwYbWrT
ZKR5AmjMYNlxx2AgvRGJGsTIeskKwVXyUxrD1H1TNDLFbwgoSII3NsC8chvpt7jO
QtcDL2FRthZly724Xzh3+LA2LD6lyk2CWO83Bpysfs1+L0gZ5wkQsIqL7u1kS+Z3
kbSwOM7o+XbfL/gFCvPVPH45P7ugxe7wN7piHnYOHB9FpQ+V8GsSAONMpvRSkB/k
IU+tbk6ovxZPrmJXoK7ysHogc2mtLqykPuf6LOzPmgRC0LW7FMkYsfeg2Vd9Xe+6
ua/IE2qyGCK+R/JePl72f53PFK9MAeCZ/6sOeME4/WQyEYf837AAr2/ox7ClbmJ4
eGbYl3NZFH9t+t7mI8zJ5Nd0QTNdxNzSZ2eUIlvj4DhaGHAXlXB78QC0Ctafhhdt
sebseaJGaTbUlqijm7IgaE/XT42Z97Y5E681ktNjeOsc312RZpBoMQJM7hNJ71sQ
T0KA9Otr7oqy/6TSkN/4FdlzuK/vKGyjb5x4t2687Ldqb8j/RgEFqe3pBa8FyGqD
PXqw/kJ82DbS3RbCGXoz
=1Pb0
-----END PGP SIGNATURE-----
