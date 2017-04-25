X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Tuesday" "25" "April" "2017" "15:23:42" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1704251521270.24794@wniryva>" "25" "[oss-security] CVE-2017-8086 Qemu: 9pfs: host memory leakage via v9pfs_list_xattr" nil nil nil "4" "2017042509:53:42" "[oss-security] CVE-2017-8086 Qemu: 9pfs: host memory leakage via v9pfs_list_xattr" (number mark "U       ppandit@redh Apr 25   25/746   " thread-indent "\"[oss-security] CVE-2017-8086 Qemu: 9pfs: host memory leakage via v9pfs_list_xattr\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5853 invoked by uid 550); 25 Apr 2017 09:54:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5835 invoked from network); 25 Apr 2017 09:53:59 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 16E349F727
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 16E349F727
Date: Tue, 25 Apr 2017 15:23:42 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1704251521270.24794@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Tue, 25 Apr 2017 09:53:48 +0000 (UTC)
Subject: [oss-security] CVE-2017-8086 Qemu: 9pfs: host memory leakage via v9pfs_list_xattr

   Hello,

Quick Emulator(Qemu) built with the virtio-9p back-end support is vulnerable 
to a memory leakage issue. It could occur while querying file system extended 
attributes via 9pfs_list_xattr() routine.

A privileged user/process inside guest could use this flaw to leak host memory 
resulting in Dos.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=4ffcdef4277a91af15a3c09f7d16af072c29f3f2

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1444781

This issue was reported by Li Qiang of Qihoo 360 Gear Team.

'CVE-2017-8086' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
