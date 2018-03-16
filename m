X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Friday" "16" "March" "2018" "05:30:50" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1169499474.11558307.1521192650055.JavaMail.zimbra@redhat.com>" "34" "[oss-security] CVE-2018-1068: Linux kernel: netfilter: ebtables: CONFIG_COMPAT: don't trust userland offsets" nil nil nil "3" "2018031609:30:50" "[oss-security] CVE-2018-1068: Linux kernel: netfilter: ebtables: CONFIG_COMPAT: don't trust userland offsets" (number mark "U       vdronov@redh Mar 16   34/1256  " thread-indent "\"[oss-security] CVE-2018-1068: Linux kernel: netfilter: ebtables: CONFIG_COMPAT: don't trust userland offsets\"\n") "<2028892076.10666435.1520944689288.JavaMail.zimbra@redhat.com>" ("<2028892076.10666435.1520944689288.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28394 invoked by uid 550); 16 Mar 2018 09:31:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28373 invoked from network); 16 Mar 2018 09:31:02 -0000
Date: Fri, 16 Mar 2018 05:30:50 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1169499474.11558307.1521192650055.JavaMail.zimbra@redhat.com>
In-Reply-To: <2028892076.10666435.1520944689288.JavaMail.zimbra@redhat.com>
References: <2028892076.10666435.1520944689288.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.54.16, 10.4.195.2]
Thread-Topic: CVE-2018-1068: kernel: netfilter: ebtables: CONFIG_COMPAT: don't trust userland offsets
Thread-Index: 3j53dZ3HDNxoeXREaHFmvZgWx4J+js7fCqWB
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 16 Mar 2018 09:30:50 +0000 (UTC)
Subject: [oss-security] CVE-2018-1068: Linux kernel: netfilter: ebtables: CONFIG_COMPAT:
 don't trust userland offsets

hello,

(we believe this flaw is semi-public. there are posts in public mailing
lists and a commit in the upstream Linux tree, but we are not aware of this bug
being considered as a security flaw and not aware of any exploits in the wild.
so we would like to explicitly post to oss-sec@)

a CVE id of CVE-2018-1068 was assigned to this flaw and we would like to ask to
use it in the related public communications.

so:

A flaw was found in the Linux kernel implementation of 32 bit syscall interface
for bridging allowing a privileged user to arbitrarily write to a limited range
of kernel memory. This flaw can be exploited not only by a system's privileged
user (a real "root" user), but also by an attacker who is a privileged user
(a "root" user) in a user+network namespace.

References:

https://marc.info/?l=linux-netdev&m=152023808817590&w=2

https://marc.info/?l=linux-netdev&m=152025888924151&w=2

https://bugzilla.redhat.com/show_bug.cgi?id=1552048

An upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b71812168571fa55e44cdd0254471331b9c4c4c6

https://github.com/torvalds/linux/commit/b71812168571fa55e44cdd0254471331b9c4c4c6

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
