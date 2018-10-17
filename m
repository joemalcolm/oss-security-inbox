X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Wednesday" "17" "October" "2018" "12:59:01" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1810171256410.14417@xnncv>" "23" "[oss-security] CVE-2018-18438 Qemu: Integer overflow in ccid_card_vscard_read() allows memory corruption" nil nil nil "10" "2018101707:29:01" "[oss-security] CVE-2018-18438 Qemu: Integer overflow in ccid_card_vscard_read() allows memory corruption" (number mark "U       ppandit@redh Oct 17   23/804   " thread-indent "\"[oss-security] CVE-2018-18438 Qemu: Integer overflow in ccid_card_vscard_read() allows memory corruption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27886 invoked by uid 550); 17 Oct 2018 07:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27864 invoked from network); 17 Oct 2018 07:29:17 -0000
Date: Wed, 17 Oct 2018 12:59:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Arash TC <tohidi.arash@gmail.com>
Message-ID: <nycvar.YSQ.7.76.1810171256410.14417@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 17 Oct 2018 07:29:05 +0000 (UTC)
Subject: [oss-security] CVE-2018-18438 Qemu: Integer overflow in ccid_card_vscard_read()
 allows memory corruption

   Hello,

An integer overflow issue was found in the CCID Passthru card device 
emulation, while reading card data in ccid_card_vscard_read() function. The 
ccid_card_vscard_read() function accepts a signed integer 'size' argument, 
which is subsequently used as unsigned size_t value in memcpy(), copying large 
amounts of memory.

A user inside guest could use this flaw to crash the Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-10/msg02396.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-10/msg02402.html

This issue was reported by Arash Tohidi. CVE requested via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
