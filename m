X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6991" "Tuesday" "2" "November" "2021" "08:55:41" "-0700" "David A. Wheeler" "dwheeler@dwheeler.com" nil "154" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       dwheeler@dwh Nov  2  154/6991  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21859 invoked by uid 550); 2 Nov 2021 15:56:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21841 invoked from network); 2 Nov 2021 15:56:02 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B17851ED-D058-46D4-9491-60446B997B3E"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Tue, 2 Nov 2021 08:55:41 -0700
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
To: oss-security@lists.openwall.com
In-Reply-To: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
Message-Id: <D57DA3B6-A316-4E54-8DFC-AD70D0D08AC4@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
Subject: Re: [oss-security] Trojan Source Attacks

--Apple-Mail=_B17851ED-D058-46D4-9491-60446B997B3E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On Nov 1, 2021, at 10:27 AM, Nicholas Boucher <nicholas.boucher@cl.cam.ac=
.uk> wrote:
>=20
> OSS Security teams,
>=20
> We have identified an issue affecting all compilers and interpreters that=
 support Unicode. We believe that the techniques described hereafter can be=
 used to generate adversarial encodings of source code files that can be us=
ed to craft targeted attacks against source code that cannot be seen by hum=
an reviewers in rendered text. This is of concern to the open source commun=
ity because, absent defenses, supply chain attacks can be imperceptibly mou=
nted against the ecosystem.

The =E2=80=9CTrojan Source=E2=80=9D paper is interesting. Unicode bidirecti=
onal commands have been exploited in other contexts, this is the first pape=
r I can recall that specifically discusses bidi in source code.

However, I think it=E2=80=99s important to realize this is a special case o=
f =E2=80=9Cunderhanded code=E2=80=9D aka =E2=80=9Cunderhanded source code=
=E2=80=9D aka =E2=80=9Cmaliciously misleading code=E2=80=9D. Underhanded co=
de is source code crafted so that the source code looks like it does one th=
ing to human reviewers, but it actually does something else. Homoglyphs are=
 a common mechanism of attack (e.g., 1/l or O/0), as are misleading indenta=
tion, etc.

The first reference I can find to underhanded code is the 2004 Obfuscated V=
 Contest (http://graphics.stanford.edu/~danielh/vote/vote.html) created by =
Daniel Horn.

Below are some of the related works that discuss underhanded code / malicio=
usly misleading code; see my 2020 paper for a more complete list. My 2020 p=
aper cites more examples, and it also describes a brief experiment in *coun=
tering* underhanded code. It turns out that a lot of underhanded code can b=
e countered by relatively simpler measures... but those measures have to be=
 implemented to work :-). My 2020 paper is here:
https://www.ida.org/research-and-publications/publications/all/i/in/initial=
-analysis-of-underhanded-source-code
https://www.ida.org/-/media/feature/publications/i/in/initial-analysis-of-u=
nderhanded-source-code/d-13166.ashx

--- David A. Wheeler



=3D=3D=3D SOME RELATED WORKS =3D=3D=3D

The Obfuscated V Contest (http://graphics.stanford.edu/~danielh/vote/vote.h=
tml) was created by Daniel Horn in 2004 and is the earliest =E2=80=9Cunderh=
anded=E2=80=9D programming contest that I found. It was a contest to create=
 source code that looked like it did one thing, but actually did another.

Underhanded C Contest (http://www.underhanded-c.org/) has run in many years=
. Per its FAQ, "The Underhanded C Contest is an annual contest to write inn=
ocent-looking C code=20
implementing  malicious  behavior.=E2=80=9D

Underhanded Crypto Contest (https://underhandedcrypto.com/). As of this=20
time, it has run from 2014 to 2018. The contest website does not directly n=
ote=20
the 2018 winners; however, the 2018 winners are presented and discussed in=
=20
a DefCon 26 presentation [Caudill 2018]. The set of all entries is availabl=
e on=20
GitHub (https://github.com/UnderhandedCrypto/entries).

Underhanded Solidity Coding Contest (USCC) (https://u.solidity.cc/; details=
=20
are available at its GitHub site https://github.com/Arachnid/uscc). Solidit=
y is=20
a contract-oriented programming language for writing smart contracts that c=
an=20
be implemented on blockchain platforms such as Ethereum. The=20
announcement of the winners of the first (2017) contest is available at=20
[Johnson 2017], and the complete set of 2017 winners is posted on GitHub at=
=20
https://github.com/Arachnid/uscc/tree/master/submissions-2017/. The=20
developers of Solidity used the contest results to improve their tooling.=20
=E2=80=A2 The =E2=80=9CWrite a program that makes 2+2=3D5=E2=80=9D discussi=
on on StackExchange at=20
https://codegolf.stackexchange.com/questions/28786/write-a-program-that-
makes-2-2-5 shows how to do that in a variety of programming languages.=20
=E2=80=A2 The =E2=80=9CUnderhanded code contest: Not-so-quick sort=E2=80=9D=
 (https://=20
codegolf.stackexchange.com/questions/19569/underhanded-code-contest-
not-so-quick-sort) is a small underhanded code contest. The goal of this=20
contest was to =E2=80=9CWrite a program, in the language of your choice, th=
at reads
lines of input from standard input until EOF, and then writes them to stand=
ard=20
output in ASCIIbetical order, similar to the sort command-line program. ...=
=20
The underhanded part... is to prove that your favored platform is `better,=
=E2=80=99 by=20
having your program deliberately run much more slowly on a competing=20
platform.=E2=80=9D=20

=E2=80=9CApril Fools Day!=E2=80=9D (https://codegolf.stackexchange.com/ques=
tions/114891=20
/april-fools-day) is a small underhanded code contest with a few underhande=
d=20
code samples. The goal is to =E2=80=9Cwrite a program or function which app=
ears to=20
print the first ten numbers of any integer sequence (on OEIS, the answerer=
=20
may choose which sequence), but instead prints the exact text =E2=80=9CHapp=
y April=20
Fool=E2=80=99s Day!=E2=80=9D if and only if it is run on April 1st of any y=
ear.=E2=80=9D=20

The =E2=80=9CUnderhanded Python=E2=80=9D posting (https://gist.github.com/L=
3viathan=20
/e47d359470d5e18a357c67d9e4328c16) is quite clever. It uses the fact that=20
=E2=80=9C//=E2=80=9D opens a comment in other languages to fool the reader.=
 It is revealed by=20
syntax coloring but even vim syntax coloring was not obvious enough to=20
immediately reveal the attack.=20

The 2003 attack on the Linux kernel source code. An attacker attempted to=20
subvert the Linux kernel in 2003 through underhanded code that used =3D=20
instead of =3D=3D. This is discussed in [Corbet 2003] and [Felten 2013].

My PhD dissertation "Fully Countering Trusting Trust through Diverse Double=
-Compiling" discusses how to counter the "trusting trust" problem & include=
s a section about maliciously misleading source code. See: https://dwheeler=
.com/trusting-trust/

The JavaScript Misdirection Contest announced the winner on September 27, 2=
015 http://misdirect.ion.land/

My paper "Initial Analysis of Underhanded Source Code", (by David A. Wheele=
r, April, 2020, IDA document: D-13166),
discusses underhanded code and the effectiveness of several potential count=
ermeasures. It also includes a number of citations to other works on underh=
anded code. See:
https://www.ida.org/research-and-publications/publications/all/i/in/initial=
-analysis-of-underhanded-source-code
https://www.ida.org/-/media/feature/publications/i/in/initial-analysis-of-u=
nderhanded-source-code/d-13166.ashx

Note that my 2020 paper includes references to many other related works (it=
 includes a literature survey of such work).

--- David A. Wheeler



--Apple-Mail=_B17851ED-D058-46D4-9491-60446B997B3E--
