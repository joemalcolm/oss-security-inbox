X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["644" "Monday" "5" "June" "2017" "15:05:01" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706051454450.26243@wniryva>" "24" "[oss-security] CVE-2017-9373 Qemu: ide: ahci host memory leakage during hotunplug" "^cc:" nil nil "6" "2017060509:35:01" "[oss-security] CVE-2017-9373 Qemu: ide: ahci host memory leakage during hotunplug" (number mark "U       ppandit@redh Jun  5   24/644   " thread-indent "\"[oss-security] CVE-2017-9373 Qemu: ide: ahci host memory leakage during hotunplug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11831 invoked by uid 550); 5 Jun 2017 09:35:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11810 invoked from network); 5 Jun 2017 09:35:18 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com D9B7AC0467C7
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com D9B7AC0467C7
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1706051454450.26243@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 05 Jun 2017 09:35:07 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Mon, 5 Jun 2017 15:05:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9373 Qemu: ide: ahci host memory leakage during hotunplug
To: oss security list <oss-security@lists.openwall.com>

    Hello,

Quick emulator built with the IDE AHCI Emulation support is vulnerable to a 
host memory leakage issue. It could occur while hot-unplugging the AHCI 
device.

A privileged user inside guest could use this flaw to leak host memory 
resulting in DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=d68f0f778e7f4fbd674627274267f269e40f0b04

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1458270

This issue was reported by Li Qiang of Qihoo 360 Gear Team.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
