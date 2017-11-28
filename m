X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Tuesday" "28" "November" "2017" "23:26:43" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1711282322150.6216@wniryva>" "22" "[oss-security] CVE-2017-15118 Qemu: stack buffer overflow in NBD server triggered via long export name" nil nil nil "11" "2017112817:56:43" "[oss-security] CVE-2017-15118 Qemu: stack buffer overflow in NBD server triggered via long export name" (number mark "U       ppandit@redh Nov 28   22/702   " thread-indent "\"[oss-security] CVE-2017-15118 Qemu: stack buffer overflow in NBD server triggered via long export name\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32055 invoked by uid 550); 28 Nov 2017 17:57:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32007 invoked from network); 28 Nov 2017 17:57:00 -0000
Date: Tue, 28 Nov 2017 23:26:43 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Eric Blake <eblake@redhat.com>
Message-ID: <nycvar.YSQ.7.76.1711282322150.6216@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 28 Nov 2017 17:56:49 +0000 (UTC)
Subject: [oss-security] CVE-2017-15118 Qemu: stack buffer overflow in NBD server triggered
 via long export name

   Hello,

A stack based buffer overflow vulnerability was found in NBD server 
implementation in Qemu allowing client to request an export name of size up to 
4096 bytes, which in fact should be limited to 256 bytes, allowing to cause 
out-of-bounds stack write in Qemu process.

If NBD server requires TLS, the attacker cannot trigger the buffer overflow 
without first successfully negotiating TLS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-11/msg05045.html

Reference:
----------
   ->https://bugzilla.redhat.com/show_bug.cgi?id=1516922

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
