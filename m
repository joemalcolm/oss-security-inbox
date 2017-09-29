X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["583" "Friday" "29" "September" "2017" "17:22:31" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<3273963.DqXE5nWNLs@wanheda>" "17" "Re: [oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)" "^Cc:" nil nil "9" "2017092915:22:31" "[oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)" (number mark "        ago@gentoo.o Sep 29   17/583   " thread-indent "\"Re: [oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)\"\n") "<20170927102015.GH26375@macbook42.flashner.co.il>" ("<146142.067478166-sendEmail@localhost>" "<20170927102015.GH26375@macbook42.flashner.co.il>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13543 invoked by uid 550); 29 Sep 2017 15:22:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13516 invoked from network); 29 Sep 2017 15:22:45 -0000
Message-ID: <3273963.DqXE5nWNLs@wanheda>
In-Reply-To: <20170927102015.GH26375@macbook42.flashner.co.il>
References: <146142.067478166-sendEmail@localhost> <20170927102015.GH26375@macbook42.flashner.co.il>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: Efraim Flashner <efraim@flashner.co.il>
Date: Fri, 29 Sep 2017 17:22:31 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)
To: oss-security@lists.openwall.com

On mercoled=EC 27 settembre 2017 12:20:15 CEST Efraim Flashner wrote:
> On Tue, Sep 26, 2017 at 07:03:41AM +0000, Agostino Sarubbo wrote:
> > Affected version:
> > 2.29.51.20170921 and maybe past releases
>=20
> As best as I can see, it looks like the bug was introduced after the
> 2.28 series was frozen/split-off, and there is no part of the patch that
> applies to the 2.28.1 release.
>=20
> I have not, however, tried the reproducer.

The provided testcase works for me after the commit=20
98c5dfc99444094652c2f2259126f70e5cacf56f

--=20
Agostino Sarubbo
Gentoo Linux Developer
