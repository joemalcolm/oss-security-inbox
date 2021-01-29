X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1870" "Friday" "29" "January" "2021" "11:09:28" "+0100" "Marcus Meissner" "meissner@suse.de" "<20210129100928.GD6548@suse.de>" "46" "[oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil "1" "2021012910:09:28" "[oss-security] Linux Kernel: local priv escalation via futexes" (number mark "U       meissner@sus Jan 29   46/1870  " thread-indent "\"[oss-security] Linux Kernel: local priv escalation via futexes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30362 invoked by uid 550); 29 Jan 2021 10:09:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30326 invoked from network); 29 Jan 2021 10:09:37 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 29 Jan 2021 11:09:28 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20210129100928.GD6548@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Linux Kernel: local priv escalation via futexes

Hi,

Yesterday a patchset was merged to Linux Kernel mainline, which could be used
to execute code in the kernel due to bugs in PI futexes.

I am filing a CVE request just now.

Ciao, Marcus

merge commit:

commit c64396cc36c6e60704ab06c1fb1c4a46179c9120
Merge: e5ff2cb9cf67 34b1a1ce1458
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Jan 28 11:18:43 2021 -0800

    Pull locking fixes from Thomas Gleixner:
     "A set of PI futex fixes:

       - Address a longstanding issue where the user space part of the PI
         futex is not writeable. The kernel returns with inconsistent state
         which can in the worst case result in a UAF of a tasks kernel
         stack.

         The solution is to establish consistent kernel state which makes
         future operations on the futex fail because user space and kernel
         space state are inconsistent. Not a problem as PI futexes
         fundamentaly require a functional RW mapping and if user space
         pulls the rug under it, then it can keep the pieces it asked for.

       - Address an issue where the return value is incorrect in case that
         the futex was acquired after a timeout/signal made the waiter drop
         out of the rtmutex wait.

         In one of the corner cases the kernel returned an error code
         despite having successfully acquired the futex"

    * tag 'locking-urgent-2021-01-28' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip:
      futex: Handle faults correctly for PI futexes
      futex: Simplify fixup_pi_state_owner()
      futex: Use pi_state_update_owner() in put_pi_state()
      rtmutex: Remove unused argument from rt_mutex_proxy_unlock()
      futex: Provide and use pi_state_update_owner()
      futex: Replace pointless printk in fixup_owner()
      futex: Ensure the correct return value from futex_lock_pi()

