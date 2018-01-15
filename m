X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["592" "Monday" "15" "January" "2018" "23:40:26" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1801152337380.28933@wniryva>" "18" "[oss-security] CVE-2017-18030 Qemu: Out-of-bounds access in cirrus_invalidate_region routine" nil nil nil "1" "2018011518:10:26" "[oss-security] CVE-2017-18030 Qemu: Out-of-bounds access in cirrus_invalidate_region routine" (number mark "U       ppandit@redh Jan 15   18/592   " thread-indent "\"[oss-security] CVE-2017-18030 Qemu: Out-of-bounds access in cirrus_invalidate_region routine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4093 invoked by uid 550); 15 Jan 2018 18:10:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4074 invoked from network); 15 Jan 2018 18:10:44 -0000
Date: Mon, 15 Jan 2018 23:40:26 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: jiangxin1@huawei.com
Message-ID: <nycvar.YSQ.7.76.1801152337380.28933@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Mon, 15 Jan 2018 18:10:33 +0000 (UTC)
Subject: [oss-security] CVE-2017-18030 Qemu: Out-of-bounds access in cirrus_invalidate_region
 routine

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds access issue. It could occur while refreshing 
vnc surface area, in case the initial pitch was negative in 
cirrus_invalidate_region.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://git.qemu.org/?p=qemu.git;a=commitdiff;h=f153b563f8cf121aebf5a2fff5f0110faf58ccb3

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
