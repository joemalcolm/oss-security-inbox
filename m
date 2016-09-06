X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["708" "Tuesday" "6" "September" "2016" "18:22:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609061818400.23358@wniryva>" "20" "[oss-security] CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages" nil nil nil "9" "2016090612:52:24" "[oss-security] CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages" (number mark "U       ppandit@redh Sep  6   20/708   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32431 invoked by uid 550); 6 Sep 2016 12:52:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32410 invoked from network); 6 Sep 2016 12:52:41 -0000
Date: Tue, 6 Sep 2016 18:22:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Tom Victor <vv474172261@gmail.com>
Message-ID: <alpine.LFD.2.20.1609061818400.23358@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Tue, 06 Sep 2016 12:52:29 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: mptsas: invalid memory access while building
 configuration pages

   Hello,

Quick emulator(Qemu) built with the LSI SAS1068 Host Bus emulation support, is 
vulnerable to an invalid memory access issue. It could occur while building 
configuration page headers in 'mptsas_config_manufacturing_1'.

A privileged user inside guest could use this flaw to crash the Qemu process 
on the host, resulting in DoS.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg04295.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg04296.html

This issue was reported by Victor V of the Marvel Team, 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
