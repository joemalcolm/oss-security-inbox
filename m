X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1848" "Thursday" "8" "October" "2020" "00:30:01" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20201008003001.GE378617@millbarge>" "62" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100800:30:01" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       seth.arnold@ Oct  8   62/1848  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27926 invoked by uid 550); 8 Oct 2020 00:30:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27908 invoked from network); 8 Oct 2020 00:30:15 -0000
Date: Thu, 8 Oct 2020 00:30:01 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20201008003001.GE378617@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
 <alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8TaQrIeukR7mmbKf"
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022

--8TaQrIeukR7mmbKf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 07, 2020 at 04:09:59PM -0500, Bob Friesenhahn wrote:
> Ubuntu Linux (a Debian derivative) has changed the default.  However, we
> found that the Ubuntu default caused problems for us while building our
> software, and so we changed them back.

Hello Bob, can you please share some details on this?

I expect Ubuntu home directories to be 755 by default:
https://wiki.ubuntu.com/SecurityTeam/Policies#Permissive_Home_Directory_Access

And while it is very difficult to say "the umask", given that every
process's umask setting depends upon the actions of not only itself but
also its nearest parent to use the umask(2) syscall, but:

$ grep ^UMASK /etc/login.defs
UMASK		022

$ systemctl show -p UMask '*' | sort -u

UMask=0022

I'd certainly expect the default settings to be a umask of 0022, there's a
variety of umasks on the systems I've got easy access to:

$ sudo grep -h Umask /proc/*/status | sort -u
Umask:	0000
Umask:	0002
Umask:	0022
Umask:	0077
Umask:	0777
$ sudo grep -h Umask /proc/*/status | sort -u
Umask:	0000
Umask:	0002
Umask:	0022
Umask:	0077
$ sudo grep -h Umask /proc/*/status | sort -u
Umask:	0000
Umask:	0002
Umask:	0022

Thanks

--8TaQrIeukR7mmbKf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl9+XYUACgkQ8yFyWZ2N
LpfYeAf+MYbfTaLX4o41iY8skoMGygn3z0bm5cRRZmULYV9T1gKXDeCNXp3mdfN9
KNw7YDR9exXqBPqjifijroMyzY4z5J0zMb4y/UEhnY97mpulK8uh5aazcptncsjF
zg8d0WbyeBQWSBa3KAh8MeCHOiepFs4JiEUxE53A4L1BPKsvEmcHvrBA+WXjW6yv
/Xf35p2bAkAPVoPszjXeYztl1vfW3fB3fZKFHI4dp+c+ucTjIUy4xFuxRz39BiDn
IcljaEx2CooAJMpR2D8SXiDuq/AltSlU/VSx+CvtQzzYOWLJUYbAWIIYXN5z54VS
gZ3I6G7a4qZ+71PzpengbLaqtdIjRQ==
=c336
-----END PGP SIGNATURE-----

--8TaQrIeukR7mmbKf--
