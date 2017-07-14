X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2215" "Friday" "14" "July" "2017" "11:05:39" "-0400" "Santiago Torres" "torresariass@gmail.com" "<20170714150537.3e2irp53kwj5xsn7@LykOS.localdomain>" "59" "Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?" "^Date:" nil nil "7" "2017071415:05:39" "[oss-security] Estimate for the total number of exploitable bugs in large linux distro?" (number mark "        torresariass Jul 14   59/2215  " thread-indent "\"Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?\"\n") "<20170714093401.GB865@sivokote.iziade.m$>" ("<20170714093401.GB865@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10105 invoked by uid 550); 14 Jul 2017 15:39:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17796 invoked from network); 14 Jul 2017 15:05:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sGhzKjyee80+IQKLO63Tm9SrqvwqyZ7A+Xk58giL2MI=;
        b=O9AuOvWGJ1Cp+yrjF2mwFabRu1ldXTt8diAZgUBKtlPxdYZ1VAA285MPSOcj95eEEA
         jmNrsvdrOTR6UQKHByUDKEa3dac7VJX2/8B74If8Pk6B+Eh//ixFNb7jH0MP7aauojhy
         u1ApjRthgTbt5QLPXH6rFkmEtnp15vvR+fs9+DabxNKoRQ0LnFsDuA50LnRx/PELK+SI
         0MJmI+fN1dLA/ZNl97dt7s8xtQVfM7LUO2COZ9QcFC6GGDA6PJchlg4qcPTOokxplzmi
         9PQ96uca/WCZCrlryZ73EgEy2O2qt08RWT75YuiOLwVBFgb7aQ9N8o4byl8UGFqo8Y7s
         /rdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sGhzKjyee80+IQKLO63Tm9SrqvwqyZ7A+Xk58giL2MI=;
        b=opnIQnvl43hXT5ZHt7GVr6Ozcp7WE1Z1F8HdsHzBr6ssOXulLjnoeCOJ/YVFc1TO8q
         RlnQ1Br2b13+s4laWTXIzrC27dvf2b8eyPVk1ep8g17k/0qaiD4DeHJ+rsQCnvFHG37v
         dxqUt7OrkTZvp7cEs6z45het5atKltmmcJl863gf2c0Z6d5mPCaqQRdefMRpQjDpzD+o
         2itkFMYQraEApeSzudKE1LJiKEz7O3bbEvMySsgrwz4hRTT/g5Sp3At7iGlkN6i0EjO5
         KqLcjydoqk4iwr6NDzezWLXbo5lgGCUzIPDYu0mDH/C0Acf45dZysvlB2kWzD3pfwPYS
         FnWA==
X-Gm-Message-State: AIVw110Yaz7W17BWbgTnAu7o3gL9AfAmOj2tnX/Snjsl3pLvmXJYjQtM
	edrh4kPk3RWo1Rb7
X-Received: by 10.55.31.150 with SMTP id n22mr12434911qkh.46.1500044740760;
        Fri, 14 Jul 2017 08:05:40 -0700 (PDT)
Message-ID: <20170714150537.3e2irp53kwj5xsn7@LykOS.localdomain>
References: <20170714093401.GB865@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eeu57hlz75t2ugyb"
Content-Disposition: inline
In-Reply-To: <20170714093401.GB865@sivokote.iziade.m$>
Date: Fri, 14 Jul 2017 11:05:39 -0400
From: Santiago Torres <torresariass@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Estimate for the total number of exploitable bugs
 in large linux distro?
To: oss-security@lists.openwall.com

--eeu57hlz75t2ugyb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 14, 2017 at 12:34:01PM +0300, Georgi Guninski wrote:
> What is an estimate for the total number of exploitable bugs in large
> linux distro?
>=20

You may want to look at[1] for the case of ArchLinux. Do consider the
caveat brought up by other people on the list: CVE numbers are not a 1:1
mapping to bugs (or even exploitable bugs). For example, there are
vendors that group all bugs discovered in a period (or with a conceputal
similarity) under one CVE number, whereas others take mutliple
variations of a bug and request an individual CVE for each. Needless to
say, some bugs never get a CVE ;).

> Also, does the total number decrease, increase or change in other way
> over time?

You could use the json api[2] on [1] to get a rolling count if you'd like
to measure this (also pasted on [3]]):

>>> import json, requests
>>> response =3D requests.get("https://security.archlinux.org/vulnerable/js=
on")
>>> data =3D json.loads(response.content)
>>> len(data)
34

Cheers!
-Santiago.

[1] https://security.archlinux.org/vulnerable
[2] https://security.archlinux.org/vulnerable/json
[3] https://bpaste.net/show/faa58aab9b1e=20

--eeu57hlz75t2ugyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkDurc2QOttZVM+/zRo8SLOgWIpUFAllo3b8ACgkQRo8SLOgW
IpWJPw//Y4hhEOfMCfUH8Ep/BGB0UFtMIu9vr1g8bAo5N0B6lby8nrTSZCEgwo9b
eG8KcNmF6v5+ApfqgGhayDZMFW1vJMgeRPr8khAlCOT8NOoccWVFAkAIsTyJZVPt
bAT0QUttdDOBda/aJcDDqazSE7X4A9AABUY/ytu00JFWCbkS5fFMBEMb8mj7lrc0
/sBfe3jJ5qm9Wtg2crX33OQHLFy+zwWWaN2TVf91MI5XQxL+w/dirqGrpxqb+Xsa
N1WVOGFoKuiqqG0iEDmHjUd4pv3SaRZb0mKikLVF7vX52psqF0wd7J8mJBXLdH1u
MRxSzjrNe+2lquyR1ug7/XV058C5shMZqP40ZbsuGmjn++/kwcRJaV0hLdYos99i
2t0+iBXesylrBNIIXwCOc1C+qg9QkGkZHPj18YKI2g7u6f8pZXYyYi3FBe+efDnf
kkxg87/uuF13OSIWdkojhllvK+R5dORWb7/vXVoXULDR9gkR1wR7/b6qQ4vVtbct
781T+Tbcs0O4ooTmyrZR432L2YQIQyO9KU9CD/yMuZ5rr1iZPbfIGjlws4VHUkkY
lHonO3YrOPeZB0imVlorG5Jwi1qYZyh75iMo3XDubtA0bu7A0zyMN/wzbNQXiHhx
BZyJ68M6Txk1bA/nfvE72HtImY9SxaIt4PwqmnYZQZqjSzCbSp8=
=dXbq
-----END PGP SIGNATURE-----

--eeu57hlz75t2ugyb--
