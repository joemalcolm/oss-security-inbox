X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["596" "Friday" "19" "January" "2018" "15:56:51" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1801191547190.7816@wniryva>" "18" "[oss-security] CVE-2017-18043 Qemu: integer overflow in ROUND_UP macro could result in DoS" nil nil nil "1" "2018011910:26:51" "[oss-security] CVE-2017-18043 Qemu: integer overflow in ROUND_UP macro could result in DoS" (number mark "U       ppandit@redh Jan 19   18/596   " thread-indent "\"[oss-security] CVE-2017-18043 Qemu: integer overflow in ROUND_UP macro could result in DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11724 invoked by uid 550); 19 Jan 2018 10:27:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11692 invoked from network); 19 Jan 2018 10:27:07 -0000
Date: Fri, 19 Jan 2018 15:56:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1801191547190.7816@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 19 Jan 2018 10:26:55 +0000 (UTC)
Subject: [oss-security] CVE-2017-18043 Qemu: integer overflow in ROUND_UP macro could result
 in DoS

   Hello,

Quick Emulator(Qemu) built with a macro ROUND_UP(n, d), used to promote number 
'n' to the nearest multiple of 'd', is vulnerable to an integer overflow 
issue. It could occur if 'd' is unsigned and smaller in type from 'n'.

A user could use this flaw to crash the Qemu process resulting in DoS.

Upstream patch:
---------------
   -> https://git.qemu.org/?p=qemu.git;a=commit;h=2098b073f398cd628c09c5a78537a6854

CVE-2017-18043 assigned via - https://cveform.mitre.org.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
