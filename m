X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4681" "Wednesday" "15" "April" "2015" "11:36:22" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150415163622.GC15511@boyd>" "131" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041516:36:22" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        tyhicks@cano Apr 15  131/4681  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<20150415160557.GA15511@boyd>" "<CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5238 invoked by uid 550); 15 Apr 2015 16:36:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5205 invoked from network); 15 Apr 2015 16:36:37 -0000
Message-ID: <20150415163622.GC15511@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com>
 <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd>
 <20150415160557.GA15511@boyd>
 <CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bu8it7iiRSEf40bY"
Content-Disposition: inline
In-Reply-To: <CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com,
	Assign a CVE Identifier <cve-assign@mitre.org>,
	security <security@ubuntu.com>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 11:36:22 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis
 frameworks
To: Tavis Ormandy <taviso@google.com>

--Bu8it7iiRSEf40bY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-04-15 09:21:39, Tavis Ormandy wrote:
> On Wed, Apr 15, 2015 at 9:05 AM, Tyler Hicks <tyhicks@canonical.com> wrot=
e:
> > On 2015-04-14 17:16:08, Tyler Hicks wrote:
> >> On 2015-04-14 14:10:12, Tavis Ormandy wrote:
> >> > On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> w=
rote:
> >> > > On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com>=
 wrote:
> >> > >> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
> >> > >> <marc.deslauriers@canonical.com> wrote:
> >> > >>> Hi,
> >> > >>>
> >> > >>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
> >> > >>>> This is mostly a question for the persons who assigned CVE-2015=
-1318
> >> > >>>> and CVE-2015-1862. Should these CVE assignments be interpreted =
to
> >> > >>>> mean:
> >> > >>>>
> >> > >>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
> >> > >>>>                   namespace-based attack because there is an ex=
ecve by
> >> > >>>>                   root after a chroot into a user-specified dir=
ectory
> >> > >>>
> >> > >>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
> >> > >>>
> >> > >>> Marc.
> >> > >>
> >> > >> It looks like this is the patch for Apport:
> >> > >>
> >> > >> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision=
/2943#data/apport
> >> > >>
> >> > >> It's far more complicated than I expected, and not obviously corr=
ect.
> >> > >> It could probably use some review, I'll think about it today.
> >> > >>
> >> > >> Tavis.
> >> > >
> >> > > Wait, my first thought is that it's not obvious to me that
> >> > > /proc/net/unix is guaranteed to be newline delimited, newline is a
> >> > > perfectly valid name in a filename, no?
> >> > >
> >> > >>>> import socket
> >> > >>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\nt=
est')
> >> > >>>> sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
> >> > >>>> sock.bind('/tmp/foo\nbar')
> >> > >>>> sock.listen(1)
> >> > >
> >> > > $ grep -A1 foo /proc/net/unix
> >> > > 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/=
foo
> >> > > bar
> >> >
> >> > And with complete control over this line, it seems like it's game ov=
er.
> >> >
> >> >                 container =3D lxc.Container(path[-2], real_path)
> >> >
> >> > I'm calling this re-broken.
> >>
> >> I've pointed St=E9phane Graber to your analysis (and put him on cc). H=
e's
> >> working on a fix.
> >>
> >> Even though it isn't clear if all of the checks added in revision 2943
> >> can be bypassed, it is worth coming up with another approach.
> >
> > Hi Tavis - We've opened a bug to track the issue that you discovered:
> >
> >   https://launchpad.net/bugs/1444518
> >
> > St=E9phane has prepared a patch that is more resilient to a malicious
> > /proc/net/unix:
> >
> >   https://launchpadlibrarian.net/203372380/apport.diff
> >
> > Any feedback that you have would be appreciated. Thanks again!
> >
> > Tyler
>=20
> Thanks Tyler, I'll think about this morning. I'm not sure if these
> observations are important, but my first thought is It's definitely
> possible to make the st_uid of /proc/ppid 0, you could just do su
> $USER for example.

Ah, right. Looking at the real uid in /proc/ppid/status is the way to do
it.

>=20
> Also, you can at least trust /proc/pid is stopped while the core
> handler is running, but ppid is still running. I think this matters,
> because the pid might be recycled.

That's why I suggested that he chdir('/proc/ppid') and then only work
off of relative paths. I assumed that would be sufficient but I'll
verify that.

Tyler

--Bu8it7iiRSEf40bY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVLpOFAAoJENaSAD2qAscKl/8QAJLGY3G9G5uomz8yj2DLMZQc
ZKuHZSmZ0Pu8o/TTH5yH7KkUgmxhKT4121R5cVy8ZHKCrdj6ryvQqXm0h8w3Q6d9
BAjyjg2yjWf1tnDc2LGfeUiSQy/WG66ByQd+GpBJsBr5K2FVK2JsRH4HD5MWD5B+
UYYEMwj1YdcFkV3fNEFdAURWp3vMbmJsROzHvAlO7QsobmZTICI4xhvRz1y5iLjO
aBpqGkJOSqztVL3qgnLWz3OB+LmSMLRaBzX/p4dWcYVh6LQ8ALOu7vfA/QUfRMhD
0S7gwm0wVOf/xYYprXG9Vwg74DQYxRXuEIJKyFdXvp1u5I9exVsAkK6DX6XQrTW2
/HivnrygByJITI/3th9zYv8OOmYNj42hWnH3NMWacjGn9jQ3wrVrxSEQFZMGrQkW
HKhpL8kAhxyvEMETsvXf58KXpvDWWp583gJMWA/w6ekgyzqNn+n7qp7i463VSi2Z
9E9bg6Yo3LjO4BBwnowiODUrH9O1fYjNlIINBXHgpedi5QF1k+dIpYLgC7Z26CMS
sfxidks3KKNEPgd/hd2ZHA70c/HBil7NFowGrCnhN6XMZWlJ4BwruZoEBTQofOzV
uBR7TGWkEPBuZhvJtBpDtH7exumwWETJ8gXWeTSd99XPP6mJfEbpIPKoacj+XN+n
MGCJEmNxGh7EyWW0xPcT
=pt26
-----END PGP SIGNATURE-----

--Bu8it7iiRSEf40bY--
