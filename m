X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["674" "Monday" "3" "April" "2017" "15:41:12" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1704031535260.21857@wniryva>" "23" "[oss-security] CVE-2017-7377 Qemu: 9pfs: host memory leakage via v9fs_create" nil nil nil "4" "2017040310:11:12" "[oss-security] CVE-2017-7377 Qemu: 9pfs: host memory leakage via v9fs_create" (number mark "U       ppandit@redh Apr  3   23/674   " thread-indent "\"[oss-security] CVE-2017-7377 Qemu: 9pfs: host memory leakage via v9fs_create\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29987 invoked by uid 550); 3 Apr 2017 10:11:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29962 invoked from network); 3 Apr 2017 10:11:28 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A850AC04B30E
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A850AC04B30E
Date: Mon, 3 Apr 2017 15:41:12 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1704031535260.21857@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 03 Apr 2017 10:11:16 +0000 (UTC)
Subject: [oss-security] CVE-2017-7377 Qemu: 9pfs: host memory leakage via v9fs_create

   Hello,

Quick Emulator(Qemu) built with the virtio-9p back-end support is vulnerable 
to a memory leakage issue. It could occur while doing a I/O operation via 
v9fs_create/v9fs_lcreate routine.

A privileged user/process inside guest could use this flaw to leak host memory 
resulting in Dos.

Upstream patch:
---------------
   -> http://git.qemu-project.org/?p=qemu.git;a=commit;h=d63fb193e71644a073b77ff5ac6f1216f2f6cf6e

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1437871

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
