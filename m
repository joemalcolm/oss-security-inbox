X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["787" "Wednesday" "1" "March" "2017" "23:38:14" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1703012335480.15645@wniryva>" "25" "[oss-security] CVE-2017-6414 Qemu: libcacard: host memory leakage while creating new APDU" nil nil nil "3" "2017030118:08:14" "[oss-security] CVE-2017-6414 Qemu: libcacard: host memory leakage while creating new APDU" (number mark "U       ppandit@redh Mar  1   25/787   " thread-indent "\"[oss-security] CVE-2017-6414 Qemu: libcacard: host memory leakage while creating new APDU\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5489 invoked by uid 550); 1 Mar 2017 18:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5468 invoked from network); 1 Mar 2017 18:08:31 -0000
Date: Wed, 1 Mar 2017 23:38:14 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1703012335480.15645@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 01 Mar 2017 18:08:20 +0000 (UTC)
Subject: [oss-security] CVE-2017-6414 Qemu: libcacard: host memory leakage while creating
 new APDU

   Hello,

The CAC(Common Access Card) library, used by Quick Emulator(Qemu) to implement 
smartcard support, is vulnerable to a host memory leakage issue. It could 
occur while allocating a new APDU object using guest supplied raw byte stream 
in 'vcard_apdu_new'.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/spice/libcacard/commit/?id=9113dc6a303604a2d9812ac70c17d076ef11886c

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1427833

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6414' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
