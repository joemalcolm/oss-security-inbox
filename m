X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["624" "Friday" "6" "October" "2017" "12:20:09" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1710061218550.15372@wniryva>" "21" "[oss-security] CVE-2017-15038 Qemu: 9p: virtfs: information disclosure when reading extended attributes" nil nil nil "10" "2017100606:50:09" "[oss-security] CVE-2017-15038 Qemu: 9p: virtfs: information disclosure when reading extended attributes" (number mark "U       ppandit@redh Oct  6   21/624   " thread-indent "\"[oss-security] CVE-2017-15038 Qemu: 9p: virtfs: information disclosure when reading extended attributes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13772 invoked by uid 550); 6 Oct 2017 06:50:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13746 invoked from network); 6 Oct 2017 06:50:30 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C006F1F57F
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Fri, 6 Oct 2017 12:20:09 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
Message-ID: <nycvar.YSQ.7.76.1710061218550.15372@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 06 Oct 2017 06:50:19 +0000 (UTC)
Subject: [oss-security] CVE-2017-15038 Qemu: 9p: virtfs: information disclosure when reading
 extended attributes

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to an information disclosure issue. 
It could occur while accessing extended attributes of a file due to a race 
condition.

A user inside guest could use this flaw to disclose uninitialised heap memory 
contents on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-10/msg00729.html

This issue was reported by Tuomas Tynkkynen.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
