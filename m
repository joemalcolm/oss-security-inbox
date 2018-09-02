X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["925" "Monday" "3" "September" "2018" "00:10:05" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1809030005140.14426@xnncv>" "27" "[oss-security] CVE-2018-10853 kernel: kvm: guest userspace to guest kernel write" nil nil nil "9" "2018090218:40:05" "[oss-security] CVE-2018-10853 kernel: kvm: guest userspace to guest kernel write" (number mark "U       ppandit@redh Sep  3   27/925   " thread-indent "\"[oss-security] CVE-2018-10853 kernel: kvm: guest userspace to guest kernel write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3856 invoked by uid 550); 2 Sep 2018 18:40:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3832 invoked from network); 2 Sep 2018 18:40:29 -0000
Date: Mon, 3 Sep 2018 00:10:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Andy Lutomirski <luto@kernel.org>, 
    =?ISO-8859-15?Q?Mika_Penttil=E4?= <mika.penttila@nextfour.com>
Message-ID: <nycvar.YSQ.7.76.1809030005140.14426@xnncv>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811327-1575317052-1535913617=:14426"
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Sun, 02 Sep 2018 18:40:17 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Sun, 02 Sep 2018 18:40:17 +0000 (UTC) for IP:'10.11.54.4' DOMAIN:'int-mx04.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'ppandit@redhat.com' RCPT:''
Subject: [oss-security] CVE-2018-10853 kernel: kvm: guest userspace to guest kernel write

---1463811327-1575317052-1535913617=:14426
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

   Hello,

A flaw was found in the way Linux kernel KVM hypervisor emulated instructions 
such as sgdt/sidt/fxsave/fxrstor. It did not check current privilege(CPL) 
level while emulating unprivileged instructions.

An unprivileged guest user/process could use this flaw to potentially escalate 
privileges inside guest.

Upstream patch:
   -> https://git.kernel.org/linus/3c9fa24ca7c9c47605672916491f79e8ccacb9e6

Issue introduced in: (kernel v4.10+)
   -> https://git.kernel.org/linus/129a72a0d3c8e139a04512325384fe5ac119e74

This issue was reported by Andy Lutomirski and Mika Penttilä. CVE-2018-10853 
assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
---1463811327-1575317052-1535913617=:14426--
