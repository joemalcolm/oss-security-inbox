X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7156" "Monday" "5" "October" "2020" "19:30:22" "-0400" "Eli Schwartz" "eschwartz@archlinux.org" "<e5512902-f52d-61e0-bd4e-8d73ce5ea9ad@archlinux.org>" "154" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" "^Date:" nil nil "10" "2020100523:30:22" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       eschwartz@ar Oct  5  154/7156  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28080 invoked by uid 550); 6 Oct 2020 10:44:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3339 invoked from network); 5 Oct 2020 23:30:40 -0000
X-Spam-BL-Results: 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=archlinux.org;
	s=orion; t=1601940626;
	bh=rgIyg2Fb0mVsEWsNshbQIaQoT8PERK/QGwIgtzjJFns=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=tgHT2N895P2LXGF9nXvBTv1fkZogmXHEb+b8XooXofg2efF/KhZ/S2w3262TDkohB
	 0IrUF3F+OClY22z+3uWJku6Z+oeFO4ZP4klC1gT3mTVLr0OY9y+nUfNz2/KHBLTbrp
	 vmxGE0/ErJvTgfPUofmH9D1eym2Eiqw10/m7M36YzBIbTDVEbJHue8WqacP2zV7Bt+
	 gFOJuLAaK+HnYe3FbKqrzTg7k/nSo5xnT5xus9r7SRZHBws+6eO67f4G5r3Q358t9O
	 8SF2JZ7lFurDh1h6sNqImzoVVyo5ePsM/bm71z35tfd36gAKQToUyvbnSqDILW5bCK
	 Z8VTMAO5IjLGgxHABDKl3YFaT38wTlpceAMvknSlUfJI4/Y3CNCI0JZh1AdvrqOMD2
	 cPMVdPTLW1lTAsx9xLIwpW7af6cD8DA5z38EQ9C31LkdKouRzmxP5P95lMtKgZodHb
	 f/N1ldC0iHTLuezc/l7kBZ+KeHNEXGjAAPub/XKrIEnc31xMjKureImj+tnWSqoPJg
	 HwC4TGciP5A11fc4Ttyh5ojfRezlhhY2sUNHXvidBOBkC+shjiowZQVAbTZLcK0PPp
	 6miXqX609GlXSekT2ywRilJ0FxOM+45HM3Q4CmXLq1XOWd5Sajqefu9nzTKDXLbuAg
	 rcZGhLXI4O9GbWW4bsCsj6xQ=
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <e5512902-f52d-61e0-bd4e-8d73ce5ea9ad@archlinux.org>
MIME-Version: 1.0
In-Reply-To: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="RL40kDsiIbMzYCBcgmfS5thZw34Y1JV4S"
Date: Mon, 5 Oct 2020 19:30:22 -0400
From: Eli Schwartz <eschwartz@archlinux.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?
To: oss-security@lists.openwall.com

--RL40kDsiIbMzYCBcgmfS5thZw34Y1JV4S
Content-Type: multipart/mixed; boundary="be3ODVDpHjNZF61YIiqJCfi1zfNqaP4XM"

--be3ODVDpHjNZF61YIiqJCfi1zfNqaP4XM
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 10/5/20 8:02 AM, Georgi Guninski wrote:
> Disclaimer: I am not watching the security theatre closely,
> so this is likely trivial.
>=20
> Are there major security changes needed if
> gnu/linux dominates the desktop and/or mobile phone
> markets?
>=20
> Remarks:
> 1. there was android malware on google play

There was malware everywhere, no software source AFAIK has ever been
fully immune. Some are rarer than others.

Linux desktop distributions have one advantage in that they are
*curated* by a small handful of trusted individuals, who collect popular
programs, vet them, and provide trusted binaries. We know exactly what
source code goes into distro packages, we can audit this source code and
check PGP signatures from upstream authors, and due to
https://reproducible-builds.org/ we can double-check the supply chain
and verify the maintainer didn't go rogue and fiddle with the source
code before releasing packages, or their compiler wasn't backdoored.

Your chances of installing outright malware are pretty low on GNU/Linux
desktop systems, or on mobile if those desktop systems spread to the
mobile market. Assuming you stick with official, vetted software
sources. Once you start downloading random github binaries, or
snaps/flatpaks, or `npm install theworld`, you've devolved to the level
of smartphone appstores where it is mostly just automated analysis of
millions of user submissions, and malware can easily slip by.

Even on desktop systems with vetted supply chains, you have more to
worry about than merely malware. Any software that random users can
interact with e.g. over the network can have vulnerabilities, which is
arguably what most of the interesting security issues are about. No
vetting can save you from that. On the other hand, avoiding GNU/Linux
won't save you from that either -- all software suffers from this,
Windows has *many* problems with this too. So I don't believe there are
going to be any major changes here. Locking down systems vulnerable to
external input that triggers bugs, finding those bugs and fixing them,
preventing them from causing too much damage, is and has been a problem
on every OS.

> 2. ad-free and free as in beer android games are hard to find for us

I'm not sure what this has to do with security???

> 3. we are pissed off by browsers accessing the microphone
> or camera (seen in the wild)

Nominally speaking, on smartphones this should be stopped by permission
models, unless of course people impatiently click to permit everything.

Desktop browsers have their own permission dialogs for this.

Generic desktop programs designed for accessing your camera still kind
of assume the only permission they need is the trust you provide by
installing and running the program. Vetted linux distro repositories
make it unlikely these programs are intentionally spying on you,
especially when you choose when to start them.

> 4. reading $HOME might reveal more interesting stuff than
> root reading /etc/ (on debian 10 /home/loser is 755 and the
> default umask is 0022)

And reading C:\Users might reveal more interesting stuff than
HKEY_LOCAL_MACHINE; individual android app settings or your downloads
folder might reveal more interesting stuff than defeating Samsung Knox.

This has always been the case, and always will be. It's still
advantageous to prevent compromising the entire OS, because that
prevents malware from hiding its activities, installing more malware
that persists across reboots, or spreading its reach to other programs.

But, of course you need to protect yourself from malware running as the
local user too. Vet the sources of your software, or let a distro team
do the vetting for you, and most issues will be completely avoided.
Don't visit shady sites in your browser, use tools like
https://noscript.net/ to prevent completely untrusted and usually
suspicious executable code running in your browser (otherwise known as
javascript). These are things you could do on any OS.

...

There are explorations in sandboxing and confining expected-trusted
programs to prevent vulnerabilities from being usable by attackers, and
this may take the form of seccomp, bubblewrap, etc.

flatpak tries to provide a GUI appstore for popular applications in
sandboxes, with permission models for allowing resources into the
sandbox, e.g XDG Desktop Portal to broker access to files from the host
system through a trusted agent.

Though my understanding is in order to be (conveniently?) usable,
programs end up in practice needing to be granted access to the entire
host filesystem and therefore aren't really isolated after all. Not
entirely dissimilar to the situation on smartphones ;) where every
application's manifest tries to grab every permission it can, and
declares most of them as so vital the program won't even run without
those permissions.

Apparently both giving power to the user *and* preventing software from
running rogue, is indeed hard.

--=20
Eli Schwartz
Arch Linux Bug Wrangler and Trusted User


--be3ODVDpHjNZF61YIiqJCfi1zfNqaP4XM--

--RL40kDsiIbMzYCBcgmfS5thZw34Y1JV4S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEvSewel70XCra9w4EhIGKaBmvSpsFAl97rI4ACgkQhIGKaBmv
Spsv6BAAmLtsM8FD6mhOp5gjVc6oI5UsofrM7t9x6kx9WYfPTCOXXGg0ol/7iwVl
MMX1p4J9rKYBraS8quRWDk/GexJ+QHEu5zxm/Fo5vUMSRO02aUCS1D9kUP7u7Jcb
yYj9+bOUiXzk23hmBq3YrsbhBMOEF7FtgNSZk6jLtSo/zqwCdhTN0ke7W/hSW30I
1SXzK9a8eBUXj1Snc+Qac+4gthD9EfyUxHplGRTk6MVC6z2c1Gu3mW2PkLFQhgfJ
CvWeDaMDaYfM8zsoB9juBCdioe88QgpHI/PLfiykfXpNq/85pO1bv0kWga4kSVTn
1q7pVY06pSkZYdUrE08s4j2zEuziQx9JE4N8sY+Beoh76vTAwvXFG3bH3U2VoC5J
bZPjg4GSQ1EMMheqCGEcVZfFMj1/JuzW+JnreatevYGW3rP0MeVxb5R2l0pspNqJ
fM3YUde/Eo+da3SYamToxW4Kwein3IekVKeNY713zsJRNXk4a2fBCM2PFBXvT8bR
w2xsm1wXCML10enkkKGZ06o3Ul0zNAapBaYwb7Wt4j+KKp4R8YwyDKKZveqkIrGq
c6Ds2/2HxAtjT3P/oFqtLpOBuN9uBC8KOPHguCXrtZjCDRAy+1zPjVC8X5uJGBEo
AtRyEwUiiYfvQcaZawF3oOgleZ/7WYcYhmrER1h9gNPEdn/MGtuJAjMEAQEKAB0W
IQRgQRMEwJ02YoNA7v/OsWfvtXIr1gUCX3usjgAKCRDOsWfvtXIr1j/wEADXMnUg
nwo856EPFVAACnpJ8naZu08DdpDCumno21p7YUWe7VbZ2Z+SxsNQUXTDdMGYkj4A
ejbdbU1VHnnZh1Y2dg6ShYv2/qExRRpmO84930WIPN6ps+MNHe4jHLtQZTOlijyj
l1Rur5MvAH+j/XeEI30w7TLT1uWvLioa4AnL6US+WE628wlOohV9ZS0yFfxkrju7
6Bn13pvMtC+jugEnAlA0YpXScHRYxYvu4cwdevFRFmbcSjn4APE/np+NFDw1I9Sj
KfCuk6c11iNBqKpxyarzfnwSQIRKV7y1e1V3iaxfjUYIO45l9M7ieMZX2V0pJ9Jk
xB+Xo8KyduCDNcXLPt7rTAC3DyKxj6gxNSzuR+ql0gSvPbcx7aZtNvXyx5Yv+8ui
GG43UD2hA7cw0h5MteNYhYqTgM3GJl7MwQDxllrzSmE6J70j7SVlxf0lueSwjaGh
O9VBgxnbnTPs85EHMW99wBfpdo/cGvladlfr48m4mMpamvew5o3eemGY3aYWi7af
EEyTICo8OTx+Hg4PVAud9YFnj7gbdIfWEj4dnfrgB7x7xkLCua0Bq9Ftq83Rn/2G
UiXgjixuZ4acMmuiKG9x9aebk27g0+Gc8bwmMcFuRvGyoPu+uMvRJPNEjwme2mqu
O92ewLm05zohWKgrWvdIlHxKxDep9BKHIOG/Hg==
=XI9u
-----END PGP SIGNATURE-----

--RL40kDsiIbMzYCBcgmfS5thZw34Y1JV4S--
