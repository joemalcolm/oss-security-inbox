X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1788" "Tuesday" "30" "June" "2015" "14:59:17" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150630215917.GC13944@hunt>" "49" "Re: [oss-security] Question about world readable config files and commented warnings" nil nil nil "6" "2015063021:59:17" "[oss-security] Question about world readable config files and commented warnings" (number mark "        seth.arnold@ Jun 30   49/1788  " thread-indent "\"Re: [oss-security] Question about world readable config files and commented warnings\"\n") "<20150630213006.GA2270@debian>" ("<559224EC.3080008@redhat.com>" "<20150630060358.GA24238@gremlin.ru>" "<5592A82C.2090301@redhat.com>" "<20150630213006.GA2270@debian>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6079 invoked by uid 550); 30 Jun 2015 21:59:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6055 invoked from network); 30 Jun 2015 21:59:31 -0000
Message-ID: <20150630215917.GC13944@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <559224EC.3080008@redhat.com>
 <20150630060358.GA24238@gremlin.ru>
 <5592A82C.2090301@redhat.com>
 <20150630213006.GA2270@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rQ2U398070+RC21q"
Content-Disposition: inline
In-Reply-To: <20150630213006.GA2270@debian>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 30 Jun 2015 14:59:17 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Question about world readable config files and
 commented warnings
To: oss-security@lists.openwall.com

--rQ2U398070+RC21q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2015 at 11:30:06PM +0200, vladz wrote:
> We all know that a better way to create the file would be to set the
> adequate umask first.  But the above steps can be found in initialization
> and installation scripts (I can share a non-exhaustive list if wished).  I

Probably we should get CVEs assigned for these, that's the best way to
make sure they're not overlooked.

> also wouldn't recommend the use of "-m 600" in the "install" command as it
> has the same problem:
>=20
>     # touch f1
>     # strace install -m 600 f1 f2
>     [...]
>     open("f2", O_WRONLY|O_CREAT|O_EXCL, 0644) =3D 4 // here f2 is readable
>     chmod("f2", 0600)                         =3D 0

The three-argument open() has been available for absolute ages:

https://www.freebsd.org/cgi/man.cgi?query=3Dopen&apropos=3D0&sektion=3D2&ma=
npath=3DFreeBSD+1.0-RELEASE&arch=3Ddefault&format=3Dhtml

I'm surprised install hasn't been updated at some point in the last twenty
years to use the mode correctly. It's probably also CVE-worthy.

Thanks

--rQ2U398070+RC21q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVkxE1AAoJEPMhclmdjS6XXlQH/2NMa6DoOlx2vkqFVFUxyvLq
7YyxDzGhfSFjb/gjOliMb8JflfKgC6fu26tEkh1lN42NTW6pjJoVDdS77vRvUwy/
jrIgCGq84y2iNahK5UhPfWk04QnSmSZukBcR8tQe+oKDuPmrJVxxQsXXVf7QUNBK
UYE8bCenllVEzH/tfBGZGT6skFX0kFRIimoREo8GDM5JcV9XQSNbgitcSzyLYndd
q4+hkcYfInHsGTOTMtbNdxNGh4/gLvD4ZOZKLQkGzSPil8cyAFeyqR96cr9cTsdO
REFCbDmLCME+97iq/71rFcObPMuwccNEVkNdr/OJTXXITz7ZiNrZgZolG0KHLG0=
=s8cn
-----END PGP SIGNATURE-----

--rQ2U398070+RC21q--
