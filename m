X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["663" "Tuesday" "18" "August" "2015" "01:38:29" "-0400" "Wade Mealing" "wmealing@redhat.com" "<1385098753.10178920.1439876309298.JavaMail.zimbra@redhat.com>" "22" "[oss-security] CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service." nil nil nil "8" "2015081805:38:29" "[oss-security] CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service." (number mark "        wmealing@red Aug 18   22/663   " thread-indent "\"[oss-security] CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service.\"\n") "<1321721814.8923718.1439602966890.JavaMail.zimbra@redhat.com>" ("<1321721814.8923718.1439602966890.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32192 invoked by uid 550); 18 Aug 2015 05:38:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32170 invoked from network); 18 Aug 2015 05:38:41 -0000
Message-ID: <1385098753.10178920.1439876309298.JavaMail.zimbra@redhat.com>
In-Reply-To: <1321721814.8923718.1439602966890.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.48.179]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC44 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service.
Thread-Index: vM4OhtiJRkXxsp2Vmn1a2GOJ1bgODQ==
Cc: cve-assign@mitre.org
Date: Tue, 18 Aug 2015 01:38:29 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - Linux kernel - perf on ppp64 - unbounded checks in
 perf_callchain_user_64 denial of service.
To: OSS Security List <oss-security@lists.openwall.com>

Gday,

A malicious user could create a special stack layout that fools
the perf_callchain_user_64 function (called by perf record) into 
an infinite loop, tying up that particular CPU and the process 
can not be killed.

A kernel patch was committed upstream capping the maximum user-level
stacktrace collected by perf to PERF_MAX_STACK_DEPTH on 64bit powerpc
architectures. This affects ppc64 kernels that support perf.

Thanks,

Wade Mealing

Upstream fix
------------
- https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9a5cbce421a283e6aea3c4007f141735bf9da8c3

Red Hat Bugzilla:
- https://bugzilla.redhat.com/show_bug.cgi?id=1218454

