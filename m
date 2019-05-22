X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["637" "Wednesday" "22" "May" "2019" "12:38:24" "+0530" "P J P" "ppandit@redhat.com" nil "20" nil nil nil nil "5" nil nil (number mark "U       ppandit@redh May 22   20/637   " thread-indent "\"[oss-security] CVE-2019-12155 QEMU: qxl: null pointer dereference while releasing spice resources\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12155 QEMU: qxl: null pointer dereference while releasing spice resources" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11831 invoked by uid 550); 22 May 2019 07:08:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11812 invoked from network); 22 May 2019 07:08:53 -0000
Date: Wed, 22 May 2019 12:38:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Bugs SysSec <bugs-syssec@rub.de>
Message-ID: <nycvar.YSQ.7.76.1905221234330.22124@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Wed, 22 May 2019 07:08:38 +0000 (UTC)
Subject: [oss-security] CVE-2019-12155 QEMU: qxl: null pointer dereference while releasing
 spice resources

   Hello,

A null pointer dereference issue was found the QXL VGA card emulator of QEMU. 
It could occur while releasing resources allocated for a SPICE server thread 
in interface_release_resources().

A guest user could use this flaw to crash the QEMU process resulting in DoS 
scenario.

Upstream patch:
---------------
   -> https://git.qemu.org/?p=qemu.git;a=commit;h=d52680fc932efb8a2f334cc6993e705ed1e31e99

This issue was reported by Sergej Schumilo, Cornelius Aschermann and Simon 
Wrner of Ruhr University Bochum.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
