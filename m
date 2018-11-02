X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["633" "Friday" "2" "November" "2018" "14:27:05" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1811021424410.17672@xnncv>" "18" "[oss-security] CVE-2018-16847 QEMU: nvme: Out-of-bounds r/w buffer access in cmb operations" nil nil nil "11" "2018110208:57:05" "[oss-security] CVE-2018-16847 QEMU: nvme: Out-of-bounds r/w buffer access in cmb operations" (number mark "U       ppandit@redh Nov  2   18/633   " thread-indent "\"[oss-security] CVE-2018-16847 QEMU: nvme: Out-of-bounds r/w buffer access in cmb operations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32571 invoked by uid 550); 2 Nov 2018 08:57:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32553 invoked from network); 2 Nov 2018 08:57:22 -0000
Date: Fri, 2 Nov 2018 14:27:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <nycvar.YSQ.7.76.1811021424410.17672@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Fri, 02 Nov 2018 08:57:10 +0000 (UTC)
Subject: [oss-security] CVE-2018-16847 QEMU: nvme: Out-of-bounds r/w buffer access in cmb
 operations

   Hello,

An OOB heap buffer r/w access issue was found in the NVM Express Controller 
emulation in QEMU.  It could occur in nvme_cmb_ops routines in nvme devices. A 
guest user/process could use this flaw to crash the QEMU process resulting in 
DoS or potentially run arbitrary code with privileges of the QEMU process.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg00200.html

This issue was found and reported by Li Qiang. 'CVE-2018-16847' assigned by 
Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
