X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1590" "Friday" "20" "January" "2017" "13:41:52" "+1100" "Harshula" "harshula@redhat.com" "<1484880112.11949.24.camel@redhat.com>" "44" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" "^Cc:" nil nil "1" "2017012002:41:52" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" (number mark "        harshula@red Jan 20   44/1590  " thread-indent "\"[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3651 invoked by uid 550); 20 Jan 2017 03:15:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19819 invoked from network); 20 Jan 2017 02:42:10 -0000
Message-ID: <1484880112.11949.24.camel@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 20 Jan 2017 02:42:00 +0000 (UTC)
Cc: Jesse Hertz <Jesse.Hertz@nccgroup.trust>,
        Wade Mealing
 <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 13:41:52 +1100
From: Harshula <harshula@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash
 kernel
To: oss-security@lists.openwall.com

Hi Folks,

Red Hat Product Security has been notified of a kernel vulnerability
that a local attacker can exploit to crash/panic the kernel and cause a
denial of service.

This was reported to Red Hat by Jesse Hertz (CC'd) (reproducer:
rt411016):

"A process that is in the same process group as the ``init'' process
(group id zero) can crash the Linux 2 kernel with several system calls
by passing in a process ID or process group ID of zero. The value zero
is a special value that indicates the current process ID or process
group. However, in this case it is also the process group ID of the
process."

I've been testing whether RHEL is vulnerable and found the following:

* Upstream/mainline is not vulnerable
* RHEL 7 is not vulnerable
* RHEL 6 is vulnerable
* RHEL 5 is partially vulnerable

A very specific set of circumstances are required in order for the
vulnerability to be exploited. The default configuration of RHEL 5 and
RHEL 6 are not exploitable.

The risk is that a non-root user can trigger a kernel crash on a
modified RHEL 6 system where the kernel runs a process that can be
exploited. Perhaps on an embedded device.

Thanks,
Harshula

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1358840

Patches:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/
?id=f106eee10038c2ee5b6056aaf3f6d5229be6dcdd
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/
?id=f20011457f41c11edb5ea5038ad0c8ea9f392023
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/
?id=fa2755e20ab0c7215d99c2dc7c262e98a09b01df
