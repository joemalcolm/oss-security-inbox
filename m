Received: (qmail 29904 invoked by uid 550); 14 Dec 2025 11:09:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29860 invoked from network); 14 Dec 2025 11:09:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=C6RVvjZD/ktW9mQRjaKNsQDa8NzOVto+vIZ9Y4iFl+E=; b=KuHewXHyLIbg89/oHd+7IrDBxz
	doHfmMQ8u9qSWun5VdOyq8sdCNgKTrnLvPg9irqgDhBLmHxlpFTCKM5IwvfCZ54w2NDcc0xVcWl3p
	Nr9MM37d/LTYwmbycWz1GQbgXwtQewz4NO8dWF3qfzCZUzLDhj36PuDVYzIDpWh4Q6pmusRIqZc9Q
	69ck+6pDx4A4pEin+A1ygYAho9CJAPMsRahVtIF9/rgafdrf9MvDGQiW9ztrAunRXA6FEX0IMhiBM
	YiECCqWzH9lCox6U/iVdngmiEmtz/eEpw1GsBkBtVm9DA+UuYZFRgUsG8NpVK08XNkN/xKheTW7kH
	vFgxuGyg==;
Date: Sun, 14 Dec 2025 12:08:57 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <aT6ayYIIGv8i5vFu@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
References: <aTlswbw7mu0DyFec@jumper.schlittermann.de>
 <aTrbpVe2BkcRT6L9@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DSfZnjoGQzbVNN+P"
Content-Disposition: inline
In-Reply-To: <aTrbpVe2BkcRT6L9@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Signal: +49.172.7909055
X-Phone: +49.172.7909055
X-SMS: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
Subject: [oss-security] Re: Update: CVE-2025-67896: EXIM-Security-2025-12-09.1: Exim 4.99:
 Remote heap corruption

--DSfZnjoGQzbVNN+P
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Update: We got assigned CVE-2025-67896

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--DSfZnjoGQzbVNN+P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAmk+msUACgkQaX8O3WgJ
n2/17RAArVWp//nDhWkpHB3fJtR+Qz+LhwQdbY1eDY89YggYEBZUveOxMTqnRf3O
b/E8BEkUjmA/mqARK4HaIgcgP3jC0WycNdNevc4MhGFLQaz0gySz6lCktpMa61Qk
sSQvF+DouaBzN7BHpVjMT7gOSwDSI0HKYgbtaoLY3+VJP9Tpk6TI2gGxu0kiRWZN
5aDXbkkBDcx5+rn2/OLPuU79Ue1yWDyBxM+jHwWvbKr3MG07YF6PYa/uw6K26yke
08zYi6TmCgpeYhjh3poUugxNqB9xGSmWh4Xp3e2tB6wc72NKqcX9K6H68v0wEG2V
cNKalstYKkPVkBLkuj1z5F0qjTQeyYWTYgoHodfsGqxQz/FqQqZe2TtqpznnYpM2
6ggjZEVFp4vk3wO1HB0H9JMubIiCqDY0a5o2U1wg5LR1js+DVfe85iuS7xX4A8SC
Sm6TrMCc343uzT6XrX/u294ySxzJDu70vj5PVzApU0Bny5dPUg19kBhIbavC1jMZ
ffGHmA4tYLpsY5xAMAfowlNMouhLEww02bbd13D+ZyH3HkHimpaYeH01g5dsRVLa
SfKQsbACLjOOI8xcOXRSHI5b8mARsNvr4ufZvu57krzygTrj3xK+2jwrq1hF9kEX
0OgzbnsKgXDQhjQ2/29JpmU/a5W5y77goVygmXStmpBv9ctqUDY=
=v4CM
-----END PGP SIGNATURE-----

--DSfZnjoGQzbVNN+P--
