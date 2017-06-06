X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["698" "Tuesday" "6" "June" "2017" "17:40:00" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706061738020.10792@wniryva>" "23" "[oss-security] CVE-2017-9374 Qemu: usb: ehci host memory leakage during hotunplug" nil nil nil "6" "2017060612:10:00" "[oss-security] CVE-2017-9374 Qemu: usb: ehci host memory leakage during hotunplug" (number mark "U       ppandit@redh Jun  6   23/698   " thread-indent "\"[oss-security] CVE-2017-9374 Qemu: usb: ehci host memory leakage during hotunplug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11314 invoked by uid 550); 6 Jun 2017 12:10:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11269 invoked from network); 6 Jun 2017 12:10:17 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com DCFEBC04B31B
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com DCFEBC04B31B
Date: Tue, 6 Jun 2017 17:40:00 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1706061738020.10792@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 06 Jun 2017 12:10:05 +0000 (UTC)
Subject: [oss-security] CVE-2017-9374 Qemu: usb: ehci host memory leakage during hotunplug

   Hello,

Quick Emulator(Qemu) built with the USB EHCI Emulation support is vulnerable 
to a memory leakage issue. It could occur while hot-unplugging the device, as 
it does not release the memory allocated at initialisation.

A guest user/process could use this issue to leak host memory, resulting in 
DoS for host.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=d710e1e7bd3d5bfc26b631f02ae87901ebe646b0

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1459132

This issue was reported by Li Qiang of Qihoo 360 Gear Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
