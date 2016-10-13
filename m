X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1004" "Thursday" "13" "October" "2016" "10:07:08" "-0400" "CAI Qian" "caiqian@redhat.com" "<1215560150.734283.1476367628231.JavaMail.zimbra@redhat.com>" "22" "[oss-security] CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation" nil nil nil "10" "2016101314:07:08" "[oss-security] CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation" (number mark "U       caiqian@redh Oct 13   22/1004  " thread-indent "\"[oss-security] CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation\"\n") "<963884651.726428.1476366904945.JavaMail.zimbra@redhat.com>" ("<963884651.726428.1476366904945.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32756 invoked by uid 550); 13 Oct 2016 14:07:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32735 invoked from network); 13 Oct 2016 14:07:20 -0000
Date: Thu, 13 Oct 2016 10:07:08 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1215560150.734283.1476367628231.JavaMail.zimbra@redhat.com>
In-Reply-To: <963884651.726428.1476366904945.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation
Thread-Index: iQU5r9CeEuByr2ZZ6M/Ek5qvrO6o2A==
Subject: [oss-security] CVE request: kernel - local DoS due to a page lock order bug in the
 XFS seek hole/data implementation

Running the trinity syscall fuzzer inside a docker container as an non-privileged user below,

$ trinity -g vfs --arch 64 --disable-fds=sockets --disable-fds=perf --disable-fds=epoll
--disable-fds=eventfd --disable-fds=pseudo --disable-fds=timerfd --disable-fds=memfd
--disable-fds=drm

always trigger a deadlock/hang at the fdatasync() syscall within 30 minutes with traces
(including sysrq-w info as well) like this, http://people.redhat.com/qcai/tmp/dmesg

This can be reproduced on any kernel post v4.4-rc1 as long as including this commit.

fc0561cefc04e7803c0f6501ca4f310a502f65b8
xfs: optimise away log forces on timestamp updates for fdatasync

Reverted the above commit against the latest mainline allows the trinity to run more than
10 hours without any deadlock/hang.

This had also been reported to the XFS maintainer and diagnosed as a page lock order bug
in the XFS seek hole/data implementation and presumably is still working on a fix better
than to revert the above commit.

   CAI Qian
