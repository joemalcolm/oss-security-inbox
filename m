X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Friday" "5" "January" "2018" "07:52:32" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1410041057.3565448.1515156752734.JavaMail.zimbra@redhat.com>" "25" "[oss-security] CVE-2017-15129: Linux kernel: net: double-free and memory corruption in get_net_ns_by_id()" nil nil nil "1" "2018010512:52:32" "[oss-security] CVE-2017-15129: Linux kernel: net: double-free and memory corruption in get_net_ns_by_id()" (number mark "U       vdronov@redh Jan  5   25/963   " thread-indent "\"[oss-security] CVE-2017-15129: Linux kernel: net: double-free and memory corruption in get_net_ns_by_id()\"\n") "<216057991.3565169.1515156657691.JavaMail.zimbra@redhat.com>" ("<216057991.3565169.1515156657691.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26589 invoked by uid 550); 5 Jan 2018 12:52:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26568 invoked from network); 5 Jan 2018 12:52:44 -0000
Date: Fri, 5 Jan 2018 07:52:32 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1410041057.3565448.1515156752734.JavaMail.zimbra@redhat.com>
In-Reply-To: <216057991.3565169.1515156657691.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.202, 10.4.195.2]
Thread-Topic: CVE-2017-15129: Linux kernel: net: double-free and memory corruption in get_net_ns_by_id()
Thread-Index: M09yAbC5Hy8UKFV7ADNlzVKwwNGuMw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 05 Jan 2018 12:52:33 +0000 (UTC)
Subject: [oss-security] CVE-2017-15129: Linux kernel: net: double-free and memory
 corruption in get_net_ns_by_id()

Heololo,

A use-after-free vulnerability was found in a network namespaces code affecting the Linux
kernel since  v4.0-rc1 through v4.15-rc5. The function get_net_ns_by_id() does not check
for the net::count value after it has found a peer network in netns_ids idr which could
lead to double free and memory corruption. This vulnerability could allow an unprivileged
local user to induce kernel memory corruption on the system, leading to a crash. Due to
the nature of the flaw, privilege escalation cannot be fully ruled out, although we believe
it is unlikely.

References:

https://marc.info/?l=linux-netdev&m=151370451121029&w=2

https://marc.info/?t=151370468900001&r=1&w=2 (a whole thread)

https://bugzilla.redhat.com/show_bug.cgi?id=1531174

An upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=21b5944350052d2583e82dd59b19a9ba94a007f0

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer

