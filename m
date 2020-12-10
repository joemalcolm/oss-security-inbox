X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Thursday" "10" "December" "2020" "08:05:24" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201210070524.GA10095@suse.de>" "28" "[oss-security] 2 kernel issues" nil nil nil "12" "2020121007:05:24" "[oss-security] 2 kernel issues" (number mark "U       meissner@sus Dec 10   28/886   " thread-indent "\"[oss-security] 2 kernel issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] 2 kernel issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5688 invoked by uid 550); 10 Dec 2020 11:41:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5658 invoked from network); 10 Dec 2020 11:41:04 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 10 Dec 2020 08:05:24 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20201210070524.GA10095@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] 2 kernel issues

Hi,

Jann Horn found 2 locking issues in the Linux Kernel tty subsystem, which can be used for
the usual memory corruption things.

Mitre assigned 2 CVEs:

CVE-2020-29660:

A locking inconsistency issue was discovered in the tty subsystem of the Linux kernel through 5.9.13.
drivers/tty/tty_io.c and drivers/tty/tty_jobctrl.c may
allow a read-after-free attack against TIOCGSID,
aka CID-c8bcd9c5be24.
 
[Reference]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c8bcd9c5be24fb9e6132e97da5a35e55a83e36b9



CVE-2020-29661:

A locking issue was discovered in the tty subsystem of the Linux kernel through 5.9.13.
drivers/tty/tty_jobctrl.c allows a use-after-free attack against TIOCSPGRP, aka CID-54ffccbf053b.

[Reference]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=54ffccbf053b5b6ca4f6e45094b942fab92a25fc

Ciao, Marcus
