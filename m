X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1990" "Friday" "31" "July" "2015" "03:01:22" "+1000" "Joshua Rogers" "oss@internot.info" "<55BA5862.6060104@internot.info>" "51" "Re: [oss-security] A new class of security vulns?" nil nil nil "7" "2015073017:01:22" "[oss-security] A new class of security vulns?" (number mark "        oss@internot Jul 31   51/1990  " thread-indent "\"Re: [oss-security] A new class of security vulns?\"\n") "<55BA43E4.7040506@redhat.com>" ("<55BA43E4.7040506@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9545 invoked by uid 550); 30 Jul 2015 17:01:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9527 invoked from network); 30 Jul 2015 17:01:39 -0000
Message-ID: <55BA5862.6060104@internot.info>
Organization: Internot IT
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.8.0
References: <55BA43E4.7040506@redhat.com>
In-Reply-To: <55BA43E4.7040506@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="OTkoQ82rmJpPS4968K4kUDuXmgMqBmXdO"
Date: Fri, 31 Jul 2015 03:01:22 +1000
From: Joshua Rogers <oss@internot.info>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A new class of security vulns?
To: oss-security@lists.openwall.com

--OTkoQ82rmJpPS4968K4kUDuXmgMqBmXdO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 31/07/15 01:33, Kurt Seifried wrote:
> However now I'm seeing flaws around printing/display of user data, e.g.=

> systems where a user can set their own name, but fills it with backspac=
e
> characters, so when an admin looks at the text record it is
> mangled/shows something the attacker wants them to see and not the
> "True" data.
This seems vaguely related to the problem on many forums, where certain
characters can be used to masquerade as others, such as using the
Russian alphabet "=D0=A2", instead of the English "T". They look exactly =
the
same, but are obviously treated differently.
$ echo '=D0=A2 T' | sed -n l
\320\242 T$


=46rom a forum standpoint of what I've mentioned, the only
'exploitability' is through the use of impersonation.
--=20
-- Joshua Rogers <https://internot.info/>


--OTkoQ82rmJpPS4968K4kUDuXmgMqBmXdO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVulhiAAoJEJCcj5QpbmADx6IP/3gIe+cx9JSWJltfhBAtBUbS
CDCSPleFtxXC8D3gV63cwhGLWtMYZx3ztFmbetfbwew37mFI333mMs+W+J1WddWB
zgi9F3ZLaX0Ie8wl7YaJmt//JN81PedkSErznaeia/QrI2jLGAfG709aTyfb7ibR
EI1sbXJq74pHWNjb20ehaP8GqGGTf96ZL7GGZNkJfiNsSbz35gPkwqPlnrbZcu7z
fZwHo5lX73955LQwDXsjYH1WehbgJt1ZKqzISm3H88+zl9hzD3MoVm/naGbb9s36
1bOKhabhxSrVsByBY97UfdIZRYdb7/CfGHX9eimf6OSLUw9m25LQpDjTrva3sLZq
nplytIkoQVjb1/SGQybx+XkuCe405cbq77nmItAOj2cNwiAvwAL1aqrnzfWzvOKK
VwNMm8n9wIW6Y+Qm1ucak1y8JEQItw4yuQ4ZGUM/BApvGEkVT2Av/8Rw9XWOYt4D
5/ANViKmsHmsMIDR7nIyHWmRvDIZHVO3MY/ht7w6ntbLh855ShKXDNPuQhq4DnJw
p401kKlHmUK6b3LfnW+B3FYWaaAjgOclgqYW7m7+P80Ln7ChBeBPLfj32sHs7Mzx
sbc+dAhdWZbk0DRuDe7lu5Lwu6feir4PsWsJGvkB/dihdbo8CqMmjfmBJMrITJ1H
tgPbtgLrtC9ITHDaIpo4
=J5J6
-----END PGP SIGNATURE-----

--OTkoQ82rmJpPS4968K4kUDuXmgMqBmXdO--
