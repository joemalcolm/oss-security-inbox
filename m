X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["692" "Tuesday" "2" "June" "2015" "23:38:50" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1506022332310.14742@wniryva>" "20" "[oss-security] CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage" nil nil nil "6" "2015060218:08:50" "[oss-security] CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage" (number mark "        ppandit@redh Jun  2   20/692   " thread-indent "\"[oss-security] CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27834 invoked by uid 550); 2 Jun 2015 18:09:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27816 invoked from network); 2 Jun 2015 18:09:08 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.11.1506022332310.14742@wniryva>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
cc: Carl Henrik Lunde <chlunde@ping.uio.no>
Date: Tue, 2 Jun 2015 23:38:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Linux kernel: fs: udf heap overflow in
 __udf_adinicb_readpage
To: oss security list <oss-security@lists.openwall.com>

    Hello,

Linux kernel built with the UDF file system(CONFIG_UDF_FS) support is 
vulnerable to a crash. It could occur while reading from a corrupted/malicious 
udf file system image.

An unprivileged user could use this flaw to crash the kernel resulting in DoS.

Upstream fixes:
---------------
   -> https://git.kernel.org/linus/e159332b9af4b04d882dbcfe1bb0117f0a6d4b58
   -> https://git.kernel.org/linus/e237ec37ec154564f8690c5bd1795339955eeef9
   -> https://git.kernel.org/linus/a1d47b262952a45aae62bd49cfaf33dd76c11a2c

Thank you 'Carl H Lunde' for reporting this issue.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
