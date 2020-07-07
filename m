X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4675" "Tuesday" "7" "July" "2020" "11:11:31" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20200707091131.GA4438@f195.suse.de>" "129" "[oss-security] veyon: Veyon uses fixed logfile paths in /tmp in versions prior v4.4.0" nil nil nil "7" "2020070709:11:31" "[oss-security] veyon: Veyon uses fixed logfile paths in /tmp in versions prior v4.4.0" (number mark "U       mgerstner@su Jul  7  129/4675  " thread-indent "\"[oss-security] veyon: Veyon uses fixed logfile paths in /tmp in versions prior v4.4.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] veyon: Veyon uses fixed logfile paths in /tmp in versions prior v4.4.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1165 invoked by uid 550); 7 Jul 2020 09:11:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1135 invoked from network); 7 Jul 2020 09:11:43 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 7 Jul 2020 11:11:31 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200707091131.GA4438@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
Subject: [oss-security] veyon: Veyon uses fixed logfile paths in /tmp in versions prior
 v4.4.0

--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

during a review [1] of the veyon classroom management software [2] for
inclusion on openSUSE Tumbleweed I noticed that it uses fixed logfile
paths in /tmp in various code components.

# Issue Description

I reported the issue for the `veyon-configurator` component to upstream
as follows:

I noticed that by default a fixed logfile path is used by
veyon-configurator. The path is /tmp/VeyonConfigurator.log. It's a bit
hard to find where this directory and file are actually assigned.

- There is core/src/Logger.h:57: static constexpr const char* DefaultLogFil=
eDirectory =3D "$TEMP";
- $TEMP is expanded to `QDir::tempPath()` in `Filesystem::expandPath()`
- QDir::tempPath on Linux uses either the environment variable `$TMPDIR`
  or the hardcoded '/tmp' path as a fallback.
- in `Logger::initLogFile()` we finally have:

  ```
  m_logFile =3D new QFile( logPath + QString( QStringLiteral( "%1.log" ) ).=
arg( m_appName ) );

  openLogFile();
  ```

  and

  ```
  void Logger::openLogFile()
  {
	m_logFile->open( QFile::WriteOnly | QFile::Append | QFile::Unbuffered | QF=
ile::Text );
	m_logFile->setPermissions( QFile::ReadOwner | QFile::WriteOwner );
  }
  ```

This means that veyon-configurator will use whatever file is found at
/tmp/VeyonConfigurator.log and append its logfile data there. If an
unprivileged local user places a symlink there then this symlink will be
followed unless the Kernel symlink protection is in place. This is the
case for openSUSE by default at least. When following symlinks succeeds,
then this attack can be used to corrupt arbitrary files in the system.

Even when symlink protection is in place then a user can prepare a
regular file at /tmp/VeyonConfigurator.log with arbitrary content. This
has the following security effects:

- any prepared content will remain at the beginning of the logfile and
  could confuse an admin / developer.
- although in `openLogFile()` the mode of the file is set to 0600, the
  attacker is still the owner of the file and can access the logfile
  contents and possibly sensitive information.
- since the attacker is the owner, he can replace the complete logfile
  information to mislead an admin / developer.

A quick look showed that not only veyon-configurator is affected but all
other Veyon components that use the Logger class. For example there's
also /tmp/VeyonServer.log and /tmp/VeyonService.log.

# Bugfix

Upstream fixed the root cause of the issue based on a patch suggestion I
sent them in a new release v4.4.0. There was an intermediate
insufficient bugfix [4] that was amended by follow-up commits [5], [6].

# Timeline

2020-06-08: I reported the issue to the upstream main developer
2020-06-09: Upstream immediately published a bugfix [4] that was
            insufficient, however.
2020-06-12: Upstream incorporated better fixes, based on a suggestion I
            provided them [5], [6].

[1]: https://bugzilla.suse.com/show_bug.cgi?id=3D1172318
[2]: https://veyon.io/
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1172659
[4]: https://github.com/veyon/veyon/commit/55440755d59362e721504ef28f680488=
ef40c85b
[5]: https://github.com/veyon/veyon/commit/131d9a35208e5b6a639fc2757a0b7f74=
922c537f
[6]: https://github.com/veyon/veyon/commit/76497b54b30ed66bf5a3dc9f413509dc=
6dd371b1

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer


--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl8EPEAACgkQFMQFyXGS
NVNBGQ//eSyBMlwIFbqV4gKvCA+LW/37DmbuGSoprUuNSNZ1NgK1q9dG7h/NY5x0
RGJv6pGcxIccgQmnPjELJc4kCoGDvjxGpOVq2BiNtMI5QSgo0c30Aoxag2r5bnN/
PgEaoacAySn8/jqbLhrfJgeju43WmJDsC7LUw4a2UK4rz68cCsZaiF9f9sF9MbzO
L7rgj2vS2dwcDfyUJipO4t0DuefVJ3gQjQlfALOafdVwFFUQ4HexMg2iB8TsN8Bk
oYCcby1l8gmwHwUqCrLIpZun3q4ecxxPbG0NJfg6x8DJ33QKpxNMwtoijAFmkwJv
MBuRTzZw22yAau8baYPgW+OCqmacGJC6kMqQOGotMpQbgvxzb5c5PZq4CcDhVvCA
YUC112PzdDqNQ0xyuKa0zNE5JK/qZVKS5mYhqvuwEyD/xnPmaX6WPI0jz3HsKYcN
ChJ0AMRA57GnT/W3PtSF+yY2gsAJHkiNPI5m5VwmrC6ZemjLVCY8tHApCofbJetd
SSxdY3dkZO1YFJtxrbdh2R8I5a0M2FwhFnGqOesbcgap8k4NdyDrPFQdGqyuUSMp
r9DQyfnhu/D4BBCoG8SskBMjf2mI9hjFtaYGEA1RCQ5cLbOuPXvAcjSkSlULVdlr
kq3+CreOpFA46mNvj4SCXplDPMiyqx3QiBQyDz/uWh52FkiPWI8=
=4Dhy
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--
