X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["606" "Wednesday" "22" "May" "2019" "16:50:25" "+0530" "P J P" "ppandit@redhat.com" nil "18" nil "^Date:" nil nil "5" nil nil (number mark "U       ppandit@redh May 22   18/606   " thread-indent "\"[oss-security] CVE-2019-12247 QEMU: qemu-guest-agent: integer overflow while running guest-exec command\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12247 QEMU: qemu-guest-agent: integer overflow while running guest-exec command" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14008 invoked by uid 550); 22 May 2019 11:20:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13984 invoked from network); 22 May 2019 11:20:48 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1905221648340.6754@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 22 May 2019 11:20:36 +0000 (UTC)
Date: Wed, 22 May 2019 16:50:25 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-12247 QEMU: qemu-guest-agent: integer overflow while running
 guest-exec command
To: oss security list <oss-security@lists.openwall.com>

   Hello,

An integer overflow issue was found in the QEMU Guest Agent in QEMU, while 
reading argument list passed to the 'guest-exec' qmp command. An attacker 
could exploit this by sending a crafted QMP command to the agent via a 
listening socket to trigger the overflow. It may crash the QEMU guest agent, 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-05/msg04596.html

This issue was reported by Guoxiang Niu of huawei.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
