X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2609" "Wednesday" "1" "July" "2015" "14:27:04" "+0200" "Andreas Stieger" "astieger@suse.de" "<5593DC98.7000204@suse.de>" "70" "[oss-security] CVE Request: two security issues in openSSH 6.9" nil nil nil "7" "2015070112:27:04" "[oss-security] CVE Request: two security issues in openSSH 6.9" (number mark "        astieger@sus Jul  1   70/2609  " thread-indent "\"[oss-security] CVE Request: two security issues in openSSH 6.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3208 invoked by uid 550); 1 Jul 2015 12:27:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3187 invoked from network); 1 Jul 2015 12:27:23 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <5593DC98.7000204@suse.de>
Organization: SUSE Linux GmbH
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="SmgfOcD5nxfNn73d3rfL0Lnh2rFxvIs1n"
CC: oss-security@lists.openwall.com
Date: Wed, 01 Jul 2015 14:27:04 +0200
From: Andreas Stieger <astieger@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: two security issues in openSSH 6.9
To: cve-assign@mitre.org

--SmgfOcD5nxfNn73d3rfL0Lnh2rFxvIs1n
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

The openSSH 6.9 release contains the following changes declared as
security issues:

http://www.openssh.com/txt/release-6.9

> Security
> --------
>
>  * ssh(1): when forwarding X11 connections with ForwardX11Trusted=3Dno,
>    connections made after ForwardX11Timeout expired could be permitted
>    and no longer subject to XSECURITY restrictions because of an
>    ineffective timeout check in ssh(1) coupled with "fail open"
>    behaviour in the X11 server when clients attempted connections with
>    expired credentials. This problem was reported by Jann Horn.

In the portable releases, this is=20
https://anongit.mindrot.org/openssh.git/commit/?h=3DV_6_9&id=3D1bf477d3cdf1=
a864646d59820878783d42357a1d

>  * ssh-agent(1): fix weakness of agent locking (ssh-add -x) to
>    password guessing by implementing an increasing failure delay,
>    storing a salted hash of the password rather than the password
>    itself and using a timing-safe comparison function for verifying
>    unlock attempts. This problem was reported by Ryan Castellucci.

In the portable releases, this is
https://anongit.mindrot.org/openssh.git/commit/?h=3DV_6_9&id=3D9173d0fbe44d=
e7ebcad8a15618e13a8b8d78902e

Could CVE-IDs be assigned for these please?

Andreas

--=20
Andreas Stieger <astieger@suse.de>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Dilip Upmanyu, =
Graham Norton, HRB 21284 (AG N=C3=BCrnberg)



--SmgfOcD5nxfNn73d3rfL0Lnh2rFxvIs1n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVk9yfAAoJECzWqVXhWUVGB9YP/1Ko8k0yaEUclH8pFI5i1PHi
hUc+XJuyTTgKrYWC5eerFVLphEt5YnMFi1v6FYwUBndQbUGLthffOkI8BiQlsiMj
ew8JeqUHqzHsoj+3Wd4S0nTR0SXrSXLiOPEEgb6y2ruiTi0g+6ar5yrZ2MZBtXUG
s7+RGaY/uUVeigus+xUESxqLkF99N/761YdHsiulkvzdR+8X8bC/WwbCj56iFLXP
l2mpGX//ULO2sFCPzjpK34ZdAvcLU9q3E6tZ0z299FZ/G851nyQtSp1VgZMhg1TQ
dTYsVyC1d9OSbqwZCJ4tDv7uXtbvD8SAjN5KWVJaLJzdDmv2jQUgRfAuLUQRBhws
u3tXy8n9v5z9ytTSApHGJ51LPeby4jWWqG0pLcXW50KxhCUadIeRHzBWN38inlF0
e4mkSc2ZH+HsBNgk2AW04ytgmXkz4csbXWGw9SKfxFk7vmO3V+NNo0Ukf388NAri
WcoiKqlOhB1WSOin6mNyOcmqjlPIPLtIB6vKVdD3SOVYX5YNOYKRlizD9B9UuLmW
Qw0JbgWxNL9Tmmx4ztzjEYkj797whd5YsgKqCwY2/4SHMOkasrnPdDL+VXesAhtl
0tn02RnFDYv74pI/iEGd8w6An1+/ioKdQa9SOhTNIhMl2HYoEmao3RtAiFK+b9u+
3J3qZKT12QwAoA1PSUwc
=EeLF
-----END PGP SIGNATURE-----

--SmgfOcD5nxfNn73d3rfL0Lnh2rFxvIs1n--
