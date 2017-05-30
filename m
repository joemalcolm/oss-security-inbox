X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4974" "Tuesday" "30" "May" "2017" "08:16:29" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170530151629.GA19040@localhost.localdomain>" "137" "[oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux" "^Date:" nil nil "5" "2017053015:16:29" "[oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux" (number mark "        qsa@qualys.c May 30  137/4974  " thread-indent "\"[oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3539 invoked by uid 550); 30 May 2017 15:20:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32505 invoked from network); 30 May 2017 15:16:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=ff8jGixTjDVqEeDtAbxoMfpaDB2RZA6Q+3ftgU9L3Nc=;
        b=JkOE601AXPtYatxRX8agzjxhU0f4P4X91DAbDeumI6olJQ3Q5s5Hry0ErMxxdAE0o4
         k0Fb6fGHkXEr8KxYsSrOtd3iO4lrSXHa71SB6jFL3AEC7c3Vg0TWOXUear6kkNLznLPb
         xQq2CpHc2W+bk27gm1Qf2RsPWXn9cXp9SCF5Q1Lszf862y+8jqnNRCPDZNjgyR1PQ7E7
         U158Qyb8rBfEVSC4FIVjXr5k28xjlBvkahLz4ol5MigfvojbrnZr6uhQu5tzJa+qUSDl
         OlhEQE1rDLC4lIq6o+4lTlYI1Nr5MbAvMKmTlWQVMsnRmPo+Im+wqsQXfOFt+0ofCdOv
         dLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=ff8jGixTjDVqEeDtAbxoMfpaDB2RZA6Q+3ftgU9L3Nc=;
        b=Cy2Et71g/ZT48Q8qVfI24EqMVQ5i+Vg+/FlNjaUeCcHCkBbiSIbxVVXmU+30ZukRvd
         p91Hcxo/9HfOt+K9d18Dnmej+DJHNIb3Su1Wm6VtAiHrvLWGQsJLhsHpZ1AwjV+/vzdA
         /4Xp1ieH/HiPCeuYdVY+XyYcQzGqsQhMH5HArP1nlSfUwz5aWj0UEURpFZnUpHkySpvY
         vQFj8ZrMD15DyhaQQKivZfTttBfua+b0/KmSw2A2UPo4Bs/r3wf0v5iha89IVApxQRQj
         1KTkABLXRFkvS2kydH8D1SMsSkxh3pu7054uSmgUKA2U0kid3/mp9na4k+2p9MlDHNbz
         mNLQ==
X-Gm-Message-State: AODbwcAKtQz4iGut2lnQO0ORKZdTOy+w5U+3ZGMhiW2DS+LpOinHLRMf
	o93Xvj6r05alict0gR8=
X-Received: by 10.84.233.199 with SMTP id m7mr83412290pln.108.1496157395215;
        Tue, 30 May 2017 08:16:35 -0700 (PDT)
Message-ID: <20170530151629.GA19040@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Tue, 30 May 2017 08:16:29 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's
 get_process_ttyname() for Linux
To: oss-security@lists.openwall.com


Qualys Security Advisory

CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux


========================================================================
Contents
========================================================================

Analysis
Exploitation
Example
Acknowledgments


========================================================================
Analysis
========================================================================

We discovered a vulnerability in Sudo's get_process_ttyname() for Linux:
this function opens "/proc/[pid]/stat" (man proc) and reads the device
number of the tty from field 7 (tty_nr). Unfortunately, these fields are
space-separated and field 2 (comm, the filename of the command) can
contain spaces (CVE-2017-1000367).

For example, if we execute Sudo through the symlink "./     1 ",
get_process_ttyname() calls sudo_ttyname_dev() to search for the
non-existent tty device number "1" in the built-in search_devs[].

Next, sudo_ttyname_dev() calls the function sudo_ttyname_scan() to
search for this non-existent tty device number "1" in a breadth-first
traversal of "/dev".

Last, we exploit this function during its traversal of the
world-writable "/dev/shm": through this vulnerability, a local user can
pretend that his tty is any character device on the filesystem, and
after two race conditions, he can pretend that his tty is any file on
the filesystem.

On an SELinux-enabled system, if a user is Sudoer for a command that
does not grant him full root privileges, he can overwrite any file on
the filesystem (including root-owned files) with his command's output,
because relabel_tty() (in src/selinux.c) calls open(O_RDWR|O_NONBLOCK)
on his tty and dup2()s it to the command's stdin, stdout, and stderr.
This allows any Sudoer user to obtain full root privileges.


========================================================================
Exploitation
========================================================================

To exploit this vulnerability, we:

- create a directory "/dev/shm/_tmp" (to work around
  /proc/sys/fs/protected_symlinks), and a symlink "/dev/shm/_tmp/_tty"
  to a non-existent pty "/dev/pts/57", whose device number is 34873;

- run Sudo through a symlink "/dev/shm/_tmp/     34873 " that spoofs the
  device number of this non-existent pty;

- set the flag CD_RBAC_ENABLED through the command-line option "-r role"
  (where "role" can be our current role, for example "unconfined_r");

- monitor our directory "/dev/shm/_tmp" (for an IN_OPEN inotify event)
  and wait until Sudo opendir()s it (because sudo_ttyname_dev() cannot
  find our non-existent pty in "/dev/pts/");

- SIGSTOP Sudo, call openpty() until it creates our non-existent pty,
  and SIGCONT Sudo;

- monitor our directory "/dev/shm/_tmp" (for an IN_CLOSE_NOWRITE inotify
  event) and wait until Sudo closedir()s it;

- SIGSTOP Sudo, replace the symlink "/dev/shm/_tmp/_tty" to our
  now-existent pty with a symlink to the file that we want to overwrite
  (for example "/etc/passwd"), and SIGCONT Sudo;

- control the output of the command executed by Sudo (the output that
  overwrites "/etc/passwd"):

  . either through a command-specific method;

  . or through a general method such as "--\nHELLO\nWORLD\n" (by
    default, getopt() prints an error message to stderr if it does not
    recognize an option character).

To reliably win the two SIGSTOP races, we preempt the Sudo process: we
setpriority() it to the lowest priority, sched_setscheduler() it to
SCHED_IDLE, and sched_setaffinity() it to the same CPU as our exploit.


========================================================================
Example
========================================================================

We will publish our Sudoer-to-root exploit
(Linux_sudo_CVE-2017-1000367.c) in the near future:

[john@localhost ~]$ head -n 8 /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt

[john@localhost ~]$ sudo -l
[sudo] password for john:
...
User john may run the following commands on localhost:
    (ALL) /usr/bin/sum

[john@localhost ~]$ ./Linux_sudo_CVE-2017-1000367 /usr/bin/sum $'--\nHELLO\nWORLD\n'
[sudo] password for john:

[john@localhost ~]$ head -n 8 /etc/passwd
/usr/bin/sum: unrecognized option '--
HELLO
WORLD
'
Try '/usr/bin/sum --help' for more information.
ogin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin


========================================================================
Acknowledgments
========================================================================

We thank Todd C. Miller for his great work and quick response, and the
members of the distros list for their help with the disclosure of this
vulnerability.

