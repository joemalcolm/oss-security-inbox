X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Thursday" "12" "October" "2017" "23:32:59" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1710122325300.10613@wniryva>" "23" "[oss-security] CVE-2017-15289 Qemu: cirrus: OOB access issue in mode4and5 write functions" nil nil nil "10" "2017101218:02:59" "[oss-security] CVE-2017-15289 Qemu: cirrus: OOB access issue in mode4and5 write functions" (number mark "U       ppandit@redh Oct 12   23/656   " thread-indent "\"[oss-security] CVE-2017-15289 Qemu: cirrus: OOB access issue in mode4and5 write functions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11442 invoked by uid 550); 12 Oct 2017 18:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9966 invoked from network); 12 Oct 2017 18:03:18 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 84486C2591BA
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Thu, 12 Oct 2017 23:32:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: niuguoxiang <niuguoxiang@huawei.com>
Message-ID: <nycvar.YSQ.7.76.1710122325300.10613@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 12 Oct 2017 18:03:06 +0000 (UTC)
Subject: [oss-security] CVE-2017-15289 Qemu: cirrus: OOB access issue in mode4and5 write
 functions

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds write access issues. It could occur while 
writing to VGA memory via mode4and5 write functions.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-10/msg02557.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1501290

This issue was reported by Guoxiang Niu.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
