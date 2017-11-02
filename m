X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2175" "Thursday" "2" "November" "2017" "22:29:16" "+0100" "Christian Brabandt" "cb@256bit.org" "<20171102212916.GC23769@256bit.org>" "52" "[oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110221:29:16" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        cb@256bit.or Nov  2   52/2175  " thread-indent "\"[oss-security] Re: Fw: Security risk of vim swap files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21556 invoked by uid 550); 2 Nov 2017 21:37:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11436 invoked from network); 2 Nov 2017 21:29:27 -0000
Message-ID: <20171102212916.GC23769@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Date: Thu, 2 Nov 2017 22:29:16 +0100
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

Kurt Seifried wrote:

> There is a flaw here, it appears on some distros that vim (and emacs) will
> ignore a user's umask and go with less restrictive file permissions
> (ideally you think vi would use the files existing perms, plus any umask
> limitations as expected), for example vim failing:
> 
> [kseifrie@...alhost vi]$ umask
> 0007
> [kseifrie@...alhost vi]$ touch foo
> [kseifrie@...alhost vi]$ ls -la
> total 8
> drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
> drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
> -rw-rw----.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
> [kseifrie@...alhost vi]$ chmod o+r foo
> [kseifrie@...alhost vi]$ ls -la
> total 8
> drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
> drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
> -rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
> [kseifrie@...alhost vi]$ vi foo
> 
> in another terminal:
> 
> [kseifrie@...alhost vi]$ ls -la
> total 12
> drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
> drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
> -rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
> -rw-r--r--.  1 kseifrie kseifrie 4096 Oct 31 10:50 .foo.swp
> 
> So vim ignores the umask of the user =(.

> So from a CVE perspective we have a situation where a user has explicitly
> set a umask (of say 0007) which is to say they've made a security assertion
> of "any file I create I want the rwx permissions for "other" removed" which
> vim and emacs (and possibly others) are violating when they create swap
> files/backups/whatever. To add insult to injury most other utilities that
> create a file (e.g. cp, cat, dd) seem to respect umask.
> 
> Please use CVE-2017-1000382 for VIM version 8.0.1187 (and other versions
> most likely) ignores umask when creating a swap file
> (\"[ORIGINAL_FILENAME].swp\") resulting in files that may be world readable
> or otherwise accessible in ways not intended by the user running the vi
> binary.

Vim copies the permission from the file being edited. Although the swap 
file is readable by others this does not leak any information here, 
since the file being edited is already readable by others.

Christian
