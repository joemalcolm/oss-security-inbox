X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1830" "Tuesday" "10" "December" "2019" "11:25:23" "+0100" "Riccardo Schirone" "rschiron@redhat.com" nil "54" nil "^Cc:" nil nil "12" nil nil (number mark "U       rschiron@red Dec 10   54/1830  " thread-indent "\"Re: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow vulnerability\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24373 invoked by uid 550); 10 Dec 2019 11:33:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32273 invoked from network); 10 Dec 2019 10:25:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575973530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=1t6BOfkDS8HrttzRucRRwQKYSUY1gpjTYyT0f+5Sg3k=;
	b=HD0v4ZDtX1FlpQUnadWwOK+Ks01sDP5LR2XYe0cv9JX3EdV0SUL7oWNh+OgWj3WU9XiEMY
	W4ckiQjejFQtw3EtisRdjK4GlOpo6zNLajt6xuX8Tj+xzMUfatUQg2lFO8tBbS5F3RtRUE
	XIRSY1Ly3vXC0Zjlrk072qBC7NC8qIM=
X-MC-Unique: FTezuUZIM2OpSW4b2lC2Jw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dpGEuPrz+D5ftmTiWaaYnCDNUS73R4V6SSbec1+SSEw=;
        b=iA7FEiwntTypIs41P95lYm481E90D4wjq8lFoSEt93Qo5OP7By56XL0rfGNre4LnNr
         YfqEF0F3SG2Xi4N8+GVYf+zqz0qiANcGBsvx7imUVHNKBEf+qtlAkpysOokTdTc0uxoZ
         IJPS1gt6noJithbGwIUsgBo/LIVwbigmrK07/P2yz9nw7pkF6WrGNZcOoJnAGBSPWLuT
         FwaMCgfmlb99IqTjEsB8mzaLfNZ6aw+nZNSN0JYW3f90tw2SrfOMNJXi1dvmYQQ3zGc+
         Ux8MmB6D3YzuJttbMQwGzcRNlOLqW61vPecIxMXr01TmhbkKD8BsTP6vXz8mLWzOojo7
         LuZQ==
X-Gm-Message-State: APjAAAUb7CVZW0rZ3thrvot6OTP1RZ3XSQCcd6YJtraDLCfO7IO2SFss
	HmX3fXb1rbeMOZhPOgAVryLn5svDBij4PHtSeg9qpjfI9JWlnjiqvVW10Ce/uwJWtyF1t2ywiJg
	CKhsuPth15UkfIutzJKLjMFN3KwS3
X-Received: by 2002:a5d:5308:: with SMTP id e8mr2326422wrv.77.1575973524895;
        Tue, 10 Dec 2019 02:25:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZZ6krVD7eaLL08s4nW2CLLDBtys3kgGtZO3vj4jVAuzk2HeOCkPbSaC7TOFyxqeLcMQHB1g==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr2326394wrv.77.1575973524682;
        Tue, 10 Dec 2019 02:25:24 -0800 (PST)
Message-ID: <20191210102523.GB4424@fedorawork>
References: <7FAE04BF-0229-4BF8-A2C5-756AD04425E5@vmware.com>
MIME-Version: 1.0
In-Reply-To: <7FAE04BF-0229-4BF8-A2C5-756AD04425E5@vmware.com>
X-PGP-Key: http://keyserv.sr32.net/pks/lookup?op=get&search=0x1E8AB789CF96E110
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mimecast-Spam-Score: 0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l76fUT7nc3MelDdI"
Content-Disposition: inline
Cc: VMware Security Response Center <security@vmware.com>
Date: Tue, 10 Dec 2019 11:25:23 +0100
From: Riccardo Schirone <rschiron@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow
 vulnerability
To: oss-security@lists.openwall.com

--l76fUT7nc3MelDdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 12/06, VMware Security Response Center wrote:
> openslp has a heap overflow vulnerability that when exploited may result
> in memory corruption and a crash of slpd or in remote code execution.
>=20
> CVE-2019-5544 has been assigned to this issue.
>=20
> Below you may find:
> - a copy of the affected code with comments indicating the problem.
> - patches for openslp versions 1.2.1 and 2.0.0

Are those fixes commited anywhere? I could not find them on GitHub.

>=20
> VMware would like to thank the 360Vulcan team working with the 2019
> Tianfu Cup Pwn Contest for reporting this issue to us.
>=20
> VMware Security Response Center
>=20
>=20

Thanks,
--=20
Riccardo Schirone
Red Hat -- Product Security
Email: rschiron@redhat.com
PGP-Key ID: CF96E110

--l76fUT7nc3MelDdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE3bt3kyIFawQJu6PaHoq3ic+W4RAFAl3vco8ACgkQHoq3ic+W
4RBtdA/+KhBAhPozTZyhC0dvbuaaNP0et5nCuFIcu5R9/l4+MbP5jlGRIUrZtmbc
KmZsmVTvs1ssqPNdzviBt0xHzyLIymPYZMs5AhClw5c6H25tzd+Dg7rp3gVGBrMu
jyAYZhRKjLSFA+WCA7vxEb7RQW7lTQ9j72iaQN65OvqpfMTNTSULw3yFNMpi6ZNw
EDkbZXRu5wxmw1j9lLxgjyOhpNngVN07T8NJZh0xlGeXyLYNBZGQ6ulLhXAEzOeH
xEN5RGKHVQkNtQx0q2Z5uOZlVOyV5Jquuu/U3gB7o4w/eoBrsYOguryBr/tDyw6I
JfEG746DBndW3DB08zzukeFvCk/qTao8XXsFdwgV/cAMl6MkX3AepCDeIrVKWIKs
SWWRd0z0BNCiBS6caEs1SHPPxSWYV63yFm7PykXzkgo9V1qTq5hdD5qT1qHbzsM/
tuOqm3qNSa6vthc8QZyMd+o7QwrASDI/rDAs4TV8shhXKf4PzwQqCZBBr12Yo+HQ
gpNh8Qr7jOvH8PJ4loJ83fMAu+oxKueJURnxsSNqr5sBwoiRP0QxIqAxrl1Nwbeh
i8MX9oSFuwjWL5G0+Hz/V1AhWfRkpXNjXFH7KkL4lu8BoPu/ir87oSdOhiUnH75p
Z/bD6J1yvBD7fYGGAL+s7lnoUKygmLH/OZtgRaO8Fmbh4up5uAw=
=TToE
-----END PGP SIGNATURE-----

--l76fUT7nc3MelDdI--

