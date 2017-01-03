X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2764" "Tuesday" "3" "January" "2017" "12:06:15" "+0100" "Sebastian Krahmer" "krahmer@suse.com" "<20170103110615.GA22538@suse.de>" "77" "Re: [oss-security] Nagios Core < 4.2.4 Root Privilege Escalation [CVE-2016-9566]" nil nil nil "1" "2017010311:06:15" "[oss-security] Nagios Core < 4.2.4 Root Privilege Escalation [CVE-2016-9566]" (number mark "U       krahmer@suse Jan  3   77/2764  " thread-indent "\"Re: [oss-security] Nagios Core < 4.2.4 Root Privilege Escalation [CVE-2016-9566]\"\n") "<CADSYzsv6ptE2mLgXJUBDqm5HNbi=qC7BRpGr3mrcmx-zF3trJw@mail.gmail.com>" ("<CADSYzsv6ptE2mLgXJUBDqm5HNbi=qC7BRpGr3mrcmx-zF3trJw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3593 invoked by uid 550); 3 Jan 2017 11:06:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3568 invoked from network); 3 Jan 2017 11:06:27 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 3 Jan 2017 12:06:15 +0100
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: jfrickson@nagios.com
Message-ID: <20170103110615.GA22538@suse.de>
References: <CADSYzsv6ptE2mLgXJUBDqm5HNbi=qC7BRpGr3mrcmx-zF3trJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADSYzsv6ptE2mLgXJUBDqm5HNbi=qC7BRpGr3mrcmx-zF3trJw@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: Re: [oss-security] Nagios Core < 4.2.4 Root Privilege Escalation
 [CVE-2016-9566]

Hi

On Tue, Dec 20, 2016 at 05:16:39PM -0200, Dawid Golunski wrote:
> Vulnerability:
> Nagios Core < 4.2.4  Root Privilege Escalation CVE-2016-9566
> 
> Discovered by: Dawid Golunski (@dawid_golunski)
> https://legalhackers.com
> 
> Severity: High

[...]

> 
> Nagios daemon was found to open the log file before dropping its root 
> privileges on startup:
> 
> 8148  open("/usr/local/nagios/var/nagios.log",
> O_RDWR|O_CREAT|O_APPEND, 0666) = 4
> 8148  fcntl(4, F_SETFD, FD_CLOEXEC)     = 0
> 8148  fchown(4, 1001, 1001)             = 0
> 8148  getegid()                         = 0
> 8148  setgid(1001)                      = 0
> 8148  geteuid()                         = 0
> [...]

I have had a look at the upstream patch:

https://github.com/NagiosEnterprises/nagioscore/commit/c29557dec91eba2306f5fb11b8da4474ba63f8c4

I think the patch is insufficient in many ways.


Basically the patch is introducing a O_NOFOLLOW and an fstat()
afterwards. O_NOFOLLOW only works for symlinks, but attackers
may also create hardlinks (on the same FS, lets put
Linux link restrictions aside since it may affects other OS's too).

The fstat() check comes too late, the open() already happened
and may caused side-effects (driver files etc.). OTOH, a stat()
before open would be racy. Then, any of the path components
of the logdir may be nagios owned and flipped with symlinks inside subdirs,
since O_NOFOLLOW only fails on the last component being a symlink.

Then, IMHO its not a good idea to have the fix_log_file_owner(uid, gid)
call inside drop_privileges(), since when drop_privileges() fails,
for example because nagios attacker is spawning many zombies,
making setuid() fail, the following logit() call may be invoked as root, ending again in
open_log_file():

597 if(drop_privileges(nagios_user, nagios_group) == ERROR) {
598      logit(NSLOG_PROCESS_INFO | NSLOG_RUNTIME_ERROR,...  Aborting.");

Also, the fix_log_file_owner(uid, gid); call may fail and no error
is checked on return. The call may fail because its calling
open_log_file(). IMHO, dropping privs and setting up the logfiles
should really be separated.
 
There is also this prctl(PR_SET_DUMPABLE, 1) call which may
be dangerous as its a potential attack vector for ptrace injections.

TL;DR: there is no safe way of creating/chowning files inside user owned
directories when running as root. Theres almost in all cases a race, since you
have no fix point. Or at least making some fix point creates a lot
of effort and headache. Its much cleaner to drop to user and then doing
the file-related work. Since the logdir is nagios owned anyway,
I dont see why there is this root/chown approach.


Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

