X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["700" "Wednesday" "19" "July" "2017" "11:50:56" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1707191148320.22338@wniryva>" "24" "[oss-security] CVE-2017-11434 Qemu: slirp: out-of-bounds read while parsing dhcp options" nil nil nil "7" "2017071906:20:56" "[oss-security] CVE-2017-11434 Qemu: slirp: out-of-bounds read while parsing dhcp options" (number mark "U       ppandit@redh Jul 19   24/700   " thread-indent "\"[oss-security] CVE-2017-11434 Qemu: slirp: out-of-bounds read while parsing dhcp options\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13419 invoked by uid 550); 19 Jul 2017 06:21:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13395 invoked from network); 19 Jul 2017 06:21:13 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 4B11B7A176
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 4B11B7A176
Date: Wed, 19 Jul 2017 11:50:56 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Reno Robert <renorobert@gmail.com>
Message-ID: <alpine.LFD.2.20.1707191148320.22338@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 19 Jul 2017 06:21:01 +0000 (UTC)
Subject: [oss-security] CVE-2017-11434 Qemu: slirp: out-of-bounds read while parsing dhcp
 options

    Hello,

Quick emulator(Qemu) built with the BOOTP/DHCP Server support is vulnerable to 
an OOB read issue. It could occur while parsing the DHCP options and vendor 
extensions options sent by a client.

A user/process could use this flaw to potentially crash the Qemu process on 
the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-07/msg05001.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1472611

This issue was reported by Reno Robert. CVE assigned via - https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
