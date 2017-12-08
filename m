X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1409" "Friday" "8" "December" "2017" "12:01:22" "+0100" "Ludovic =?utf-8?B?Q291cnTDqHM=?=" "ludo@gnu.org" "<87r2s5xz3x.fsf@gnu.org>" "39" "Re: [oss-security] Re: Recommendations GnuPG-2 replacement" nil nil nil "12" "2017120811:01:22" "[oss-security] Re: Recommendations GnuPG-2 replacement" (number mark "U       ludo@gnu.org Dec  8   39/1409  " thread-indent "\"Re: [oss-security] Re: Recommendations GnuPG-2 replacement\"\n") "<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>" ("<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32437 invoked by uid 550); 8 Dec 2017 12:18:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7757 invoked from network); 8 Dec 2017 11:01:36 -0000
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
From: ludo@gnu.org (Ludovic =?utf-8?Q?Court=C3=A8s?=)
To: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Cc: oss-security@lists.openwall.com
References: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 18 Frimaire an 226 de la =?utf-8?Q?R=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-pc-linux-gnu
Date: Fri, 08 Dec 2017 12:01:22 +0100
In-Reply-To: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de> (Marcus
	Brinkmann's message of "Fri, 8 Dec 2017 00:51:50 +0100")
Message-ID: <87r2s5xz3x.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Recommendations GnuPG-2 replacement

Hi Marcus,

Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de> skribis:

> I started neopg.io two months ago to provide a modern replacement for
> GnuPG.  It will go back to a single-binary architecture like gpg1 was,
> but move forward on just about every other issue:
>
> * Written in C++
> * based on the Botan crypto library instead of libgcrypt
> * typical library + CLI (with subcommands) architecture
> * better testing (CI, static analysis)

Given that you worked on GnuPG, can you give some background?  It isn=E2=80=
=99t
clear to me why using C++/Botan/CMake to give a =E2=80=9Cmodern=E2=80=9D fe=
el (what does
it mean?) will lead to =E2=80=9Cbetter=E2=80=9D software (under which crite=
ria?).

The multiple-process design in GnuPG had clear justifications
AFAIK=E2=80=94e.g., having =E2=80=98dirmngr=E2=80=99 and =E2=80=98gnupg-age=
nt=E2=80=99 in separate address
spaces makes sense from a security standpoint.  Do you think these
justifications no longer hold, or that the decisions were misguided?

I=E2=80=99m also skeptical about =E2=80=9Cbetter testing=E2=80=9D bit: GnuP=
G and libgcrypt are
among the first pieces of software that crypto and security researchers
look at, and they=E2=80=99re also the first ones to get fixes when new atta=
ck
scenarios are devised.

I=E2=80=99m sure you have a clear view on this but neopg.io doesn=E2=80=99t=
 reflect
that.

Thanks,
Ludo=E2=80=99.
