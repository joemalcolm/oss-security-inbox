X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["733" "Wednesday" "18" "November" "2015" "02:57:37" "-0500" "Wade Mealing" "wmealing@redhat.com" "<225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>" "22" "[oss-security] CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed" nil nil nil "11" "2015111807:57:37" "[oss-security] CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed" (number mark "U       wmealing@red Nov 18   22/733   " thread-indent "\"[oss-security] CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed\"\n") "<1352166228.7759646.1447813908682.JavaMail.zimbra@redhat.com>" ("<1352166228.7759646.1447813908682.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5209 invoked by uid 550); 18 Nov 2015 07:57:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5189 invoked from network); 18 Nov 2015 07:57:49 -0000
Date: Wed, 18 Nov 2015 02:57:37 -0500 (EST)
From: Wade Mealing <wmealing@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Message-ID: <225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>
In-Reply-To: <1352166228.7759646.1447813908682.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.48.108]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF42 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed
Thread-Index: DIEkx76RuVCHHejZKFprVWCa1lB9lg==
Subject: [oss-security] CVE request - Linux kernel - Unix sockets use after free -
 peer_wait_queue prematurely freed

Gday,


A flaw was found in the Linux kernels implementation of Unix sockets(AF_UNIX).  A
server polling for data coming from a client socket may put the peer
socket on a wait list.  This peer may close the connection making
the reference on the wait list no longer valid. A determined attacker
could poison this memory and lead to bypassing permissions on a the socket, 
and packets being injected into the stream.  This may also panic the machine.

Thanks,

Wade Mealing

Original discussion:
- https://groups.google.com/forum/#!topic/syzkaller/3twDUI4Cpm8

Upstream patch:
- Patch discussion available at the same url, no final patch at the time of writing

Red Hat Bugzilla:
- https://bugzilla.redhat.com/show_bug.cgi?id=1282688
