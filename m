X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["976" "Friday" "21" "April" "2017" "14:47:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1704211444290.8068@wniryva>" "29" "[oss-security] CVE-2017-7980 Qemu: display: cirrus: OOB r/w access issues in bitblt routines" nil nil nil "4" "2017042109:17:36" "[oss-security] CVE-2017-7980 Qemu: display: cirrus: OOB r/w access issues in bitblt routines" (number mark "U       ppandit@redh Apr 21   29/976   " thread-indent "\"[oss-security] CVE-2017-7980 Qemu: display: cirrus: OOB r/w access issues in bitblt routines\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28210 invoked by uid 550); 21 Apr 2017 09:17:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28189 invoked from network); 21 Apr 2017 09:17:54 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 941926841E
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 941926841E
Date: Fri, 21 Apr 2017 14:47:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Jiangxin <jiangxin1@huawei.com>, Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1704211444290.8068@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 21 Apr 2017 09:17:41 +0000 (UTC)
Subject: [oss-security] CVE-2017-7980 Qemu: display: cirrus: OOB r/w access issues in bitblt
 routines

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds r/w access issues. It could occur while copying 
VGA data via various bitblt functions.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS OR potentially execute arbitrary code on a host with 
privileges of Qemu process on the host.

Upstream patches:
-----------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=026aeffcb4752054830ba203020ed6eb05bcaba8
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=ffaf857778286ca54e3804432a2369a279e73aa7

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1444371


This issue was independently reported by Jiangxin of PSIRT Huawei Inc. and Li 
Qiang of 360.cn Inc.

CVE-2017-7980 assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
