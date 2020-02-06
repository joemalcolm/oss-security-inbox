X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1543" "Thursday" "6" "February" "2020" "11:25:07" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "41" nil "^Date:" nil nil "2" nil nil (number mark "        mgerstner@su Feb  6   41/1543  " thread-indent "\"Re: [oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user in the SUSE specific mysql-systemd-helper script\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user in the SUSE specific mysql-systemd-helper script" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17861 invoked by uid 550); 6 Feb 2020 10:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17843 invoked from network); 6 Feb 2020 10:25:20 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200206102507.GA11632@f195.suse.de>
References: <20200205124521.GA16369@f195.suse.de>
 <24EFFFB0-DD97-49EF-8C01-E70EC2C93CF7@me.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
In-Reply-To: <24EFFFB0-DD97-49EF-8C01-E70EC2C93CF7@me.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 6 Feb 2020 11:25:07 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-18901: mariadb: possible symlink attack
 for the mysql user in the SUSE specific mysql-systemd-helper script
To: oss-security@lists.openwall.com

--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Larry,

On Wed, Feb 05, 2020 at 11:31:55AM -0500, Larry W. Cashdollar wrote:
> That chmod 640 might be interesting if applied to /etc/shadow.
> It > could allow some users to read the password hashes.

true. Generally it allows to grant groups read permissions on files. I'm
not aware of an instance where this directly allows the mysql user to
escalate privileges. But it could work when combined with further
weaknesses in the system that allow to compromise further user/group
accounts.

Cheers

Matthias

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl476YMACgkQFMQFyXGS
NVOgDRAAhY7uB3RxH3TDBd4f3SGCTaWbGx4oaWdxfJgOyG0xXELpWnrbxneaWMpV
E3SpzzsbXmREmaZ0XaDO3mbom6lqpHJNqyN2kjQOIKZVweaA/yWxKbSBN2+54iPy
L3s4wcR1A6qfmBYkPWHZTIXfIoBzc8KDTity2o8789r6m03uVE19tET+nkaSpZNc
RZn4IhICoC7fhhaIWypQboo5nhCHFS0CajfTKeGwRlXeZaqri91etJ7CkR5e7/7R
5hkiXGM3impZUqLlt67TgYpJGjiBhgGdO2SNiLLD7k23Muaj64lP0KNnWezENK3G
+ZGevfqLqmiw8gH36y8/e2ogRr9gzyenP75cVFV+6szcBibWhTrLOsKolQCBtNja
iByZa0DyK7es1Rcm1xhWOBvC5R5HDTIwwX68c/5VGNx+fVPYUE04FXPFjO1x4EPD
pTvsQ7QyjaMVbkLYgq4BLaCEgAGebq2nzfm3wxwkVUoDzPjCo5kOxoYK6GU2JTA9
qCOe659dp8i9y9Cbo2sGDRKvGNARA1tKdtTzUHQnHqOtQz70xhYyJrCh38r+rqw3
o65L5eAwyUhi1MHuAnPxBYFHmifaeTCrBjtuOu3AzbCTN3VGkV2mkCp6P/by/vNf
MM/a3IFgexSlIvzJ/Jxmr5TrFqEImhUTc1maKInmL5qjSZtm1oM=
=/y/g
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--
