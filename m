X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1929" "Tuesday" "1" "March" "2016" "12:09:54" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<416950326.31158071.1456852194971.JavaMail.zimbra@redhat.com>" "41" "[oss-security] CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes" "^Date:" nil nil "3" "2016030117:09:54" "[oss-security] CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes" (number mark "        vdronov@redh Mar  1   41/1929  " thread-indent "\"[oss-security] CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes\"\n") "<320864395.31153872.1456851589859.JavaMail.zimbra@redhat.com>" ("<320864395.31153872.1456851589859.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16123 invoked by uid 550); 1 Mar 2016 17:10:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16094 invoked from network); 1 Mar 2016 17:10:07 -0000
Message-ID: <416950326.31158071.1456852194971.JavaMail.zimbra@redhat.com>
In-Reply-To: <320864395.31153872.1456851589859.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.19]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF44 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes
Thread-Index: lK6osx4CdY2l3MLs80O0JUBH9N9sOA==
Date: Tue, 1 Mar 2016 12:09:54 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- linux kernel: pipe: limit the per-user amount of
 pages allocated in pipes
To: oss-security@lists.openwall.com

Hello,

If possible, we would like to obtain a CVE-ID for the flaw currently
handled in the upstream commit:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=759c01142a5d0f364a462346168a56de28a80f52

The commit says: "Mitigates: CVE-2013-4312 (Linux 2.0+)", but it looks
like CVE-2013-4312 is for the different, though similar flaw which was
addressed recently:

"The Linux kernel before 4.4.1 allows local users to bypass file-
descriptor limits and cause a denial of service (memory consumption)
by sending each descriptor over a UNIX socket before closing it,
related to net/unix/af_unix.c and net/unix/garbage.c."
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2013-4312

As the root cause of this flaw is different (unrestricted kernel memory
allocation for pipes) I believe another CVE id is needed.

Description:

On no-so-small systems, it is possible for a single process to cause an OOM condition
by filling large pipes with data that are never read. A typical process filling 4096
pipes with 1 MB of data will use 4 GB of memory. On small systems it may be tricky to
set the pipe max size to prevent this from happening. The result is an OOM condition
and oom-killer is not able to help much, as the memory for the pipe data is a kernel
memory and a memory footprint of offensive processes is small. 

Upstream patch:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=759c01142a5d0f364a462346168a56de28a80f52

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1313428

Discussion threads:
https://www.spinics.net/lists/linux-fsdevel/msg92912.html | https://lkml.org/lkml/2015/12/28/150
https://www.spinics.net/lists/linux-fsdevel/msg93317.html | https://lkml.org/lkml/2016/1/11/310
https://www.spinics.net/lists/linux-fsdevel/msg93601.html | https://lkml.org/lkml/2016/1/18/171

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
