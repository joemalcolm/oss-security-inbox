X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["600" "Tuesday" "28" "August" "2018" "16:22:34" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1808281620230.4708@xnncv>" "20" "[oss-security] CVE-2018-15746 Qemu: seccomp: blacklist is not applied to all threads" "^cc:" nil nil "8" "2018082810:52:34" "[oss-security] CVE-2018-15746 Qemu: seccomp: blacklist is not applied to all threads" (number mark "U       ppandit@redh Aug 28   20/600   " thread-indent "\"[oss-security] CVE-2018-15746 Qemu: seccomp: blacklist is not applied to all threads\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11987 invoked by uid 550); 28 Aug 2018 10:52:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11969 invoked from network); 28 Aug 2018 10:52:55 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1808281620230.4708@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Tue, 28 Aug 2018 10:52:43 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Tue, 28 Aug 2018 10:52:43 +0000 (UTC) for IP:'10.11.54.6' DOMAIN:'int-mx06.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'ppandit@redhat.com' RCPT:''
cc: Jann Horn <jannh@google.com>
Date: Tue, 28 Aug 2018 16:22:34 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-15746 Qemu: seccomp: blacklist is not applied to all
 threads
To: oss security list <oss-security@lists.openwall.com>

   Hello,

An issue was found in the way QEMU implements Seccomp sandboxing. In that, all 
QEMU threads are not bound by the sandbox. A guest user/process maybe be able 
to use this flaw to crash a guest resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-08/msg04892.html

Reference:
----------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-08/msg02289.html

'CVE-2018-15746' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
