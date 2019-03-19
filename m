X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2355" "Tuesday" "19" "March" "2019" "09:44:54" "+0100" "Riccardo Schirone" "rschiron@redhat.com" nil "68" nil "^Cc:" nil nil "3" nil nil (number mark "        rschiron@red Mar 19   68/2355  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORIES] libssh2\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [SECURITY ADVISORIES] libssh2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20303 invoked by uid 550); 19 Mar 2019 10:08:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7169 invoked from network); 19 Mar 2019 08:45:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zn6yO0fC3ZNYtRrDsebbWbHu4cljbl9LhPU8321VvBI=;
        b=QotI5fEf0WujCPLLdclTr7ZcEmocnheQwucgXJKVeDxkKfPeoVeQ4IrrdIuTbC39wX
         IJtUTMk0hATCdSYISNcmWxIp9iWDZGByDtr4917ILqz3afz8CDNeqqW2oQ4KFsu8djn5
         60BX/CdgHHy0Zzie6IEFgA5/qMTGLJv5kReu+I40XmhR1tRANaOR9xy94yLKXlfie/Vv
         vd1bmXt/a74CFURZPIkusaknN7e87YfQCiUGDXidq3/Mvit1EgPiUlyBBwLpcoUgToz9
         WjVQ2+2wyVEajRmnhbpAa7Yi7QCKI9ZbQOz0MVl1hN3IdVRM/tksEFm6Q6hjXtH52To/
         QsIg==
X-Gm-Message-State: APjAAAW+qP4Uq27twhPpkRDwxBV2+i1Gi5ZIHa9yWlNU/VcBOMqhzHcK
	oAX0PzPhS6Iuhke4L3EgYoS6WSremaU=
X-Google-Smtp-Source: APXvYqxfjQOVkJ38WtqMyrLUvLPMuCTuBMlqEM4SCqCYtaWVvmwHvFJ4B0dQn2aN1ruMrAnXsRhzHA==
X-Received: by 2002:adf:ce87:: with SMTP id r7mr12396210wrn.324.1552985100912;
        Tue, 19 Mar 2019 01:45:00 -0700 (PDT)
Message-ID: <20190319084454.GA29714@fedorawork>
References: <alpine.DEB.2.20.1903182209050.22468@tvnag.unkk.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903182209050.22468@tvnag.unkk.fr>
X-PGP-Key: http://keyserv.sr32.net/pks/lookup?op=get&search=0x1E8AB789CF96E110
User-Agent: Mutt/1.11.3 (2019-02-01)
Cc: libssh2 development <libssh2-devel@cool.haxx.se>
Date: Tue, 19 Mar 2019 09:44:54 +0100
From: Riccardo Schirone <rschiron@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [SECURITY ADVISORIES] libssh2
To: oss-security@lists.openwall.com

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On 03/18, Daniel Stenberg wrote:
> Hello!
>=20
> CVE-2019-3863
>  Integer overflow in user authenicate keyboard interactive allows
>  out-of-bounds writes
>  URL: https://www.libssh2.org/CVE-2019-3863.html
>  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3863.txt
>=20

=46rom the security advisory:
> A server could send a multiple keyboard interactive response messages who=
se
> total length are greater than unsigned char max characters. This value is
> used as an index to copy memory causing in an out of bounds memory write
> error.

Is this really a security issue? It seems to me the server cannot change wh=
at
the interactive keyboard message responses contain. They are, after all,
"interactive keyboard messages", thus coming from the user sitting in front=
 of
the client system.

I can see 3 different "response_callback" functions being used to construct
the responses and in one of them it is probably possible to trigger the
overflow, however it would be caused by the user himself. If we assume the
interactive user should not be able to execute code, I'd say the flaw does =
not
have a remote attack vector but only local.

Did I miss anything?

Thanks,
--=20
Riccardo Schirone
Red Hat -- Product Security
Email: rschiron@redhat.com
PGP-Key ID: CF96E110

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE3bt3kyIFawQJu6PaHoq3ic+W4RAFAlyQrAAACgkQHoq3ic+W
4RAhRA/+Mu2yTdgen2fP0oWG0utgqeATEMMF4Heb3o9Lc5g6wAmNqQDR0ygcnWYG
m9NcsLLxSPaHCdF/7Kgn1wlLAN9+RrSZMZZPVMGsmR3oCEaMXTXydpFzgYhB4njU
75t9cHQMvZiAYwsaE+B7SgVrieb8C2DBpL5g5k8LlbFE222xDMRZfGZT2DRiIT+L
fMnh36bT6fnybZfbqP5aXMrT5nYEa3tbYyZ2gK5Mg1+JqbpqWFx3UtJNb5t8sqF2
xe/TixSg4fYabe3zCO+bDOXcGyVaMYNqe5gRLErr+I5VAbOke3HqnDR1zjpFq4UL
4twnqkUtUEbdB7PpDG0+eTSXfP50v2v5cJVu22WczhXNi/Sl1vyqRqRKNxxIJDN3
7MQeur7uOOEy6GlTwKjhb2nROGIdMUAJ6yNK5cIGZ5+zDf6+SQZHSzUp5Rvq+gIL
GTLZe+MYBOxMIJv0itopXdRiXfrJesYO2RD/AJdLsEe+tcQwEEpOIpOaXPpqDcv5
0h8rv4+hMdUvQGlElmhVhWBvLZBj7N3K+Gp24PEMQMu2pdWS8Mbg2y3cVF6BBxK2
8Gh21l1UtcVykDUtCIx7nSKvGAkLluwLoasAzel4rZBjvOmGLvt6H0TK4/oLHYnl
mF/SPGmWEtWqa2de/ouWfqjIbqOFPUTbNgyKg2ph1GrSRcFBIwI=
=CAwb
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--
