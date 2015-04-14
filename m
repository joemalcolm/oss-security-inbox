X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3229" "Tuesday" "14" "April" "2015" "17:16:08" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150414221607.GA5795@boyd>" "90" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041422:16:08" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        tyhicks@cano Apr 14   90/3229  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1372 invoked by uid 550); 14 Apr 2015 22:16:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1354 invoked from network); 14 Apr 2015 22:16:26 -0000
Message-ID: <20150414221607.GA5795@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com>
 <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline
In-Reply-To: <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com,
	Assign a CVE Identifier <cve-assign@mitre.org>,
	security <security@ubuntu.com>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
Date: Tue, 14 Apr 2015 17:16:08 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis
 frameworks
To: Tavis Ormandy <taviso@google.com>

--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-04-14 14:10:12, Tavis Ormandy wrote:
> On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> wrote:
> > On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> wrot=
e:
> >> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
> >> <marc.deslauriers@canonical.com> wrote:
> >>> Hi,
> >>>
> >>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
> >>>> This is mostly a question for the persons who assigned CVE-2015-1318
> >>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
> >>>> mean:
> >>>>
> >>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
> >>>>                   namespace-based attack because there is an execve =
by
> >>>>                   root after a chroot into a user-specified directory
> >>>
> >>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
> >>>
> >>> Marc.
> >>
> >> It looks like this is the patch for Apport:
> >>
> >> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/2943=
#data/apport
> >>
> >> It's far more complicated than I expected, and not obviously correct.
> >> It could probably use some review, I'll think about it today.
> >>
> >> Tavis.
> >
> > Wait, my first thought is that it's not obvious to me that
> > /proc/net/unix is guaranteed to be newline delimited, newline is a
> > perfectly valid name in a filename, no?
> >
> >>>> import socket
> >>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest')
> >>>> sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
> >>>> sock.bind('/tmp/foo\nbar')
> >>>> sock.listen(1)
> >
> > $ grep -A1 foo /proc/net/unix
> > 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
> > bar
>=20
> And with complete control over this line, it seems like it's game over.
>=20
>                 container =3D lxc.Container(path[-2], real_path)
>=20
> I'm calling this re-broken.

I've pointed St=E9phane Graber to your analysis (and put him on cc). He's
working on a fix.

Even though it isn't clear if all of the checks added in revision 2943
can be bypassed, it is worth coming up with another approach.

Thanks!

Tyler

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVLZGnAAoJENaSAD2qAscKIjAQALw31S2iDAB7g/95g1QJBDsb
KOzmD6l5tqRtvSr2zUXhOdYCvSTzrqo68SFx913GiDVybOI/CrxDXb/owid+rqF7
Gygw8IrUnOVw5Qsc2rENfg+c+KYZjDBLCCFIWG2ItJf2oaqSdKbt9tEkXZodbSip
C5xwOxty1Sk1SpKRRCCJvWi64N7et3Jab5w+QL4CXUM3u8dU17CuH7uFKBnMyecc
3mcRuQSjKf/J59mIX1G+fNzvtYJJE6ii5y0uEwZnNHHUkoEEvHHRhZOFWYL6rjVY
cTeBX7uAy9k7oqQLtgR9zO3UfofvgNhKST1eGHd7KrUDCY1J4DQiibqHao1oHLSI
BPU9M177eN0S8lwWUG0sQAc27dHhYjQX7YCdjm/qXb/3Ph/CzOzTsX+jS5+ElL+G
FusyfuFBpwwmNkgPxyaS4016AW8JxsFDs9lO/RMSDRinRGtKDCP5d6xX2TffD4Pb
gPfbI/yL8M0rKVgRKw9sAT5mWvL0vBBggn43tiGUWks7kP2ZiPAygLcw/s7hOR3r
cMJ3TV1DlMjQ9ZutakWU/2eIc8B1vh3bWXFup6xaHlKV1tW6pwsIPPvgfZUe/LnN
VuJyBROoXxsPWzfJiMLlT05E61dr93dE/8+B4baxvTsz2yVdy5bPCWRSRktmF3pO
j3ug5MGVqts0ONfNQsdK
=P8bi
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--
