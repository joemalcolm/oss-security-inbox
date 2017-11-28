X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["647" "Tuesday" "28" "November" "2017" "23:32:37" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1711282327100.6216@wniryva>" "21" "[oss-security] CVE-2017-15119 Qemu: DoS via large option request" nil nil nil "11" "2017112818:02:37" "[oss-security] CVE-2017-15119 Qemu: DoS via large option request" (number mark "U       ppandit@redh Nov 28   21/647   " thread-indent "\"[oss-security] CVE-2017-15119 Qemu: DoS via large option request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15363 invoked by uid 550); 28 Nov 2017 18:02:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14313 invoked from network); 28 Nov 2017 18:02:56 -0000
Date: Tue, 28 Nov 2017 23:32:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Eric Blake <eblake@redhat.com>
Message-ID: <nycvar.YSQ.7.76.1711282327100.6216@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 28 Nov 2017 18:02:44 +0000 (UTC)
Subject: [oss-security] CVE-2017-15119 Qemu: DoS via large option request

   Hello,

Quick Emulator(Qemu) built with the Network Block Device(NBD) server support 
is vulnerable to a denial-of-service issue. It could occur if a client sent 
large option requests, making server waste CPU time on reading up to 4G bytes.

A client could use this flaw to keep the NBD server from serving other 
requests, resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-11/msg05044.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1516925

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
