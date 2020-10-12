X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5253" "Monday" "12" "October" "2020" "16:13:05" "-0400" "Eli Schwartz" "eschwartz@archlinux.org" "<841f6eac-05fd-49b3-a03b-3d291e62bee7@archlinux.org>" "121" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020101220:13:05" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        eschwartz@ar Oct 12  121/5253  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201012194139.GA30753@openwall.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "<87v9flhhj5.fsf@canidae.wired.pri>" "<20201012194139.GA30753@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3157 invoked by uid 550); 13 Oct 2020 10:44:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12095 invoked from network); 12 Oct 2020 20:13:24 -0000
X-Spam-BL-Results: 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=archlinux.org;
	s=orion; t=1602533588;
	bh=AqBosGBg6r3sXQhk+765zAdmTkKvS5PNXcekHQ1I/Bs=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=xYb2JkNIE9euMp1dh/HHY+Pu0CnzUO8G0zApyB2xz1M+7bpiM1KU7Hmk3uZCk8xKB
	 D0qk0WnygSUUX0qr2JZONjwDM8/fXrdQS/55P0855OZVc0cD1Mqq8IWGBJQAzcoOvm
	 MoyPZ/WQnGX9V0jUuiBmW2PHc7NU6ynjwQT0VZJipr4/3LclUKkMUVwQ8Pv4y7FvhA
	 pxAQwPZpVE1L5PAokUgThpbM/ihyBW+0A9fEl6LiE5WEmtxy5yHH9F5WjfrufwVeuH
	 491iaDdH6capxN3I8nsDGIkvymKPHC19bbSOBaxwtoT4ANaj4R5Y97sbdc154mGYRu
	 pauUWHhrvqQmma80loXosqfBz0yFQI3KYB8c1a+jugh9tyk8IXqjT0RklAoYbLj7LD
	 7GJA/8aTtLhhiBxbzjFysY6uOOuP5bog19/AebaHE/EtD/H/r6zLWov+SyGELUZqkS
	 Y+uxHkM2S5NQzqlI8hQVujgpAXmtziesj1kBRtO2oNsLdpx5qSM/FRvlvyBbSaK2Hm
	 9vEkFJLrusAdNxUFkelhsWxkC44c7Q/yQBmmrHIoLP+fxEqxwe2s5dPzTGd6kFK5r+
	 zsHl7Hc6acQ+9UW7VjtGbIxYDX9PCuL5KdNf0M+hLrhhKnAn49bM8KKW+pJFZuivoD
	 yy+xpffYVEJSFG+9FozY346o=
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
 <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
 <87v9flhhj5.fsf@canidae.wired.pri> <20201012194139.GA30753@openwall.com>
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <841f6eac-05fd-49b3-a03b-3d291e62bee7@archlinux.org>
MIME-Version: 1.0
In-Reply-To: <20201012194139.GA30753@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dXc8ASSTRiGnhD06qnUDooikmNo7uUx7W"
Date: Mon, 12 Oct 2020 16:13:05 -0400
From: Eli Schwartz <eschwartz@archlinux.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022
To: oss-security@lists.openwall.com

--dXc8ASSTRiGnhD06qnUDooikmNo7uUx7W
Content-Type: multipart/mixed; boundary="pkqdqT6BLx2YVTcHrlRIVqbqc3tNEZNf6"

--pkqdqT6BLx2YVTcHrlRIVqbqc3tNEZNf6
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 10/12/20 3:41 PM, Solar Designer wrote:
> Hi,
>=20
> A problem with Georgi's message that started this thread, besides its
> overall tone, is that it singled out Debian.  In my experience, most
> Unix-like distributions use insecure defaults like this.
>=20
> On Thu, Oct 08, 2020 at 08:07:10AM +1100, Brian May wrote:
>> Jeremy Stanley <fungi@yuggoth.org> writes:
>>
>>> As a long-time Debian user myself, I agree that this default is
>>> showing its age, and can represent a risk for operators who overlook
>>> it.
>>
>> Yes, I agree the default should be changed.
>=20
> I also think the defaults should be changed, and not only on Debian.
>=20
> Special cases like serving web pages do not justify insecure default
> home directory permissions - rather, they're reasons to provide extra
> setup instructions in web server packages, etc.

https://wiki.archlinux.org/index.php/Access_Control_Lists#Granting_executio=
n_permissions_for_private_files_to_a_web_server

This seems like a fairly solvable problem.

By default, Arch Linux's login.defs umask is 077, so home directories
created by useradd cannot be read at all by other users. (It is then
overridden by /etc/profile to 022.)

>> Just note that there is a reasonable amount of software install
>> instructions that assume umask is 022 and will install software with
>> unusable permissions if it is not.
>=20
> This is indeed a problem.  When building software manually (not
> packaged) and wanting to install it on a system globally (e.g., in
> /usr/local), a workaround is to use "(umask 022; make install)" - that
> is, temporarily relax the umask to 022 just for that one command by
> running it in a subshell.
>=20
> RPM typically invokes "umask 022" for all(?) package build scripts,
> including the %install section, which lets it build proper packages even
> when run on a system with umask 077 even when the packaged software's
> install scripts assume umask 022.
>=20
> I think package install scripts should learn not to assume umask, or at
> least not when installing software globally.  When installing to a
> subdirectory of the user's home directory, it makes sense to honor the
> user's umask, but those cases probably can't be recognized reliably.
>=20
> It's a pity that software will just assume it's to be installed globally
> (or with equivalent permissions), but the current reality is no better
> where things break arbitrarily (e.g., some files mode 644, some 600)
> when installing unprepared software with umask 077.

It depends how the software is installed, surely? Some things use
mkdir/cp, some use install (which defaults to 755).

Some build systems, like meson, have a core setting for the installation
umask, ignoring the process umask in favor of 022 by default or whatever
configuration option was passed.

> I think distros have to take the first step and change the default umask
> to 077.  Until enough distros do, software maintainers won't have the
> incentive to support that or won't even know about the problem.
>=20
> Alexander
>=20


--=20
Eli Schwartz
Arch Linux Bug Wrangler and Trusted User


--pkqdqT6BLx2YVTcHrlRIVqbqc3tNEZNf6--

--dXc8ASSTRiGnhD06qnUDooikmNo7uUx7W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEvSewel70XCra9w4EhIGKaBmvSpsFAl+EuNEACgkQhIGKaBmv
SpuZ3g/+I+XeF4p0Jqbo5kLJrj+yDP7o/YYb6yxu1tS/6KwKy3b1W+DiZiZv7Y/a
MC1RxQQ7dwNvUjmbljB1gKg3IR7gdLHOCKdDh9HDPzAdomS8k78ejfBE+UL1cXxW
KPA6UCjK5lCKLKjx+B+uONTn170+0I6RPwdOK6SKGi04SwfzLnvKlhS5qs5xZpm8
Xlf4oAjIxgKYxeEUBXGs89jDFHYq0U2Tb+/hFb7M+22deg/+SgLXW59uzdPOu5p5
mRaSg0LNruCcLFAcCeZGX3kE/zGUqxHrWxdBcGm9Wg0gIHquRGQfZHzBxHf+k+yF
aXJ9nUrzM6R1QZ5Wjy8F6b1LH907F1aCP+fVF5QUVuZmNyVQKy7rWD6zPMJFowat
a3doIYVPgNB8Ovlp48myQcqAtn0EYIBoQd71OolhB4e+qEZZewRmd3nXbFRxgir5
mp6qNTO6yKHW6itv9QMGnwM3J3DUPuhFafSHZ0y/mK1A6zXELOkuRgATNiL6QWJO
2dcFfAgOC6Ihurp2Qw5fB4f1abjOkqfwe3oETYozDuBScvkttyZ0kwIJKQQ0+6m5
J4CrTCfAm1G0Ye5z77fNRaN1mUsY6R8s60R3bWW9eO0ECkX2BOzdE2K3Wz9F/8nU
YQJlBl3CFRQlpsV9hmAU4x8lyWzEDrb4/+zo6LY6jmH5P9OoeSaJAjMEAQEKAB0W
IQRgQRMEwJ02YoNA7v/OsWfvtXIr1gUCX4S40QAKCRDOsWfvtXIr1hLzEAC4xvQP
ZwCojHJnZ8qqL7T1FW9/+46x1KtzXVjYepylktg25KO7LfTcWn0qe4S6/aNfAaNd
BFM3x8InWYs6fHMQh0ft6PNc4yQJlVYiUa4Ua8N+FB78Lqpv2ylltx2A9AMHUhZZ
5AghvBl+oseFXyswLyFuENb3/wEvk3S1c5GpH0nW844jztFVS1UQ7MdpLvGfrNLk
HS2zy6WTjSlG3jnE1knKVUBA+hK9LUevEaiqjxbhziIbqR3djakhXKfMoVnI9RLD
Rr4h8xL+/x4OVWadw4beIil6YLjxsPavQW3jjbdIQPOV4/xAIK7b9MT1NQ4aFVrv
Ukt4DbmfBhHY5tRPAyNexMIf0k3L2DQzhlNSCrRZY514ztOczZZQ+fE5GDOPGxXM
tKhNFBIiUUWYLad9hTphG97plsJDdzs526KS3fZoGXPp9RwUQMoKedxrWUmFtEgk
LcSA5hAFgRtnw7hXtfbrcy6SOZ4WubdJR6+LOFfjMB/iK0Q5y1hwKWnsh538wWHh
00Rhzy1NrvF0OzepQcE7QmZEZxh1HJ5nZl9iYPF3MRdl0y5iiCTD1LwAWt3lwda6
SQq5eh6X5K2O3wuqLQDiUDV9Y2YVEIO6wt6WTSw4YdaHprvg/yPUTFL7a6LA4eBM
Nf76yZ2h29nvie20coFY75azqUKLWH3pvsoUOQ==
=BZ5z
-----END PGP SIGNATURE-----

--dXc8ASSTRiGnhD06qnUDooikmNo7uUx7W--
