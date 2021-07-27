X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4726" "Tuesday" "27" "July" "2021" "09:45:50" "+0200" "Matthias Gerstner" "mgerstner@suse.de" nil "116" "[oss-security] replay-sorcery: CVE-2021-36983: kms service in version 0.6.0 allows local root exploit and other local attack vectors" nil nil nil "7" nil nil (number mark "U       mgerstner@su Jul 27  116/4726  " thread-indent "\"[oss-security] replay-sorcery: CVE-2021-36983: kms service in version 0.6.0 allows local root exploit and other local attack vectors\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] replay-sorcery: CVE-2021-36983: kms service in version 0.6.0 allows local root exploit and other local attack vectors" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18141 invoked by uid 550); 27 Jul 2021 07:46:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18123 invoked from network); 27 Jul 2021 07:46:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1627371951; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Q5hUBexL91oY5zTRKjhr+eb8fsVYDmeuTdtojBtSXMg=;
	b=UXkcVpxeQy/3ovxQkvbX+yKbaqM1cdmNvrKChC+NUO+I2HL7FYdJCrCaMGEz9/2uA24Du6
	YjrJ0yjDfI++dpUrf9I2paF33/IiadOpjHuTtM7vi0dlb3YQQgFV3zNztVkU9rcOkeozm7
	zof9Fbdj32t1Fm26zhpDtoxqVJM0tYI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1627371951;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Q5hUBexL91oY5zTRKjhr+eb8fsVYDmeuTdtojBtSXMg=;
	b=iFIc+U2DJ1Y75iGj+LIF6tokI4nw3Svfp8qiUc0jf89JhSqTLq2XEBnC3CwGzs6WagH9AP
	fWoZyWHFNqsBmJAw==
Date: Tue, 27 Jul 2021 09:45:50 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YP+5rj1ASK3d710l@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xJ1+WpYeFoAJkmXN"
Content-Disposition: inline
Subject: [oss-security] replay-sorcery: CVE-2021-36983: kms service in version 0.6.0 allows
 local root exploit and other local attack vectors

--xJ1+WpYeFoAJkmXN
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

ReplaySorcery [1] upstream version 0.6.0 has introduced new security
issues. I already reviewed version 0.5.0 a while ago and found issues in
its implementation of a setuid-root program [2].

By now this setuid-root program has been deprecated by upstream and has
been replaced by a systemd service running as root called
"replay-sorcery-kms" that is supposed to provide the same functionality
(opening a DRI device with the ffmpeg library for hardware acceleration
support when recording screen contents).

# Findings in Version 0.6.0

The upstream author asked me to check up on the security of the new
systemd service. The basic idea is that the kms system service opens any
DRI devices via the ffmpeg library and passes back the open file
descriptors to clients of a UNIX domain socket that the service provides
in the system. I have found the following issues:

a) The UNIX domain socket is placed into the fixed path
  /tmp/replace-sorcery/device.sock.
  /tmp/replay-sorcery is a predictable path in a world writable
  directory, i.e. any other user in the system can precreate it
  and thus take control of the directory and its contents. For example
  by removing the intended device.sock and creating a different socket
  there, clients in the system will then communicate with other parties
  than intended.

b) The service calls the `kmsChmod()` function for both /tmp/replay-sorcery
  and /tmp/replay-sorcery/device.sock. This function performs a
  `chmod(path, 0777)`. Thus a local attacker can stage symlink attacks
  in both locations. The attack via /tmp/replay-sorcery is thwarted by
  the Linux kernel's symlink protection. The attack via the socket
  filename is not, because /tmp/replay-sorcery will not have a sticky
  bit set. So the attacker only has to win a race condition between the
  kms service binding the socket and performing the chown() during
  startup. This allows for a local root exploit achievable every time
  when the kms service is starting up.

c) During receiption of the RSServiceDeviceInfo data structure from a
  client, the (size_t) deviceLength parameter has no upper limit i.e.
  clients can cause denial-of-service by causing large memory
  allocations in the service.

d) When accepting client connections the service does not make
  sure that the client is somehow authorized to access the local
  display. E.g. by it being a member of a special restricted
  group, or by it owning a local active graphical session. This could
  allow unprivileged local processes to access display contents of
  logged in interactive users.

# CVE Assignment

I received CVE-2021-36983 from Mitre for the local root exploit in
issue b).

# Bugfixes

To my knowledge there are currently no bugfixes available for this. I
recommend neither to use the setuid-root option nor the systemd service
until these issues are handled.

# Timeline

2021-07-12: Received review request from the upstream author by e-mail.
2021-07-20: I reported these findings to the upstream author.
2021-07-21: I received the CVE from Mitre and offered the upstream
            author an embargo until 2021-07-26.
2021-07-27: No reply from the upstream author so far, publication of the
            findings.

Cheers

Matthias

[1]: https://github.com/matanui159/ReplaySorcery
[2]: https://www.openwall.com/lists/oss-security/2021/02/10/1

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--xJ1+WpYeFoAJkmXN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmD/ua4ACgkQFMQFyXGS
NVOmkw//elRSkIJQMrtuQCkxOcvDoYuAdvd0r0nTC9cfzd/sQH4QYU7YD1zt0/JF
m5sLkhUYvYIvilCDaXJxwK//zgdE/yaCnRAY12Ooj8PP+4hZq9TIs9gSsDv0lRiq
lscg4JSKxZr2Ah9KCwYVSK9C+6PcUKgZ7HTLEUsThmBNbDQNR9UshyW1aMsOFrlL
AMLf58jvaCacVOQrSnrtp70fZQm6ljpKaCEhql/nRi/5dUlrM97BkUz7hT9nJ9Ac
rJEZ+atBwkyvQd2XxFnKxjwqR9mzt/kY0Hz6r+TGsmoDFbTBEBXpuB5o5eh0J69H
ywTyqXEPPL3mMDcN2DDaZ6wMXIBbD5Ba1lLq4wc5M4fDaij64aAWEB46xaElU5X4
vqA+BwT83GI6QdwIbg58Xvxc1MQUPz95vFx45PCu/mkJwxvJoHVssUPpbGOiX/5T
nhtqS7I/wwzscoX1JTHkQVMitc0RYmSK0gwBdAjtWAX4pY5GIl4mYBEHgGPu+ZsY
BJterSQjPZ/K+BTx5IgnjItaXg09Zsyw6bo+5hXKT80GjtZGakEuwUWk48i30Vzy
tTOpEmNcxMFXV4G/R2+T+KjJ/WUZI7i3Q3cDGbJn12SB4qeGVn8oviuamfpOZTUm
ROW3a3VeXkdUBAD97Anx1qGlXI0BLfsAmodzB0Csd5jSEzERl74=
=fR3c
-----END PGP SIGNATURE-----

--xJ1+WpYeFoAJkmXN--
