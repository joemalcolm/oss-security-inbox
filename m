Received: (qmail 13671 invoked by uid 550); 3 Jul 2024 20:54:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13650 invoked from network); 3 Jul 2024 20:54:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description;
	bh=p4iL1RSerALslXInwiqdI8xE3SbC75fvZRK2h/vIun0=; b=i0sw3D2eguECnzOBE2Kc6b37O9
	V2TzBU3uxP5Dqgypg+/RfB5m1urGHzG96sbUj2kR50w5jGMAAIMO8riM7YQPW1cz28vZfrtRB4ASR
	kFPuQ3fg+5MrmztLfF+FWFx5TZI/9t1xs5qn5ecAZN5JrzNNWbhCg+Re67XTdJ9/iwcg23dS/WnF7
	q7qrxa1dzsl6/K3TmyS0okb8GGoP7Qu8lwFVhOnjr6lZ8LEJFh0hSBvsTcW3p4ChieS6986wG8BVf
	Of8xC7E31SEFdjvjtD5nSzFWyTWg2Y0gupnbEtakzkprx0KySv8o4Iboz8P3JLKwgZ/yQppUJBQPX
	Ibtot2bQ==;
Message-ID: <4ba5ff088a2619fe98f73b0d853fe6b3c682479d.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com
Date: Wed, 03 Jul 2024 22:54:30 +0200
In-Reply-To: <20240701083838.GA12787@localhost.localdomain>
References: <20240701083838.GA12787@localhost.localdomain>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-Debian-User: corsac
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Mon, 2024-07-01 at 08:40 +0000, Qualys Security Advisory wrote:
> Finally, if sshd cannot be updated or recompiled, this signal handler
> race condition can be fixed by simply setting LoginGraceTime to 0 in the
> configuration file. This makes sshd vulnerable to a denial of service
> (the exhaustion of all MaxStartups connections), but it makes it safe
> from the remote code execution presented in this advisory.

Hi,

thanks Qualys for the outstanding research and detailed report (as always).

On Mastodon Hector Marcan also proposed
(https://mastodon.social/deck/@marcan@treehouse.systems/112715797114998895)=
 to
use `-e` on sshd command-line as a mitigation measure.

Copying the whole text from the first post for archiving purpose on the lis=
t:

=3D=3D=3D=3D
OpenSSH CVE-2024-6387 mitigation (on Fedora):

echo 'OPTIONS=3D-e' | sudo tee -a /etc/sysconfig/sshd && sudo systemctl res=
tart
sshd

I have no idea why Qualys didn't mention this. The only non-async-safe
function called by the vulnerable signal handler is syslog(). So just turn =
off
syslog and log to stderr. On systemd distros, this still ends up in the
journal anyway, so you lose nothing.

I confirmed that the message at the root of the issue is logged to stderr a=
nd
not syslog with this option:

[pid 638194] --- SIGALRM {si_signo=3DSIGALRM, si_code=3DSI_KERNEL} ---
[pid 638194] getpgid(0)                 =3D 638194
[pid 638194] getpid()                   =3D 638194
[pid 638194] rt_sigaction(SIGTERM, {sa_handler=3DSIG_IGN, sa_mask=3D~[RTMIN=
 RT_1],
sa_flags=3DSA_RESTART}, {sa_handler=3DSIG_DFL, sa_mask=3D~[KILL STOP RTMIN =
RT_1],
sa_flags=3DSA_RESTART}, 8) =3D 0
[pid 638194] kill(0, SIGTERM)           =3D 0
[pid 638194] getpid()                   =3D 638194
[pid 638194] write(2, "Timeout before authentication for 192.168.21.10 port
37734\r\n", 60) =3D 60
[pid 638194] exit_group(1)              =3D ?
[pid 638194] +++ exited with 1 +++

Edit: The problem code still calls snprintf() which on-paper is still unsaf=
e.
However, it does this a bunch of times anyway in multiple code paths, and
Qualys didn't mention anything about it. A quick look through glibc code
suggests that snprintf() only does unsafe things (allocate memory) if you
format floats, which obviously ssh does not.
=3D=3D=3D=3D

I agree with Hector that at first sight the `snprintf()` call look OK on gl=
ibc
(no dynamic memory allocation or complicated handling that I could spot
either), and the write to stderr is done using write(2) (which is async-
signal-safe).

The change isn't totally agnostic even on systemd/journald systems because
you'll lose some log metadata (facility and loglevel) and it might depend on
some local syslog configuration, but if one can't update it might be better
than turning into a DoS (or totally losing logs by setting LogLevel to Quie=
t).

On Debian based systems you can put `-e` in SSHD_OPTS in /etc/default/ssh.

What are you thoughts on this mitigation?

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAmaFuocACgkQ3rYcyPpX
RFuJNAgA2RNFY/W6XazSArrINEHsw+GG7N7UjyOKFYJ4JebhgmG0SWH7Udd3ZWhU
NP0C2+6FrSBWWrMgP2xF5bwx5ehBzcjaEwLuQR2AO2ztotdkADonrvP1vrdSTLpG
ZAVgiuripN5B1fUatZMGDCK+uXP5Ottc7/0NZ2kwIB+VNHGSU2cesknQq6vpvubI
sk8PuTFRayhglwXzdTWrPVKvAnYtiRSEV8hepPBpDngAqbIvb4LFGt734gLWvB9s
FjAPOqySfzGM1B4MeH21D51bs4JDE7avxQG16ShS4Tm/Kg16Ea4N4rx7u2NDlfyQ
JVzsOiu5TM6roMvBmHBw76jpi36Eow=3D=3D
=3Dtity
-----END PGP SIGNATURE-----
