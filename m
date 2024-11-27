Received: (qmail 3506 invoked by uid 550); 27 Nov 2024 13:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3470 invoked from network); 27 Nov 2024 13:42:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732714933; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=OLA2VkczzsgtQL8mewi25/xWvbgM3A7TtPM+elvY+rA=;
	b=0MX+U4gcHRqJujeeB8CwUF+Y3nmCwH9HM8FE27OZBHKf8NEjm7nygRiYFJRugWaOA9cQlS
	IPkQ0hWDg8xPm2MlrWcyXt32HKPQDw8sy9XN0Z3RMbGjtuC8hlOzic/25l/OUDehtjgQSb
	S7Lx9uB9GUwPJ6jDS2OPUTK9625CEl4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732714933;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=OLA2VkczzsgtQL8mewi25/xWvbgM3A7TtPM+elvY+rA=;
	b=uJL7NA5FGnweQElQtJMD+aqwFK3T8mPHvsw/oHUxVRUr4hSqdlX5VEJ5/FioEXDQv6e7k2
	o1WsLkQc0rqHP8AA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732714933; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=OLA2VkczzsgtQL8mewi25/xWvbgM3A7TtPM+elvY+rA=;
	b=0MX+U4gcHRqJujeeB8CwUF+Y3nmCwH9HM8FE27OZBHKf8NEjm7nygRiYFJRugWaOA9cQlS
	IPkQ0hWDg8xPm2MlrWcyXt32HKPQDw8sy9XN0Z3RMbGjtuC8hlOzic/25l/OUDehtjgQSb
	S7Lx9uB9GUwPJ6jDS2OPUTK9625CEl4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732714933;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=OLA2VkczzsgtQL8mewi25/xWvbgM3A7TtPM+elvY+rA=;
	b=uJL7NA5FGnweQElQtJMD+aqwFK3T8mPHvsw/oHUxVRUr4hSqdlX5VEJ5/FioEXDQv6e7k2
	o1WsLkQc0rqHP8AA==
Date: Wed, 27 Nov 2024 14:42:09 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z0chtLMDRnrhmwTt@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RZzKumh2MJ6aQIOd"
Content-Disposition: inline
Subject: [oss-security] authentik: remote timing attack in MetricsView HTTP Basic Auth
 (CVE-2024-52307)

--RZzKumh2MJ6aQIOd
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 Nov 2024 14:42:09 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: authentik: remote timing attack in MetricsView HTTP Basic Auth
 (CVE-2024-52307)

Hello list,

this report is about a remote timing attack in Authentik [1]. Authentik is a
popular open source identity provider that can be self-hosted. SUSE IT is
considering to use this software internally in the future and thus we have
been asked to have a look at its security.

The Authentik version we examined was 2024.8.3. Beyond the finding in this
report, we also discovered the possibility to access SSL private keys witho=
ut
authentication, but this was independently discovered and fixed in
parallel [2] by upstream before we had a chance to report it. The only
CVE-worthy finding that was left is discussed in the next section. Some
general insights into the security of Authentik are given in section 2).

We also offer a rendered version of this report on our blog in [3].

1) Vulnerability Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The MetricsView, reachable via URL "/-/metrics/", implements HTTP basic auth
in "authentik/root/monitoring.py:27" [4]. The expected username is hard-cod=
ed
to be `monitor`. The expected password is the constant `settings.SECRET_KEY=
`,
which is the same as the `AUTHENTIK_SECRET_KEY`, generated when setting up
Authentik. According to documentation it is used for cookie signing and in
older versions also for "unique user IDs".

To verify the password, the implementation uses the regular Python "=3D=3D"
string comparison operator. This operator will optimize the string comparis=
on,
making it likely possible to employ timing attacks to guess the correct
`SECRET_KEY`. Security research has repeatedly shown that timing attacks
are a realistic danger, even over the network.

Exploiting this vulnerability is likely complex, but a determined
attacker might be able to develop a successful approach. We did not look in
more detail into how to exploit the issue.

Upstream published a security advisory [5] and provides fixes for this issue
in versions 2024.10.3 and 2024.8.5. It is also possible to employ a workaro=
und
by making the affected API endpoint inaccessible for remote users.

2) Review Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Authentik is a big project consisting of about 10,000 lines of Golang code =
and
nearly 100,000 lines of Python code. It uses various web frameworks and a
rather complex set of abstractions. Reviewing this in full with our limited
resources is impossible. Thus we concentrated on inspecting the accessible
REST API endpoints and tried to get a general feel for the robustness of the
software.

The web frameworks and development style used in Authentik result in pretty
robust REST API endpoints. Even when issues are found, the upstream project
shows that it is well organized and manages to fix them quickly and
transparently.

The sheer amount of features supported by Authentik in terms of network
protocols, authentication mechanisms etc. is big and results in a level of
complexity that is hard to manage. Keeping track of the interactions of all
these features with client and third party systems is a challenge. Authentik
also implements a complex permission framework of over 500 different
privileges for controlling access to the system. We suggest to train
administrators of such systems well to avoid that issues are introduced
through bad configuration of the system.

A bit of a problematic area that we identified in Authentik is its
deployment. It only offers Docker-Compose or Kubernetes based installation.
No official bare-metal installation support exists. The minimum setup requi=
res
four containers that are connected via an isolated network. One container is
running the Postgres database, one is running the Redis in-memory key/value
store, another one is running the actual Authentik server components and an
"Authentik Worker" container is running the celeryd task scheduler. We look=
ed
into the containers and noted the following aspects:

* Two of the containers (Postgres and Redis) are based on Alpine Linux and =
the
  other two (Authentik Server and Worker) are based on Debian Linux.
* The local security within some of these containers is not fully maintaine=
d,
  e.g. in the Authentik Server container there exist globally accessible
  IPC sockets and unsafe temporary file permissions in /dev/shm. This means
  that the local security is only based on the container isolation. As soon=
 as
  an attacker is able to run code in this container, there is little
  defense-in-depth.
* The file system hierarchy standard is violated in some of the containers,
  the / directory is cluttered with proprietary Authentik directories. A
  custom Python installation is placed there, for example.

Consequently, one must not only consider the security of Authentik itself, =
but
also the security of at least four different Linux containers running two
different Linux distributions and the customized Python stacks involved etc.
Users have to rely on Authentik upstream to properly maintain the security =
of
these components.

Offering a bare-metal installation could address the concerns in this area.
Individual services on modern Linux can still benefit from isolation featur=
es
(e.g. via protection settings in systemd service units [6]), while the syst=
em
packages and distribution security are transparent and under full control of
the Admin. Of course this likely makes things more complex for the upstream
developers, when they no longer have full control of the Linux environment
that Authentik is running in.

3) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-10-25: We reported the finding to <security@goauthentik.io>, offering =
coordinated disclosure.
2024-10-28: Upstream replied and confirmed the issue.
2024-11-13: Upstream obtained a CVE and informed us they would publish the =
issue within a week.
2024-11-21: Upstream published fixes and a security advisory [5].

4) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/goauthentik/authentik
[2]: https://github.com/goauthentik/authentik/security/advisories/GHSA-qxqc=
-27pr-wgc8
[3]: https://security.opensuse.org/2024/11/26/authentik-timing-attack.html
[4]: https://github.com/goauthentik/authentik/blob/fd1d252d44a010fad558bed2=
d315577a9d8d1f2b/authentik/root/monitoring.py#L27
[5]: https://github.com/goauthentik/authentik/security/advisories/GHSA-2xrw=
-5f2x-m56j
[6]: https://documentation.suse.com/smart/security/html/systemd-securing/in=
dex.html

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--RZzKumh2MJ6aQIOd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmdHIbEACgkQFMQFyXGS
NVMaxg/+KLY8QkzomPsuaorTb4lik9BCsWveExJWi/XHFdCa24jKnX+ahtUkTIWL
mvBmWcKhLURgy5VMCzS4gTpzJ5yV9dEWru2sIfU7DqoxK2jr803FMNEfxj5stKN+
Aq8dUS3Qb2ZiToSmHw3EPa72uC1xAVgnYqZxNR4oMdeamFASW4N6KrWAYi64BOgm
KivI569ornQW3cT3c2BK0d60KNtbO+Wb7GbVlQLFTnMUh/77BaJq4vIZ/TMvzuHz
GTJT4ynQMJcyVt9Q3lCrRtfNB0JQm8VUSxUz5K4pmnWyW1zNnTORizfbFyaT9vCN
ciHf2PLV3P3OIkoxWjNO4BuATitD1b3ySauiPa1/h+yj62i6GfGysopzH41Vsuy0
PXqxMxoREMo7Exey6Q7iHXL56ebFCpMvIWE0A3+8BVTjB5OWCX+uwvkKLxB6IHe5
NYPSG7M5v3pTNKYteHTcLS/65n0MELabRzBzjT0uKemwhYXOfi4gR9UnVAa+ETm/
H3FmjWRK2+pVqUAkMRlsRsGGrrEaKELQzPCy8bJID0pPm+UMgOi6m892EmSgqiiq
SUsHL0IW11LkFg82x2Ip5VnFs2mZYJs6KWCRpFQOdcLonSS6zs2a4LrBAWwTMaED
JNQNkq7vQeRqPgPBaApeYHjzZ09EOjJXEZiplqT/hgbPPQUTabI=
=IRkQ
-----END PGP SIGNATURE-----

--RZzKumh2MJ6aQIOd--
