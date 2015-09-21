X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1676" "Monday" "21" "September" "2015" "14:45:13" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<56005039.1040701@gmail.com>" "41" "Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" nil nil nil "9" "2015092118:45:13" "[oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" (number mark "        danielmicay@ Sep 21   41/1676  " thread-indent "\"Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities\"\n") "<5600451D.5060404@gmail.com>" ("<55FFC9BD.6030503@quarkslab.com>" "<5600451D.5060404@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1864 invoked by uid 550); 21 Sep 2015 18:45:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1831 invoked from network); 21 Sep 2015 18:45:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=OXuhwKYtlaIMPDAAaVbgI7SNpLfulPYrFUEiY4HFEyE=;
        b=xxMH4sC/wGZWYzXhXEDEECO+6mObogpsmiWD5XRS+oAj1cf/xShJqM+Gciq/tuegqE
         jDIPqlfiLnw6DYoHAnm83Rn8YRPYBkv0zpDA+XoEz/K07Pbd1j2j6NSdGWamNRWWnwgy
         2Cv33dp5jCxFVdPNV4ezQdcd0ijSevg9CgnnbpqSEVga8oQLi0W1Fj3zZwR0yAUzaNQY
         WPr1pw98DqdSTDGXTE6AqnkJBS8ysFZyiwZwO9ey7yqRyLEmA0THbKrI31eAUMqIQy58
         Z+FYE7YtskJooxVb2QLBh/R0FR0aLZC3dXfxBp2pj6+UHEikkD5qeIHwpFG2bG9RivKd
         CM6w==
X-Received: by 10.50.25.134 with SMTP id c6mr13181970igg.58.1442861118217;
        Mon, 21 Sep 2015 11:45:18 -0700 (PDT)
References: <55FFC9BD.6030503@quarkslab.com> <5600451D.5060404@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56005039.1040701@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <5600451D.5060404@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CH1LeLB9Gx7KFWA89IRqObIAJ2ueNil3D"
Date: Mon, 21 Sep 2015 14:45:13 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel
 vulnerabilities
To: oss-security@lists.openwall.com

--CH1LeLB9Gx7KFWA89IRqObIAJ2ueNil3D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> CVE-2015-1800 is prevented by the STRUCTLEAK GCC plugin.

So I'm wrong about this part, as pipacs pointed out the __user marking
is missing here, so it won't memset it in this case.

The missing __user would be found by upstream's sparse tool or the PaX
checker plugin though.

The STRUCTLEAK plugin could also be extended to zero based on the
copy_*_user calls, but that's probably not very useful since the missing
__user markings could just be found via the existing tooling and fixed.


--CH1LeLB9Gx7KFWA89IRqObIAJ2ueNil3D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWAFA5AAoJEPnnEuWa9fIqSPgP/0F0MTTl9wUPPf87g6n3B3RZ
MQ8Wu4aGyza4wvDqUxHzGV5L5YHo00WZI6JzEJwAZIWjN6MsKj235xfFaOCytHti
JqFLdJINCWO8uD3iXMeqxfXnlte/f1Gyjtgr5pUZ0hgje6vkM5yjxl+x23Lkxy7h
0lqBPV2ZxhnaqMH2RCgyuTYTCx6iV9AMWaVdC+9hG2kBah8oA3eBiiFeSb/zjGSB
F0phQxObkuIKTo4Atx+oXfENaEk2taUi1B8KbI1+zCxlF0SztB3aaDnpzL4Pz6bl
Xs7ErvEhJ/WPQPsxz5ubY793iy6VQt3KM/5p6mEZTV4v7Z8CegLXLXRXSnj/A1TQ
Y5MD2wbVZdmbKxPgCMbgMi5hmz7/SnhtyQLEzqGHsOp4cd69M3hEhWxr1kUUju+c
O95kJ75PoqUt5DZLiPKKqZgujnfRrXxdDZ6TbNIZJUy56GvI9ATGBJjyPPf/aNlt
AlzArRGGp2vaYIb2GBb5yvX6WAWDbCACkC9Glxsa9Z/qD6z/upeDVR36Bemn5VKq
pHRhBE0tP5e5w908WJs88b7JWHc8UHJY7M9HV4oogOk7XwG7LUSc3D4BXizyVzhP
PwK6kQGsy0Jmz+TDC8kvWIGVSW/BDeCTfrsVuWIBWX0PHoD77G/PlLvczeeTwA7g
cjWM19MXSmLiNauWnSHg
=5iEi
-----END PGP SIGNATURE-----

--CH1LeLB9Gx7KFWA89IRqObIAJ2ueNil3D--
