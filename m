X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1773" "Wednesday" "30" "September" "2015" "16:23:31" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150930142331.GA18445@kronk.local>" "49" "Re: [oss-security] CVE Request: zendframework SQL injections" nil nil nil "9" "2015093014:23:31" "[oss-security] CVE Request: zendframework SQL injections" (number mark "        alessandro@g Sep 30   49/1773  " thread-indent "\"Re: [oss-security] CVE Request: zendframework SQL injections\"\n") "<20150930105545.GC8507@kronk.local>" ("<20150930105545.GC8507@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15619 invoked by uid 550); 30 Sep 2015 14:23:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15601 invoked from network); 30 Sep 2015 14:23:43 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Ct+guaElUr7iVjmJzg+2MNgDxoKxVfGHcJ50kvOKt8U=;
        b=FxFEc1JY0fC5MQmXRHzG8JbT7hSRRf2UOs2HEytHMztRBKW2IvgWuV/CDRtejnpSgA
         TlSjGYDgMVyDE7Jrrmj4psUN227bGQgSvdrAQM6WtUViV7hpvLdc/SGVPiW4hn0uloKs
         +2o02R1xuuQ9KA+bgBxipydDn1RuiOSUbDGMpX5Oxlm6if580rI3cEvmRPTeA4eJhy9P
         q/qTlD6OEvT/7L08XorLW1gNSIrDChGsUQ0h/15mivBB6ijHFaLtHAyYnQ+wZ2ZEiZ81
         vj74p5WJImUFQodCocfuP8z+jPJ3GKbPjCiG4zHyJ2UH/8aIOA5Vd4F34nU0vQvmp6cu
         W63w==
X-Received: by 10.194.5.135 with SMTP id s7mr5347217wjs.153.1443623012248;
        Wed, 30 Sep 2015 07:23:32 -0700 (PDT)
Message-ID: <20150930142331.GA18445@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <20150930105545.GC8507@kronk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
In-Reply-To: <20150930105545.GC8507@kronk.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Wed, 30 Sep 2015 16:23:31 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: zendframework SQL injections
To: oss-security@lists.openwall.com

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 30, 2015 at 12:55:45PM +0200, Alessandro Ghedini wrote:
> Hello,
>=20
> the Zendframework project released the following advisory:
>=20
> > ZF2015-08: Potential SQL injection vector using null byte for PDO (MsSq=
l, SQLite)
> http://framework.zend.com/security/advisory/ZF2015-08
>=20
> The patch for the MS SQL backend seems to be:
> https://github.com/zendframework/zf1/commit/2ac9c30f73ec2e6235c602bed7457=
49a551b4fe2
>=20
> but I couldn't find the fix for the mentioned SQLite backend.

It was pointed out to me that that patch also includes changes for the file
library/Zend/Db/Adapter/Pdo/Abstract.php, which is used by the SQLite backe=
nd.
So it should cover both MS SQL *and* SQLite.

Cheers

--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWC/BjAAoJEK+lG9bN5XPLGMQQAJLlcTXFSJpyLG7F6xlvLNK+
3rxJghMpQY06SxH5epvBYLoxDGUIOVGscVFZwS0UnHaMK9ZcZ4qEW2hIU4/JS8w4
dZgeth9Ni1EcBrgy472+R46ZeLy/Dzhjcf2lLHoNjAF9agrIRbraE2uKlPMnzC/H
JtVLjYKgiIjAkgrvsv5E43gFyrBI65YtbubOnuEuZ1YsPrJzsHmMG1YZlAwEXWij
tlKFdKzM3Pbz0r1GC8SQCN3XVqVXhjkSN4fTXgBQvL4qF6vWHzqN6GsFbXDTW/wD
2dmv6H10bwzsizXI0MjmWWIeZkFtR8ehMD19m0nhID93pJEkjEENPotIzU3AIxGq
4/ax3n8VezuS3WEBXv5s+VmpQUFZJqgh/OdAcQO6iGZIi6z95On514UeeMDZ/af8
I29Obkjqd1lNRqJrBlMRN6MuSdV7rQG0VQLqltu76vlJJUT0O0WDGE80LpAOD6vQ
QZgoitcv79VCYZMJ+FEkUFXI/nObqfhEIQo5wjsOGjvjmuQr8jrEU8MWeBuGMBki
j1PlDmZ37VF4WAsSabFmNVxr7z44/ZXaF8gLpGzKlfDOHMXe3IelxeIYiODIwbya
mSgOPK3Aa3CIQH6Y9TU0XZ9e6VgUTwkjyR1Tq/EnfxzxO0PuF7FOn0OnVSdBYznF
yNXsfoC9GGevuorKanDa
=wZkT
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--
