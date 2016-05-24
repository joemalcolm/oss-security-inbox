X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["628" "Tuesday" "24" "May" "2016" "15:07:37" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605241505150.26750@wniryva>" "19" "[oss-security] CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests" nil nil nil "5" "2016052409:37:37" "[oss-security] CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests" (number mark "U       ppandit@redh May 24   19/628   " thread-indent "\"[oss-security] CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23668 invoked by uid 550); 24 May 2016 09:38:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23601 invoked from network); 24 May 2016 09:38:01 -0000
Date: Tue, 24 May 2016 15:07:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605241505150.26750@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Tue, 24 May 2016 09:37:49 +0000 (UTC)
Subject: [oss-security] CVE Request: Qemu: scsi: mptsas infinite loop in
 mptsas_fetch_requests

   Hello,

Quick Emulator(Qemu) built with the LSI SAS1068 Host Bus Adapter emulation 
support is vulnerable to an infinite loop issue. It could occur while fetching 
new requests in mptsas_fetch_requests().

A privileged user inside guest could use this flaw to consume excessive host 
resources or crash the Qemu process resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04027.html

This issue was discovered and reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
