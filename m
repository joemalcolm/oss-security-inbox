X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["729" "Wednesday" "17" "May" "2017" "16:27:01" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1705171622060.32210@wniryva>" "25" "[oss-security] CVE-2017-7493 Qemu: 9pfs: guest privilege escalation in virtfs mapped-file mode" nil nil nil "5" "2017051710:57:01" "[oss-security] CVE-2017-7493 Qemu: 9pfs: guest privilege escalation in virtfs mapped-file mode" (number mark "U       ppandit@redh May 17   25/729   " thread-indent "\"[oss-security] CVE-2017-7493 Qemu: 9pfs: guest privilege escalation in virtfs mapped-file mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13729 invoked by uid 550); 17 May 2017 10:57:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13690 invoked from network); 17 May 2017 10:57:18 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com E862A80468
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com E862A80468
Date: Wed, 17 May 2017 16:27:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Leo Gaspard <leo@gaspard.io>
Message-ID: <alpine.LFD.2.20.1705171622060.32210@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 17 May 2017 10:57:06 +0000 (UTC)
Subject: [oss-security] CVE-2017-7493 Qemu: 9pfs: guest privilege escalation in virtfs
 mapped-file mode

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to an improper access control issue. 
It could occur while accessing virtfs metadata files in mapped-file security 
mode.

A guest user could use this flaw to escalate their privileges inside guest.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-05/msg03663.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1451709

'CVE-2017-7493' has been assigned to this issue by Red Hat Inc.

It was reported by Leo Gaspard.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
