X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["806" "Thursday" "23" "February" "2017" "09:59:13" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702230954570.7757@wniryva>" "22" "[oss-security] CVE-2017-2633 Qemu: VNC: memory corruption due to unchecked resolution limit" nil nil nil "2" "2017022304:29:13" "[oss-security] CVE-2017-2633 Qemu: VNC: memory corruption due to unchecked resolution limit" (number mark "U       ppandit@redh Feb 23   22/806   " thread-indent "\"[oss-security] CVE-2017-2633 Qemu: VNC: memory corruption due to unchecked resolution limit\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32729 invoked by uid 550); 23 Feb 2017 04:29:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32708 invoked from network); 23 Feb 2017 04:29:29 -0000
Date: Thu, 23 Feb 2017 09:59:13 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1702230954570.7757@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 23 Feb 2017 04:29:19 +0000 (UTC)
Subject: [oss-security] CVE-2017-2633 Qemu: VNC: memory corruption due to unchecked resolution
 limit

   Hello,

Quick Emulator(Qemu) built with the VNC display driver support is vulnerable 
to an out-of-bounds memory access issue. It could occur while refreshing the 
vnc display surface area in 'vnc_refresh_server_surface'.

A user/process inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> http://git.qemu-project.org/?p=qemu.git;a=commitdiff;h=bea60dd7679364493a0d7f5b54316c767cf894ef
   -> http://git.qemu-project.org/?p=qemu.git;a=commitdiff;h=9f64916da20eea67121d544698676295bbb105a7

Older versions of Qemu are affected, latest upstream releases are not.

'CVE-2017-2633' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
