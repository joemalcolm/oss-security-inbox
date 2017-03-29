X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3174" "Wednesday" "29" "March" "2017" "16:57:49" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<d147eecf-cbde-f20e-b526-c69a02abaef6@canonical.com>" "93" "Re: [oss-security] information about pwn2own Kernel problem" nil nil nil "3" "2017032921:57:49" "[oss-security] information about pwn2own Kernel problem" (number mark "U       tyhicks@cano Mar 29   93/3174  " thread-indent "\"Re: [oss-security] information about pwn2own Kernel problem\"\n") "<CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>" ("<20170322103936.GB28849@suse.de>" "<9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>" "<d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>" "<CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27747 invoked by uid 550); 29 Mar 2017 21:58:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27729 invoked from network); 29 Mar 2017 21:58:07 -0000
To: oss-security@lists.openwall.com
References: <20170322103936.GB28849@suse.de>
 <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>
 <d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>
 <CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>
Cc: "security@ubuntu.com" <security@ubuntu.com>
From: Tyler Hicks <tyhicks@canonical.com>
Message-ID: <d147eecf-cbde-f20e-b526-c69a02abaef6@canonical.com>
Date: Wed, 29 Mar 2017 16:57:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="goPDjD5SAXmKPSbwSHUtrpEaG0lVj2pNs"
Subject: Re: [oss-security] information about pwn2own Kernel problem

--goPDjD5SAXmKPSbwSHUtrpEaG0lVj2pNs
Content-Type: multipart/mixed; boundary="NX0Fi52s4i5M7ixD0N02V6MSE6lD99IEu";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: "security@ubuntu.com" <security@ubuntu.com>
Message-ID: <d147eecf-cbde-f20e-b526-c69a02abaef6@canonical.com>
Subject: Re: [oss-security] information about pwn2own Kernel problem
References: <20170322103936.GB28849@suse.de>
 <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>
 <d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>
 <CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>
In-Reply-To: <CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>

--NX0Fi52s4i5M7ixD0N02V6MSE6lD99IEu
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

This issue is no longer embargoed and I've just sent some details to
this list:

  http://openwall.com/lists/oss-security/2017/03/29/2

The upstream kernel was affected and fixes have been committed.

Tyler

On 03/22/2017 05:19 PM, Dave Null wrote:
> I was wondering this myself. I'm not sure if ZDI does any variant
> investigation when they pick up a bug. Really hoping this doesn't jump fr=
om
> a distro related problem to a Linux problem.
>=20
> -noid
>=20
> Crypto: https://keybase.io/noid
> None are more hopelessly enslaved than those who falsely believe they are
> free - Goethe
> --
>=20
> On Wed, Mar 22, 2017 at 1:54 PM, Luedtke, Nicholas (HPE Linux Security) <
> nicholas.luedtke@hpe.com> wrote:
>=20
>>
>> On 3/22/2017 2:21 PM, Tyler Hicks wrote:
>>> ZDI disclosed the information to the Ubuntu Security team a little less
>>> than 48 hours ago.
>>>
>>> The Ubuntu Kernel team has triaged the issue and came up with a
>>> potential fix. That fix is undergoing internal review and I'll be
>>> disseminating it via the usual channels once that is complete.
>>>
>>> Tyler
>> Is this an Ubuntu specific issue? Or does it affect the upstream kernels
>> as well?
>>
>>
>> --
>> Nicholas Luedtke
>> HPE Linux Security, Hewlett-Packard Enterprise
>>
>>
>>
>>
>=20



--NX0Fi52s4i5M7ixD0N02V6MSE6lD99IEu--

--goPDjD5SAXmKPSbwSHUtrpEaG0lVj2pNs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJY3C3dAAoJENaSAD2qAscKoWQP/Ay+uJE/+jDqK/g9pyF+dwNa
Xov8jtuGtzy98q3Qm10ovnLaxjeIjNLJhVVJQzZDWL35UoBLawbGRut6A7zJOcTT
lp8CRkbaAebFQQkzy2mh+Dl1Wu75WkLtrWuseyDpH0c9AngNj1k6KpVBV38By7dl
b9E6PgoebqKkURwp6YPEopNIe3WpNGaq7e3gGRiw4hlxMFzWk0pnuPXlWa5woOIq
KppXI9XYn4LYJ32qo39rd21seL3To+U71eC9Id+YpH0JpKaLKwLcGVCb4WH1R2YZ
chDRqF+iO801QfSScTkXczrHt4M9haldAkkqi15v78ImMouewBnh0KpBaYicZm7n
9vFqOIUTjmlX2/gdPkC214cT0tHurgsWigfWIzOfy1qElBAXxC9a0RQqwjgGxO1m
UjcCJhsJmwQDYwA4fY8WrZ8CSseFo9Zl57vOOfUzYt4H7ThnIUIiwQZVE7cqwaJ3
YXn171k7Yr6giGqNWUO0BYKRA9Hy2dOfayY+SU8+9HwiQCqAnA9QZ/lcMXxX1tHs
TMDTLTDwHUy7i5ahzYy34DrzuE4fG2ZEHqd2HK7TsAuz5xmtP6+ZVprOdrVAM7LN
QNt3CBuaTG1olrmFyJ3zSho3WxB4L9aULkpv6chYxHWLw9igl1lHSM9IDHZ6mTr1
LJoFIZOFznYFNQV5hjbj
=W+Zq
-----END PGP SIGNATURE-----

--goPDjD5SAXmKPSbwSHUtrpEaG0lVj2pNs--
