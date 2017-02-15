X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["758" "Wednesday" "15" "February" "2017" "15:26:03" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702151522560.17523@wniryva>" "24" "[oss-security] CVE-2017-2630 Qemu: nbd: oob stack write in client routine drop_sync" nil nil nil "2" "2017021509:56:03" "[oss-security] CVE-2017-2630 Qemu: nbd: oob stack write in client routine drop_sync" (number mark "U       ppandit@redh Feb 15   24/758   " thread-indent "\"[oss-security] CVE-2017-2630 Qemu: nbd: oob stack write in client routine drop_sync\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27841 invoked by uid 550); 15 Feb 2017 09:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27821 invoked from network); 15 Feb 2017 09:56:19 -0000
Date: Wed, 15 Feb 2017 15:26:03 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Eric Blake <eblake@redhat.com>
Message-ID: <alpine.LFD.2.20.1702151522560.17523@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 15 Feb 2017 09:56:09 +0000 (UTC)
Subject: [oss-security] CVE-2017-2630 Qemu: nbd: oob stack write in client routine
 drop_sync

   Hello,

Quick Emulator(Qemu) built with the Network Block Device(NBD) client support 
is vulnerable to a stack buffer overflow issue. It could occur while 
processing server's response to a 'NBD_OPT_LIST' request.

A malicious NBD server could use this issue to crash remote NBD client 
resulting in DoS or potentially execute arbitrary code on client host with 
privileges of the Qemu process.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-02/msg01246.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1422415

'CVE-2017-2630' is assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
