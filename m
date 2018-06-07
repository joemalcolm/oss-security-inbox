X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["770" "Thursday" "7" "June" "2018" "12:08:19" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1806071203320.23724@wniryva>" "22" "[oss-security] CVE-2018-11806 Qemu: slirp: heap buffer overflow while reassembling fragmented datagrams" "^cc:" nil nil "6" "2018060706:38:19" "[oss-security] CVE-2018-11806 Qemu: slirp: heap buffer overflow while reassembling fragmented datagrams" (number mark "U       ppandit@redh Jun  7   22/770   " thread-indent "\"[oss-security] CVE-2018-11806 Qemu: slirp: heap buffer overflow while reassembling fragmented datagrams\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9305 invoked by uid 550); 7 Jun 2018 06:38:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9278 invoked from network); 7 Jun 2018 06:38:42 -0000
X-X-Sender: pjp@javelin
Message-ID: <nycvar.YSQ.7.76.1806071203320.23724@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Thu, 07 Jun 2018 06:38:30 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Thu, 07 Jun 2018 06:38:30 +0000 (UTC) for IP:'10.11.54.5' DOMAIN:'int-mx05.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'ppandit@redhat.com' RCPT:''
cc: ZDI Disclosures <zdi-disclosures@trendmicro.com>
Date: Thu, 7 Jun 2018 12:08:19 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-11806 Qemu: slirp: heap buffer overflow while reassembling
 fragmented datagrams
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A heap buffer overflow issue was found in the way Slirp networking back-end in 
QEMU processes fragmented packets. It could occur while reassembling the 
fragmented datagrams of an incoming packet.

A privileged user/process inside guest could use this flaw to crash the Qemu 
process resulting in DoS OR potentially leverage it to execute arbitrary code 
on the host with privileges of the Qemu process.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-06/msg01012.html

This issue was reported by Jskz - Zero Day Initiative (trendmicro.com).

'CVE-2018-11806' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
