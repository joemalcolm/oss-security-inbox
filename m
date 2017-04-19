X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["797" "Wednesday" "19" "April" "2017" "15:15:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1704191512410.20535@wniryva>" "26" "[oss-security] CVE-2017-7718 Qemu: display: cirrus: OOB read access issue" nil nil nil "4" "2017041909:45:24" "[oss-security] CVE-2017-7718 Qemu: display: cirrus: OOB read access issue" (number mark "U       ppandit@redh Apr 19   26/797   " thread-indent "\"[oss-security] CVE-2017-7718 Qemu: display: cirrus: OOB read access issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28109 invoked by uid 550); 19 Apr 2017 09:45:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28085 invoked from network); 19 Apr 2017 09:45:41 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 87C394E341
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 87C394E341
Date: Wed, 19 Apr 2017 15:15:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Jiangxin <jiangxin1@huawei.com>
Message-ID: <alpine.LFD.2.20.1704191512410.20535@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 19 Apr 2017 09:45:28 +0000 (UTC)
Subject: [oss-security] CVE-2017-7718 Qemu: display: cirrus: OOB read access issue

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds access issue. It could occur while copying VGA 
data via bitblt functions cirrus_bitblt_rop_fwd_transp_ and/or 
cirrus_bitblt_rop_fwd_.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch
--------------
   -> http://git.qemu-project.org/?p=qemu.git;a=commitdiff;h=215902d7b6fb50c6fc216fc74f770858278ed904

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1443441

This issue was reported by Jiangxin of PSIRT Huawei Inc.

'CVE-2017-7718' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
