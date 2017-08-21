X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["572" "Monday" "21" "August" "2017" "16:50:48" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1708211648460.15179@wniryva>" "19" "[oss-security] CVE-2017-12809 Qemu: ide: flushing of empty CDROM drives leads to NULL dereference" nil nil nil "8" "2017082111:20:48" "[oss-security] CVE-2017-12809 Qemu: ide: flushing of empty CDROM drives leads to NULL dereference" (number mark "U       ppandit@redh Aug 21   19/572   " thread-indent "\"[oss-security] CVE-2017-12809 Qemu: ide: flushing of empty CDROM drives leads to NULL dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10060 invoked by uid 550); 21 Aug 2017 11:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10042 invoked from network); 21 Aug 2017 11:21:10 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 87A2F61466
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Mon, 21 Aug 2017 16:50:48 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Kieron Shorrock <kshorrock@paloaltonetworks.com>
Message-ID: <alpine.LFD.2.20.1708211648460.15179@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 21 Aug 2017 11:20:58 +0000 (UTC)
Subject: [oss-security] CVE-2017-12809 Qemu: ide: flushing of empty CDROM drives leads to
 NULL dereference

   Hello,

Quick emulator built with the IDE disk and CD/DVD-ROM Emulator support is 
vulnerable to a null pointer dereference issue. It could occur while flushing 
an empty CDROM device drive.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-08/msg01850.html

'CVE-2017-12809' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
