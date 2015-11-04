X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["445" "Wednesday" "4" "November" "2015" "10:11:16" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1185185396.4061488.1446649876420.JavaMail.zimbra@redhat.com>" "15" "[oss-security] CVE request -- Linux kernel: selinux: rate-limit unrecognized netlink message warnings in selinux_nlmsg_perm()" nil nil nil "11" "2015110415:11:16" "[oss-security] CVE request -- Linux kernel: selinux: rate-limit unrecognized netlink message warnings in selinux_nlmsg_perm()" (number mark "U       vdronov@redh Nov  4   15/445   " thread-indent "\"[oss-security] CVE request -- Linux kernel: selinux: rate-limit unrecognized netlink message warnings in selinux_nlmsg_perm()\"\n") "<20140411115633.GA325@dhcp-25-225.brq.redhat.com>" ("<20140411115633.GA325@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7451 invoked by uid 550); 4 Nov 2015 16:04:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30056 invoked from network); 4 Nov 2015 15:11:28 -0000
Message-ID: <1185185396.4061488.1446649876420.JavaMail.zimbra@redhat.com>
In-Reply-To: <20140411115633.GA325@dhcp-25-225.brq.redhat.com>
References: <20140411115633.GA325@dhcp-25-225.brq.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.204.24]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF41 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- Linux kernel: selinux: rate-limit unrecognized netlink message warnings in selinux_nlmsg_perm()
Thread-Index: AqjyRODSfEJc9CmC0O8ASNYI2gw82Q==
Cc: Petr Matousek <pmatouse@redhat.com>
Date: Wed, 4 Nov 2015 10:11:16 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- Linux kernel: selinux: rate-limit unrecognized
 netlink message warnings in selinux_nlmsg_perm()
To: oss-security@lists.openwall.com

It was found that the kernel produces unlimited number of warning
messages in case certain malformed NETLINK packets are received.

A local, unprivileged user could generate such packets unlimitedly
and potentially flood the kernel and the system log with excessive
warning messages.

Upstream patch proposal:
http://article.gmane.org/gmane.linux.kernel.lsm/25958

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1278005

Thanks,
Vladis
