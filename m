X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["751" "Wednesday" "3" "May" "2017" "14:25:09" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1705031422560.32279@wniryva>" "25" "[oss-security] CVE-2017-8380 Qemu: scsi: megasas: out-of-bounds read in megasas_mmio_write" "^cc:" nil nil "5" "2017050308:55:09" "[oss-security] CVE-2017-8380 Qemu: scsi: megasas: out-of-bounds read in megasas_mmio_write" (number mark "U       ppandit@redh May  3   25/751   " thread-indent "\"[oss-security] CVE-2017-8380 Qemu: scsi: megasas: out-of-bounds read in megasas_mmio_write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14321 invoked by uid 550); 3 May 2017 08:55:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14300 invoked from network); 3 May 2017 08:55:25 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com EF1797704
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com EF1797704
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1705031422560.32279@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 03 May 2017 08:55:14 +0000 (UTC)
cc: YY Z <bigbird475958471@gmail.com>
Date: Wed, 3 May 2017 14:25:09 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-8380 Qemu: scsi: megasas: out-of-bounds read in
 megasas_mmio_write
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an out-of-bounds read access issue. It 
could occur while performing a MMIO write operation.

A privileged user inside guest could use this flaw to read host memory leading 
to potentially crash the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-04/msg04147.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1446577

This issue was reported by YY Z(researcher)

'CVE-2017-8380' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
