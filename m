X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Wednesday" "19" "April" "2017" "13:35:12" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1704191332230.20535@wniryva>" "25" "[oss-security] CVE-2017-7471 Qemu: 9p: virtfs allows guest to change filesystem attributes on host" nil nil nil "4" "2017041908:05:12" "[oss-security] CVE-2017-7471 Qemu: 9p: virtfs allows guest to change filesystem attributes on host" (number mark "U       ppandit@redh Apr 19   25/786   " thread-indent "\"[oss-security] CVE-2017-7471 Qemu: 9p: virtfs allows guest to change filesystem attributes on host\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9705 invoked by uid 550); 19 Apr 2017 08:05:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9687 invoked from network); 19 Apr 2017 08:05:29 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com E3A48C05B1E4
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com E3A48C05B1E4
Date: Wed, 19 Apr 2017 13:35:12 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Greg Kurz <groug@kaod.org>
Message-ID: <alpine.LFD.2.20.1704191332230.20535@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 19 Apr 2017 08:05:17 +0000 (UTC)
Subject: [oss-security] CVE-2017-7471 Qemu: 9p: virtfs allows guest to change filesystem
 attributes on host

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to an improper access control issue. 
It could occur while accessing files on a shared host directory.

A privileged user inside guest could use this flaw to access host file system 
beyond the shared folder and potentially escalating their privileges on a 
host.

Upstream patches:
-----------------
   -> http://git.qemu-project.org/?p=qemu.git;a=commitdiff;h=9c6b899f7a46893ab3b671e341a2234e9c0c060e

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1443401


'CVE-2017-7471' has been assigned to it by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
