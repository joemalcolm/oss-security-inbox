X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4476" "Friday" "17" "February" "2017" "13:52:45" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20170217135245.5717fc91@redhat.com>" "112" "Re: [oss-security] MySQL / MariaDB / Percona - Root Privilege Escalation Exploit [ CVE-2016-6664 / CVE-2016-5617 ]" nil nil nil "2" "2017021712:52:45" "[oss-security] MySQL / MariaDB / Percona - Root Privilege Escalation Exploit [ CVE-2016-6664 / CVE-2016-5617 ]" (number mark "U       thoger@redha Feb 17  112/4476  " thread-indent "\"Re: [oss-security] MySQL / MariaDB / Percona - Root Privilege Escalation Exploit [ CVE-2016-6664 / CVE-2016-5617 ]\"\n") "<CADSYzstzBNkz6hmpw_4CDyFWR_aQaa-T5yHSTEcVK_Bj-p2ndg@mail.gmail.com>" ("<CADSYzstzBNkz6hmpw_4CDyFWR_aQaa-T5yHSTEcVK_Bj-p2ndg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26149 invoked by uid 550); 17 Feb 2017 12:53:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26116 invoked from network); 17 Feb 2017 12:53:02 -0000
Date: Fri, 17 Feb 2017 13:52:45 +0100
From: Tomas Hoger <thoger@redhat.com>
To: Dawid Golunski <dawid@legalhackers.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20170217135245.5717fc91@redhat.com>
In-Reply-To: <CADSYzstzBNkz6hmpw_4CDyFWR_aQaa-T5yHSTEcVK_Bj-p2ndg@mail.gmail.com>
References: <CADSYzstzBNkz6hmpw_4CDyFWR_aQaa-T5yHSTEcVK_Bj-p2ndg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Fri, 17 Feb 2017 12:52:52 +0000 (UTC)
Subject: Re: [oss-security] MySQL / MariaDB / Percona - Root Privilege
 Escalation Exploit [ CVE-2016-6664 / CVE-2016-5617 ]

On Mon, 14 Nov 2016 14:36:16 -0200 Dawid Golunski wrote:

> Vulnerability: MySQL / MariaDB / PerconaDB - Root Privilege Escalation
> CVE-2016-6664 / (Oracle)CVE-2016-5617

The original MySQL fix for this issue was quite incomplete and easy to
bypass.  It had the following problems:

- Symlink check was racy - it was easy to replace log file created by
  touch by a symlink before chmod and chown was used.

- You could avoid the symlink check completely by directly setting
  log-error to the path name of the file you want to corrupt, such as:

  log-error = /etc/ld.so.preload

- Symlink check did not cover hardlinks (this is a variant of the
  previous, sort of).

- Existing symlinks were used even if they were not chmoded / chowned
  any more, so it was possible to corrupt files with myslqd_safe's log
  messages.

I reported these problems to Oracle, and they assigned CVE-2017-3312
for the incomplete fix.  They were addressed in the following commit:

https://github.com/mysql/mysql-server/commit/1f93f4381b60e3a8012ba36a4dec920416073759

Note that the commit pre-dates Oct 2016 CPU, when Oracle first
mentioned CVE-2016-6664 / CVE-2016-5617 as fixed, but it was only
included in MySQL 5.5.54, 5.6.35, and 5.7.17 released mid-Dec 2016, and
hence listed in Jan 2017 CPU.  The fix also pre-dates my report.

Dawid, I assume you were aware of these problems and reported them
too.  You're acknowledged as a reporter of (at least) one of the issues
in the Jan 2017 CPU:

http://www.oracle.com/technetwork/security-advisory/cpujan2017-2881727.html

and also in Percona Server release notes:

https://www.percona.com/doc/percona-server/LATEST/release-notes/Percona-Server-5.7.17-11.html

  mysqld_safe now limits the use of rm and chown to avoid privilege
  escalation. chown can now be used only for /var/log directory. Bug
  fixed #1660265. Thanks to Dawid Golunski (https://legalhackers.com).

Linked Percona bug is not public, but the above text matches MySQL
commit linked above.

As Oracle is refusing to publicly share any information about their
CVEs, can you, Dawid, provide information on what CVE or CVEs were
given to you by Oracle in response to your reports, and for what
issues?  If you've not received that information yet, would you mind
asking?  I suspect you may have some info to share on CVE-2017-3317 and
CVE-2017-3318.


Besides the above, I also reported the following issues.  CVEs below
were assigned by Oracle.


CVE-2017-3265 unsafe chmod/chown use in the init script

https://github.com/mysql/mysql-server/blob/mysql-5.6.34/packaging/rpm-oel/mysql.init#L97
https://github.com/mysql/mysql-server/blob/mysql-5.6.34/packaging/rpm-oel/mysql.init#L73

These may allow mysql -> root privilege escalation similar to
CVE-2016-6664.  Fixed in:

https://github.com/mysql/mysql-server/commit/53230ba274a37fa13d65e802c6ef3766cd0c6d91#diff-5fccc3d0e109e8f9ad0653728bd1d975


CVE-2017-3291 was assigned to two independent issues

- unrestricted mysqld_safe's ledir

By setting ledir to say /tmp in my.cnf, you could make mysqld_safe
execute mysqld from there rather than some expected location
under /usr.  Besides mysql -> root escalation, this also could have
been used by non-mysql local users in combination with the
CVE-2016-6662 issue against MySQL versions that do not support
malloc-lib (e.g. MySQL 5.1).  Fixed in:

https://github.com/mysql/mysql-server/commit/53230ba274a37fa13d65e802c6ef3766cd0c6d91#diff-144aa2f11374843c969d96b7b84247ea

- insecure path use in mysqld_safe

This code tries to find my_print_defaults command:

https://github.com/mysql/mysql-server/blob/mysql-5.6.34/scripts/mysqld_safe.sh#L466

It first tries relative to $MY_BASEDIR_VERSION, which could have been
set to $PWD:

https://github.com/mysql/mysql-server/blob/mysql-5.6.34/scripts/mysqld_safe.sh#L402

If root ran mysqld_safe while their $PWD was /tmp, arbitrary code
controlled by some unprivileged local (not necessarily mysql) user
could have been executed.  This was fixed in:

https://github.com/mysql/mysql-server/commit/53230ba274a37fa13d65e802c6ef3766cd0c6d91#diff-144aa2f11374843c969d96b7b84247eaL397


There are few more related problems fixed in Jan 2017 CPU, but as noted
above, Oracle refuses to acknowledge mapping to CVEs publicly.

https://github.com/mysql/mysql-server/commit/76e9d7e5b30365e8b167e2070ee00f81cb115b8b
https://github.com/mysql/mysql-server/commit/7a5145e445ee802241957eb5290a3e65ea4da70c

-- 
Tomas Hoger / Red Hat Product Security
