X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2020" "Tuesday" "28" "July" "2015" "12:26:33" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150728172632.GA3132@boyd>" "54" "Re: [oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)" nil nil nil "7" "2015072817:26:33" "[oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)" (number mark "U       tyhicks@cano Jul 28   54/2020  " thread-indent "\"Re: [oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)\"\n") "<20150727141855.GA14038@boyd>" ("<20150727141855.GA14038@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27725 invoked by uid 550); 28 Jul 2015 17:26:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27704 invoked from network); 28 Jul 2015 17:26:48 -0000
Date: Tue, 28 Jul 2015 12:26:33 -0500
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: David Howells <dhowells@redhat.com>,
	Colin Ian King <colin.king@canonical.com>, security@ubuntu.com
Message-ID: <20150728172632.GA3132@boyd>
References: <20150727141855.GA14038@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline
In-Reply-To: <20150727141855.GA14038@boyd>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Security issue in Linux Kernel Keyring
 (CVE-2015-1333)

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-07-27 09:18:55, Tyler Hicks wrote:
> While improving the system call coverage in stress-ng[1], Colin Ian King
> discovered a bug in the Linux kernel keyring that can be used to cause a
> local denial of service due to memory exhaustion when the same key is
> repeatedly added to the kernel keyring via the add_key() syscall.
>=20
> This issue has been assigned CVE-2015-1333.

mancha pinged me on IRC while trying to figure out what kernel versions
are affected and I realized that I forgot to include an import detail in
my original email.

The following commit introduced the issue:

  commit 034faeb9ef390d58239e1dce748143f6b35a0d9b
  Date:   Wed Oct 30 11:15:24 2013 +0000
=20=20
      KEYS: Fix keyring quota misaccounting on key replacement and unlink

Which means that v3.13 and newer kernels are affected:

  $ git describe --contains 034faeb9ef390d58239e1dce748143f6b35a0d9b
  v3.13-rc1~18^2~6^2~2

Tyler

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVt7tIAAoJENaSAD2qAscK3CcQAI6M4AJk/I+BoTC6lsgmYCp5
l8o8fjA+0+tC01KuscZMpww4JSa6Yx3w9ELxgmkdaZKlxYhd4fV1QlXBQLPEMYnc
z3ObYAua2oLCclAes8W0SAH1ZKSOy7jIBtWgNbCiLnlR8FEEUxmrxJG3zjNP8YRR
pGLxKZ+E00w3NR9cLAvz9FuWko8GuY/ameK0UjxKG6/3Bd0bNrDQMyK4D4EVzzcS
euPicoRCU0Zm8t+UaX/f2z8f7C4XMXTkm39/JYc7F506dnPM0Vs0MKId2bV2wCr9
wcE0zS7nBbBdslG2EtTBaLQ/Jm6XejCgsEQMYYEzABisTyMicCTyu+9TVVo+vWZ8
FpsxzXbkTWHJz4Dzqyuz1cTiw2lrAf4K/8U0WDy2WLThU4JOe3y818wfCNlM+PO/
NBc+j6x7o+TTMo74LOFB3Q3wSVAlWzLCxsbmmAXSIbn1H2dYVkDP7zpAcCjKM/1s
Q8nykMzKmeKbx8tTUZbQ0S3gUwLpNlZNHfLjbOFpAebwQgT2nNg/PQ+AnolcieHW
VCjA2dSTgrYQNkvtJy+ZFanr+QBGcE/bpyeaPc+rB8MQjUsDAnwstu4v2kSDSrgR
Rjokz+yJM/UovjxAm+Wo55lSjwx47Egwu/ybtqlEdnRB2UdLjsQA0lRPVm2UfKzJ
k17J6vd6VBCtYeAhBJgR
=Jp6H
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--
