X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3699" "Wednesday" "15" "April" "2015" "11:05:58" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150415160557.GA15511@boyd>" "104" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041516:05:58" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        tyhicks@cano Apr 15  104/3699  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150414221607.GA5795@boyd>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32750 invoked by uid 550); 15 Apr 2015 16:06:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32705 invoked from network); 15 Apr 2015 16:06:13 -0000
Message-ID: <20150415160557.GA15511@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com>
 <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline
In-Reply-To: <20150414221607.GA5795@boyd>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com,
	Assign a CVE Identifier <cve-assign@mitre.org>,
	security <security@ubuntu.com>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 11:05:58 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis
 frameworks
To: Tavis Ormandy <taviso@google.com>

--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-04-14 17:16:08, Tyler Hicks wrote:
> On 2015-04-14 14:10:12, Tavis Ormandy wrote:
> > On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> wrot=
e:
> > > On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> wr=
ote:
> > >> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
> > >> <marc.deslauriers@canonical.com> wrote:
> > >>> Hi,
> > >>>
> > >>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
> > >>>> This is mostly a question for the persons who assigned CVE-2015-13=
18
> > >>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
> > >>>> mean:
> > >>>>
> > >>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
> > >>>>                   namespace-based attack because there is an execv=
e by
> > >>>>                   root after a chroot into a user-specified direct=
ory
> > >>>
> > >>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
> > >>>
> > >>> Marc.
> > >>
> > >> It looks like this is the patch for Apport:
> > >>
> > >> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/29=
43#data/apport
> > >>
> > >> It's far more complicated than I expected, and not obviously correct.
> > >> It could probably use some review, I'll think about it today.
> > >>
> > >> Tavis.
> > >
> > > Wait, my first thought is that it's not obvious to me that
> > > /proc/net/unix is guaranteed to be newline delimited, newline is a
> > > perfectly valid name in a filename, no?
> > >
> > >>>> import socket
> > >>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest=
')
> > >>>> sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
> > >>>> sock.bind('/tmp/foo\nbar')
> > >>>> sock.listen(1)
> > >
> > > $ grep -A1 foo /proc/net/unix
> > > 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
> > > bar
> >=20
> > And with complete control over this line, it seems like it's game over.
> >=20
> >                 container =3D lxc.Container(path[-2], real_path)
> >=20
> > I'm calling this re-broken.
>=20
> I've pointed St=E9phane Graber to your analysis (and put him on cc). He's
> working on a fix.
>=20
> Even though it isn't clear if all of the checks added in revision 2943
> can be bypassed, it is worth coming up with another approach.

Hi Tavis - We've opened a bug to track the issue that you discovered:

  https://launchpad.net/bugs/1444518

St=E9phane has prepared a patch that is more resilient to a malicious
/proc/net/unix:

  https://launchpadlibrarian.net/203372380/apport.diff

Any feedback that you have would be appreciated. Thanks again!

Tyler

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVLoxlAAoJENaSAD2qAscKQB4P/2hGq6YPAlWaL9bXTqDvsxSf
A7oKbphmvnYQ0JUR2wI50AVcuZAbk11C7k6vY2UGQlfIpCdrbCRtb+njieGiu+MZ
RAJ2PaEguDRV8DsZ9ec4ZHl7YUj3vG3EQ+yVms/RIE66dG5AucsP/QucimMeRgxw
ikZseZO2Wy6oc3XVEuH8QXPRDXyV0+KfOQuntiPd2Ww9Y0t33XviVdpv+MbdZrBx
83OR44jIkwaxjlivvvz/oSnPb0UVb7XYctHfNhsYlNKpnIe4Gkm4OrXJsr+i/vcg
+cw3CpIfDdu9I0ouE4c3LX6Hgj5Nm8v8udJBMSwzGQvHw8as3sknnmX4tOSSAF9Y
jVCuYjB+NorGcNPvMuavg9tDMSMUECgO1pIdTqYTy32zunp17ERKtuArhuS/SEQq
Sd/elWguMnCHGC4Il1QRTGFa0W41asDdxh/8lsxiMuT1151+krLD0Q/bTH2QMNir
XcQWr1DdcYjdRkpaqejozrWpCaiYaMT81+qFcUCTgZcCYSEgcebcrHnXZvX65iaG
p/GZ6LJ/Y91AvOvY9WY8IBy9VuBNHe2oqdyCBNOFHKwIEeG5UfzYYHyEQ8DlDxsD
dW8mqsAEgHQX9Oa+oyH+aY6gj2Vez6VR+aHtlO0PZSgYzfY31GRhj+nLj3jgb+u/
9bXctG6gDTb7B1Xw0/VN
=d+EY
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--
