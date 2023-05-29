Received: (qmail 13691 invoked by uid 550); 29 May 2023 18:06:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32353 invoked from network); 29 May 2023 17:20:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ceU8CjP619NEnQaMVZRhe/7fiJLJCT/gp7e5aVPgDHk=; b=oYpjke4xjI800rxvflyyOeFRJV
	hi2QCVgUC9np2/RQD/z/T64cflgWQQmhZ6LlzsXJNUX1RAD8PqOdY0gWoi1qRNNr0wrIj+mXBdnfL
	QVwKkOgx5snZP7U4srmcxJ5rUPArbMXMGiU/BR/ta/VqAugJz25fhc/ganskcjK3Rif5TbTroA2hA
	CKDK2npcmjYFnAyQ8IdXCZEIEvwE8/GCAybrorsj+t0UF6wHZsPmRNM6FpDVlNXjU4EY/oG2ujF4L
	gTwcqKGi3hyz597DnLZsk20Oj82NyC/hFOP7Oi5UWEzcgzNV7uR8inbUW2+OeGuFoQSmz4ATD0GUQ
	NHOyaH7A==;
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: oss-security@lists.openwall.com
Cc: cpe_dictionary@nist.gov
Date: Mon, 29 May 2023 17:20:36 +0000
Message-ID: <4860199.GXAFRqVoOG@portable-bastien>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1908578.tdWV9SEqCh";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
Subject: [oss-security] Update CVE-2021-3610: ImageMagick

--nextPart1908578.tdWV9SEqCh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: oss-security@lists.openwall.com
Cc: cpe_dictionary@nist.gov
Subject: Update CVE-2021-3610
Date: Mon, 29 May 2023 17:20:18 +0000
Message-ID: <4860199.GXAFRqVoOG@portable-bastien>
MIME-Version: 1.0

Hi,

I want to update status of CVE-2021-3610:

Contrary to common belief over the linux distribution this CVE affects imagemagick 6. It was introduced by commit b874d50070557eb98bdc6a3095ef4769af583dd2 for  6.9.10.88

Partial fixes:
Imagemagick6 <= 6.9.10-92 https://github.com/ImageMagick/ImageMagick6/commit/2d96228eec9fbea62ddb6c1450fa8d43e2c6b68a
Imagemagick6 <= 6.9.11-10 https://github.com/ImageMagick/ImageMagick6/commit/7374894385161859ffbb84e280fcc89e7ae257e4
ImageMagick6 <= 6.9.11-54 https://github.com/ImageMagick/ImageMagick6/commit/cdb67005376bcc8cbb0b743fb22787794cd30eb
ImageMagick6 [1/2]: https://github.com/ImageMagick/ImageMagick6/commit/b307bcadcdf6ea6819951ac1786b7904f27b25c6
Final fixes
ImageMagick6 [2/2]: https://github.com/ImageMagick/ImageMagick6/commit/c75ae771a00c38b757c5ef4b424b51e761b02552

I am not subscribed so cc me

Bastien

--nextPart1908578.tdWV9SEqCh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmR03tIACgkQADoaLapB
CF/sCRAArm/eun4z09vVZQkTomClee78Zk//Xq9UWetc8ztBl2/AMaqf4K5v4kN6
/WQ+NcOpXq7XpaMUSqd6rKEC9qZNgubbXBhJNSfW/3DMsLUqDJ9rPTaCMfyH5y0v
i8wD14MEYdwjd40BdEitooaVYpZ83CE62RxAaIhRgJrVzgz/Cyid0HyfFH9Q7UQW
bOeFdEiESSF8CHsXyxy3VQRKoV1iqj6Ya/cppzR92JxzB6/tPcOzasjdVUs+c5Jz
dpo00HvxL6QNBQC6q8m1GOPaVC+8xl8cTz1ddmtG0GLEwqkEqbQHTDuyG8fE+JNp
T6ua3VwiyaII++yDmfIB6xMh9zHhMFi3c1esoTnCTOM/EPTHUPJm89Ul57PO1IK6
zoN/5Kow1yMQBJMAyUklzqYfCnai6Tu0uSNMmkA3fwp7jdN/QHq7BKOORNEYIe/8
7pskGci6IDa6SE+QcW6H8nJK1NdfsCq8wllpRIVVZ845owChiBYG6TutlZd484fq
UxBwP8JYKF3YJAxNKiu4n/hDSq7hurB/+GqjlWmVP9PwWh0Ljiiu5DWE+J3x0HI2
vs610iYpPpqC6DKh+NQ35ViSrlLvIVHuAD0DBaamzCnnUaKtWkzCrnIziDsOOl2j
8E55VkPp13JEwAmUjIYhFdEK9/Phj3bXK1QjyURIqI1FUMxxrBA=
=JNJp
-----END PGP SIGNATURE-----

--nextPart1908578.tdWV9SEqCh--

