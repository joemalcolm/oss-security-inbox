Received: (qmail 18180 invoked by uid 550); 31 Oct 2022 12:19:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18153 invoked from network); 31 Oct 2022 12:19:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vMglcpVNYn8rjJWQhFTdoISa4gWAjyNl1fEdiNCOuFA=;
        b=a31+NGB8rH7qw6PEgiD3l4stV3i/xn20/Un2x+JWeV6DvFn0In9JqsgHW2r9O4PoDR
         CEJPokkAJkfdNfOiFk45pCJ88CMTx+N3VrGGzJm8XxS7YYzHcuLhFkldnG5l36/EBV9J
         LrKhnn0Mq/N2clwduYV7UUhqa8NMXlrExUMgucMO9S3jeDD1eJC2Xhn+nzb9r5pgQ2IM
         nrnV2NsIEuH5jOvbcrdTVyUnECDmttz5oxoqKveftGLTcj8dYvv1EYFiyZidnt2YlT4R
         VJYek2cwE8q7xtUQQTeS1/wy5WZaoK00g/I5qj4KBfgr5orkDE5bddR1n4iyyqlJE+ww
         cARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vMglcpVNYn8rjJWQhFTdoISa4gWAjyNl1fEdiNCOuFA=;
        b=Pq9lGkdPTbZZDsLz92exSx7JDJ5BxyzFcD4EX1bkm5iJuAFhdrMhyRLz4EmP8s2ltA
         zXcOLoADkLsvABxAndorf/K8LZycoL02wXU1BXuBE9G8DQGWjXRl2uzREAcGXbvfHMlb
         VvcO3VLeGFAy3I0Z+tXa1WmQ2yKU88tnpjQjAGvBDFTyEFAwriJ0Xuci6ICgwn5MH0fR
         5J3RStcTEspgttaiBUvo1ggo7FZZfcZV/QD46JmlvRlSP5I8K4SgXGehvnyHipLbIiza
         olzf8gsr8hpdtX+3LDHJZ8AR9mBWf2oGbry1xJacw3p9zGVOEPCHSV30So0thyr3Wg9F
         4BdQ==
X-Gm-Message-State: ACrzQf0UPk174ySi8uO1t215L3dobSoEbPkPZHJM9ablheQvZg3YmGkS
	t94Xme5mqOTiOavC6g16L7qLgL/MNqo=
X-Google-Smtp-Source: AMsMyM6JZStgSlz1WpRLPETD27cE/hsWftzdHTaBvQgA9oFYQAgV+zIJwkEh4IURQtLMh9aN0F/Uvw==
X-Received: by 2002:a9d:20e3:0:b0:655:d819:244b with SMTP id x90-20020a9d20e3000000b00655d819244bmr6326907ota.232.1667218748152;
        Mon, 31 Oct 2022 05:19:08 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E8A59E0A-48E5-481F-9733-FF6F914DCF21";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Date: Mon, 31 Oct 2022 07:19:05 -0500
References: <CAGUWgD_OwgwKVQ+kxLv00dvDnNC9ZU9gWEarwPjSxg7kxK3rbA@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAGUWgD_OwgwKVQ+kxLv00dvDnNC9ZU9gWEarwPjSxg7kxK3rbA@mail.gmail.com>
Message-Id: <16081501-6C23-4F5A-84DE-D3DCAE7982F7@gmail.com>
X-Mailer: Apple Mail (2.3445.104.21)
Subject: Re: [oss-security] Is third party javascript on a login page
 considered dangerous?

--Apple-Mail=_E8A59E0A-48E5-481F-9733-FF6F914DCF21
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

It depends.

You can prevent some classes of JS running such as inline JS so only truste=
d JS is executed. If you design your site to expect to pull from a specific=
 CDN all the time, disabling inline JS (third party or otherwise) would pre=
vent any attacker-controlled JS (say from XSS) from executing on the login =
page while letting you use any =E2=80=9Csafe=E2=80=9D or trusted js.

If you perform SHA sum checking on resources with resource integrity from t=
hird party sites, you can be sure you won=E2=80=99t load a backdoor or othe=
rwise-modified version after deployment.

If you are loading third party JS from a trusted source, but not performing=
 resource integrity checks over plaintext HTTP, you obviously still can=E2=
=80=99t trust the final JS delivered.

Using third-party JS on a login page isn=E2=80=99t inherently dangerous. Ha=
ving no control or ability to know when that JS changes is the dangerous pa=
rt.

> On Oct 31, 2022, at 4:16 AM, Georgi Guninski <gguninski@gmail.com> wrote:
>=20
> In short, is third party javascript on a login page considered dangerous?
>=20
> The JS has full access to the DOM of the page and can steal
> the username and password, which might be reused on other services,
> making it yet another cross site cookie, lol.
>=20
> In general, the JS persists after login, potentially giving
> access to sensitive information.
>=20
> I believe static analysis can't catch all JS, since one script
> may load another script.
>=20
> Also, the JS might be dynamic, depending on the user.
>=20
> Experience suggests the main 3rd party JS comes from google
> and google do [k]no[w] evil [1]
>=20
> Examples:
> bugzilla.mozilla.org loads from googleanalytics
> *.stackexchange.com loads from google and cloudfare.
>=20
> [1] https://en.wikipedia.org/w/index.php?title=3DDon%27t_be_evil&oldid=3D=
1109436328


--Apple-Mail=_E8A59E0A-48E5-481F-9733-FF6F914DCF21
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoMgt+2k+7USJTPNpDj2JIDyRmS0FAmNfvTkACgkQDj2JIDyR
mS0pDRAAtsTlImyJSSxxE3j3gC0k3DPETs6T4dkvYBUPp3ZNWNe1t59pCvOg2XwI
ku1Z0UjAd5XJtfCpxL61R/K4z8bGLCGq2SMjL87gab4BTvydy2/yfHjUiixi1W0K
KEwE4Fsz9UrFNi7vKjkUVEYSr0c9KHJ23dzRr3QMQdnNdDjUNAKi5KGGaFuV3DHH
lgdAsZFCMZtBKdjOVZ7iWXv175Yx3Nmc5BNDbS7KdbvlO1WRXdqYqI7nQWUtE6kK
ZHR5iND9joR7btklrA1fn94fdSCxbSj4yL7rtfQNw2oA+Jl8pkAOrckIAmC7XObJ
6ylKHHuwzF3hIKBlS3wbR5/N0qBvVsnwsffQnPH2cqKooB/Gq3XZvaAqVb/5trNZ
X4ovcOvW8qd2MYsM9iZlM/LKKGKoUNDi1VCpns4Y7Moi7Hm2uIKKrTygG1v8bjG8
RFlaMcu/i0ZUfsDa2083zD1MoJrqXHeU7xEicAkfrAyXAQctZFwwi2jBx6OJyw8K
glvlLJFrCq9+IkgkFzieRSgmPZPMzI2TWbaVhyIVfPIUahOQf6J1XlayddEOGx+C
fjDG4iqjWX91Tv8gfzQzvZemgi+u9KO1diUVgW0WXfJOTQLxJp8dGS7W4Az2/XOF
l8X/JpoaXc9lpKeoFUm7ie9Pn1hXFXa9PEe7znP04zcw34wq5wA=
=aVPK
-----END PGP SIGNATURE-----

--Apple-Mail=_E8A59E0A-48E5-481F-9733-FF6F914DCF21--
