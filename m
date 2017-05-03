X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Wednesday" "3" "May" "2017" "14:19:40" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1705031412570.32279@wniryva>" "25" "[oss-security] CVE-2017-8309 Qemu: audio: host memory leakage via capture buffer" "^cc:" nil nil "5" "2017050308:49:40" "[oss-security] CVE-2017-8309 Qemu: audio: host memory leakage via capture buffer" (number mark "        ppandit@redh May  3   25/712   " thread-indent "\"[oss-security] CVE-2017-8309 Qemu: audio: host memory leakage via capture buffer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22332 invoked by uid 550); 3 May 2017 08:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22311 invoked from network); 3 May 2017 08:49:56 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A4065C054C43
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A4065C054C43
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1705031412570.32279@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 03 May 2017 08:49:44 +0000 (UTC)
cc: Jiangxin <jiangxin1@huawei.com>
Date: Wed, 3 May 2017 14:19:40 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-8309 Qemu: audio: host memory leakage via capture buffer
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the Audio subsystem support is vulnerable to a 
host memory leakage issue. It could occur if a guest user was to repeatedly 
start and stop audio capture.

A privileged user inside guest could use this flaw to exhaust host memory, 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-04/msg05587.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1446517

This issue was reported by Jiang Xin (PSIRT Huawei inc.)

'CVE-2017-8309' allocated via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
