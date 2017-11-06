X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3041" "Monday" "6" "November" "2017" "21:00:50" "+0100" "Solar Designer" "solar@openwall.com" "<20171106200050.GA19402@openwall.com>" "82" "Re: [oss-security] Security risk of vim swap files" "^Date:" nil nil "11" "2017110620:00:50" "[oss-security] Security risk of vim swap files" (number mark "        solar@openwa Nov  6   82/3041  " thread-indent "\"Re: [oss-security] Security risk of vim swap files\"\n") "<20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" "<20171101180222.5j6wqmmqakwvu72q@jwilk.net>" "<20171101181209.GB22752@openwall.com>" "<20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11957 invoked by uid 550); 6 Nov 2017 20:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11411 invoked from network); 6 Nov 2017 20:00:58 -0000
Message-ID: <20171106200050.GA19402@openwall.com>
References: <20171031132352.2df6d2ad@pc1> <20171031175407.jcniviupwyab6qcl@sentinelchicken.org> <20171101023330.GK30551@takahe.colorado.edu> <20171101144927.srk7stiwoia4qt57@sentinelchicken.org> <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com> <20171101180222.5j6wqmmqakwvu72q@jwilk.net> <20171101181209.GB22752@openwall.com> <20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 6 Nov 2017 21:00:50 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of vim swap files
To: oss-security@lists.openwall.com

On Sun, Nov 05, 2017 at 10:15:44PM -0800, Ian Zimmerman wrote:
> On 2017-11-01 19:12, Solar Designer wrote:
> 
> > On Wed, Nov 01, 2017 at 07:02:22PM +0100, Jakub Wilk wrote:
> 
> > > Unfortunately, glibc's implementation of tmpfile(3), which is the
> > > most fool-proof interface for dealing with temporary files that the
> > > C library offers, doesn't honour TMPDIR. :(
> > 
> > We've been carrying a patch for this for ages:
> 
> Do you know why this has not been changed upstream?

I did not, but to try and answer your question I just found this:

https://cygwin.com/ml/libc-alpha/1999-04/msg00075.html

| Re: Why doesn't tmpfile() honor $TMPDIR?
| 
|     To: Joel Klecker <espy@debian.org>
|     Subject: Re: Why doesn't tmpfile() honor $TMPDIR?
|     From: Ulrich Drepper <drepper@cygnus.com>
|     Date: 29 Apr 1999 12:24:15 -0700
|     Cc: libc-alpha@cygnus.com
| 
| Joel Klecker <espy@debian.org> writes:
| 
| > In stdio-common/tmpfile{,64}.c, __path_search is called with the 
| > fifth argument set to 0, which causes tmpfile(), and tmpfile64() to 
| > use P_tmpdir.
| > 
| > Is there a particular reason why tmpfile() and tmpfile64() should not 
| > be changed to call __path_search with the fifth argument set to 1, so 
| > that the functions do honor $TMPDIR?
| 
| Yes:
| 
| - compatibility with other systems and earlier versions
| 
| - newly introduced security risks
| 
| > I am asking because there is a long-standing bug 
| > (http://www.debian.org/Bugs/db/12/12240.html) in the Debian Bug 
| > Tracking System regarding this.
| 
| This is no bug in glibc.

In that Debian bug, we see this comment:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=12240#45

| From: Topi Miettinen <Topi.Miettinen@medialab.sonera.net>
| To: 12240@bugs.debian.org
| Cc: Ian Jackson <ian@chiark.greenend.org.uk>
| Subject: Re: Bug#12240: patch
| Date: Tue, 07 Jul 1998 23:20:08 +0300
| 
| There are two parts in the patch, one for tmpfile() use and other for
| tmpnam().
| 
| Regarding tmpfile(), I checked K&R, Stevens, Donald Lewine's "POSIX
| Programmer's Guide", and Solaris manual page and they all agree with glibc
| documentation in that nothing is guaranteed. Fixing this in glibc is
| trivial, by changing fifth argument of __stdio_gen_tempname call from 0 to
| 1 in stdio-common/tmpfile.c. This will cause security problems with setuid
| programs using tmpfile(), though.

Apparently, the security risks and problems mentioned are that people
were concerned this change would result in SUID programs (and/or their
children - e.g., a command run via sudo) honoring TMPDIR in their
tmpfile(3) calls - however, that is not in any way specific to
tmpfile(3), and it should be addressed for all such places in glibc
similarly.  I don't know what state glibc was in with regard to
honoring, ignoring, or unsetting TMPDIR in SUID programs in 1998-1999.
Maybe those concerns were valid at the time, but if so it means glibc
had other instances of the issue.

> Do you know of any programs that break with this change?

No.

Alexander
