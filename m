X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1418" "Sunday" "19" "April" "2015" "12:35:19" "-0400" "Paul Tagliamonte" "paultag@gmail.com" "<20150419163519.GA16209@leliel.pault.ag>" "45" "[oss-security] Remote file inclusion in django-markupfield" nil nil nil "4" "2015041916:35:19" "[oss-security] Remote file inclusion in django-markupfield" (number mark "        paultag@gmai Apr 19   45/1418  " thread-indent "\"[oss-security] Remote file inclusion in django-markupfield\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3604 invoked by uid 550); 19 Apr 2015 16:35:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3209 invoked from network); 19 Apr 2015 16:34:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4k1Ezrdqo24o6BnLTNTpn/zRnf0HAErP4UEz3vS+TM0=;
        b=M+r0Mgm3oxbVbK35jiQltOskeD0PTAHS7dJonzicBgfBtSBIbpVoVW7PZlnneEx47F
         IRfhfFoSar2s6zvxeU3//EEpfNiOBZsl8mP/C39ntPb9NmDFKYz8qyC2Yahe9vDCQGty
         nAvI6amYWVvL4/7xhS69OVpd8mpfrjdbFoWmmFmCzH01a5nrTnCb2l8j0aMHluDJKVqc
         5CGahesRPOl5gVerx+ks19+PmSHydjRKMIdaz5DVsBmXhedLDwtK5m/0nkx1Gs5vYD8+
         vDhg8scmAhuhRCfpLLgOpUX5xLBTtzCH4WERBPjDn055rVHfuuXIj8rNi9VoJSFTzqic
         Qddg==
X-Received: by 10.140.108.201 with SMTP id j67mr13099013qgf.79.1429461243621;
        Sun, 19 Apr 2015 09:34:03 -0700 (PDT)
Message-ID: <20150419163519.GA16209@leliel.pault.ag>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
X-NSA-PRISM-US-Citizen: Yes
X-Hack-The-Planet: Yes
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: security@debian.org
Date: Sun, 19 Apr 2015 12:35:19 -0400
From: Paul Tagliamonte <paultag@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote file inclusion in django-markupfield
To: oss-security@lists.openwall.com

--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey folks,

An arbitrary file inclusion bug was discovered in django-markupfield.

A CVE was issued from Debian, CVE-2015-0846, but the commit is public in
the upstream repo, so this mail is to avoid deduplication of this issue.

Sorry about this mishandling,

Thanks,
  Paul

--=20
#define sizeof(x) rand()
</paul>
:wq

--jI8keyz6grp/JLjh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVM9lHAAoJEHtYWzCAfCqHbfoQAJfmpObaBQ1mVCMILkNXvYYU
2p408NX7NulHIiEqrIwMc2VR2jlfcHQRsJIE7OeQ8WPVAnWfp8W7jXEDW5tbcxwN
cRkkC76nSrjCcg1qDq+q+OglXh9eL7m9YR87H2OsdvE8VeutLr/QN9ct/RgplfO5
3uxxJZmAmtZPgl2GEzAfo6os84K+KYPGR7hWOKy8thj5inaMVCTUS022c8APq8IF
2qJ/HNCk7mhQ29PeUJN4M6KcFsWNGPsIl5+IoXEFVw6vLZdfYC9UiK5w8aST14R9
1CpbVMLFDffrrLDjjGXwa9O3mVyqhoDpyiHJOGFiJ5d3GlAwwLC6Kaq5nfsoy0MS
TwHmBwBG8u0EFlE/N+Z0+6BaoIC4UmAmJgxF1tMDaicGo0BQnw6HE38bADo2oc+7
ssmoqt9c5f1BSZ7iebCRJzzL2V/nGOpCmbixU0Z8c4EDNjdVbAvTkIdxoo2Hq26V
up2hL97VfgfoGRMdE/PF+IUqZI1jmZceTVKIwOt8icijkSExlY9vX04Lo/VxgCjE
ECmMOSmCo08GAhMLyKC59EATxpkRVcK3xDIM7dkpxtb9bwceuKSaN4JQGu8TeOwZ
gk65HyQjeYvXBcuGrSO8JwRcRkBv05nSmIt35juEQHspw5VyfK9j6IDGAW99H0wa
2lEbCs07SGkHlJZ6a6vZ
=W4lt
-----END PGP SIGNATURE-----

--jI8keyz6grp/JLjh--
