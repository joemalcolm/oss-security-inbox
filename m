Received: (qmail 27902 invoked by uid 550); 13 Oct 2022 22:55:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21710 invoked from network); 13 Oct 2022 22:19:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chrisdown.name; s=google;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7o3/R4nhZZLyRpNwfePhiinqQK1b4YFOwK4kYr/o53w=;
        b=VFE6EgV1SLp4y5Csa2pKg5Anc/xE2TPEhQB6deYMq/JrgxKWvHCIgbAEyc15c4ttE9
         joGPmqpqZFqKUlTmrm8a2FVvJNEKDxSOtlzGqc5eoKFMFMLnFbq1Rb/4R5TCGOBUkzJF
         kznZtsLzDqkZLwgnnljvFXGX21mg9JEUMVg4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7o3/R4nhZZLyRpNwfePhiinqQK1b4YFOwK4kYr/o53w=;
        b=oapG8zy83ZT4om/6ZzPVXRC2zMTQFdPomdq4fOAHbUoLs1eTGXWDCCIDRKQYcb2Pnk
         SQvrsUwvBkbXhi3gu9iBRCu5IzC+9WYri9rsC37/IiIbr4eXgCh0la35soxs33U46590
         pMoyPadT44SUWj5rSEOWaoJhLmYHF3VyO3TswAdGDu39DF6SEruyCnLUTKjF7TkjlPWt
         MgKh4JjfvPbDqgkW+wE9mQqp0pPbri730NE3jAhw2SptbABBhpZwtibnfee3DJzovMfs
         LCxtXKzKBBH616xdshkevcC15z1T7HDL+n3DIGFIcaJtCZmaC59gFLgEQM+FeYVZqodQ
         lnGA==
X-Gm-Message-State: ACrzQf3y1dA3ANT4tSF+9MwUyqtrdZpNeIWnOlfPdmFXOh9grmRXjOY2
	rCFkpbP6lJMl1Jc+wbxvj1zEwWhZtUfSxQ==
X-Google-Smtp-Source: AMsMyM47vIlPHpcqTh4VKXybcIQRa6dMY7i0LO5KBfb2VTzxt/FSQ9hf0ewp5dg/4cp3zUMjMlcQmw==
X-Received: by 2002:a05:600c:4f01:b0:3b4:a8c8:2523 with SMTP id l1-20020a05600c4f0100b003b4a8c82523mr7953165wmq.199.1665699584625;
        Thu, 13 Oct 2022 15:19:44 -0700 (PDT)
Date: Thu, 13 Oct 2022 23:19:43 +0100
From: Chris Down <chris@chrisdown.name>
To: oss-security@lists.openwall.com
Cc: shuster@seemoo.tu-darmstadt.de,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <Y0iO/0BAoxZmttt3@chrisdown.name>
References: <20221013101046.GB20615@suse.de>
 <Y0iIXLUix9iFJl7m@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BjZi0Dww2HCTJdz+"
Content-Disposition: inline
In-Reply-To: <Y0iIXLUix9iFJl7m@itl-email>
User-Agent: Mutt/2.2.7 (2022-08-07)
Subject: Re: [oss-security] Various Linux Kernel WLAN security issues
 (RCE/DOS) found

--BjZi0Dww2HCTJdz+
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

Demi Marie Obenour writes:
>Are these fixes going to be backported to stable?  I did not see
>CC: stable@vger.kernel.org in any of the commit messages.

Greg pushed out stable rcs with them a few hours ago[0].

0: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/refs/

--BjZi0Dww2HCTJdz+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAEBCgB9FiEECEkprPvCOwsaJqhB340hthYRgHAFAmNIjv9fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDA4
NDkyOUFDRkJDMjNCMEIxQTI2QTg0MURGOEQyMUI2MTYxMTgwNzAACgkQ340hthYR
gHC6lw/+Mw+lD96tRdfD/L9uAinivGOobKRl1PdQnRuuz6rdp/WYCEiyP7J2buFD
i/Q6wGNl7wXIWPO0S5MIlLukr+zVO/gZnMhrd44J2qZulkm4zvZinalPZB0Icd5A
gtrUa3uJevWENRczBuX/tIY8LA2Gl8lj/foF3Iq9oaTearQSvjaejPeZukr1n2tT
1/stjM+Lna7LPON5ij2CYXlJpMNGaOaEXXiohXWIeuS3142cCL5BRuRKvefe1YuE
virwETyk/+HLxbeumwT3OOyeb5azvunWsz1g4Rp7EwznMFGSC5wLYBh7f1aZ50CN
hpzN97VgSH0D/NG0Yil6viJ4JRKHmxCZDeHpIAeNwN4eesxxEPwIATTEIuKK2iKn
zZFE3WsPkZhau8KJPyW/1WC32rjwijnmWeNXS8OC74dt92CRn7lInmugZuunCZ85
5B6lGdgPR2U+IJnE467ZQ7pcsrpPLz+xosTGC0aiA1+DuAWewk+E+w6QShDiNQre
hJrepHayIgETA5MPg6JyeZjyrSV7LK6kASotqT91Jx9GvUaYe5FPQjUZTeDkMzTa
FytpwNGiD5Xa8+aGZDvcBlLSrJakOFqL2RmORPbpi5lJTtJhXR6m/2aHOg9dnGDd
ha0I/hpatQ1wYTtOlOEWy4a+OaZqPx0hoUCrSZ6m1Nv0P6BWl7s=
=sSyF
-----END PGP SIGNATURE-----

--BjZi0Dww2HCTJdz+--
