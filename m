Received: (qmail 1757 invoked by uid 550); 22 Jan 2025 15:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24094 invoked from network); 22 Jan 2025 04:38:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1737520703;
	 x=1737607103; bh=RMQ42wCU1FSwHRdFF0bL0zxk0iSMFTiWZqgheMMFFCQ=; b=
	H7nvqichh632mSjS6iddNd6gIRGdohsBYDiS2Om7DXSBynHXdg3YHUtZsT3kBVRA
	E0Ivy2tdyKFz/e6W0d/CST3XOmRsiVteqv6plYBVfnf46T73YvK4cVeIGzclPhAt
	QFmQbkIybYx1/Ou8A6ABp9utJmsq8yL+y0aI7neCf075RBSunpSfiPplS9OtT7N3
	/Doje8P3uNjz1RPFYdRJxmSHwvKfeUY7y9/TRd8Mnb+4zZNFrRzuv8cv/kTZjiUW
	l8IbnaZ7Nk9FPiC92Lpnwi08hFXh2Pk8dxu4dazH4iwwVf4oUyMDd8LWDdEa6S7l
	AEQlHcFx4Eo+WONPONaodQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1737520703; x=1737607103; bh=RMQ42wCU1FSwHRdFF0bL0zxk0iSMFTiWZqg
	heMMFFCQ=; b=Nl1AiuuXNFj6cysSy5KUHGIQyEnOxPVk704HrhTfPSLmgs66RdC
	gaD8YDNAY6hSJlQcbRKgw8gILqseGZTsugBa+oPXz3MP14208Vnj8tS5zInlVuZR
	Y+OufKpLrO2uoBXjQzML0CLb+8p2ly2B0OkN17RfMf2KUqB+BuAJbz5yOY7iPbGJ
	ucqUpL8cFbINuZQNsWH6VqnuboYvF/I+NpaVyD/uOjgrf1ioueeoU0fQ6Y15aARO
	u8beDTAC9blCORP0PzCHUyafaN9r/qpx7sGNki8LZP9JQsHMKFWzP9pTdp4BpOu5
	1l9XsPIsT6XM6Ozc8yxVVWK3WCkTK0CSjGg==
X-ME-Sender: <xms:PnaQZ0xAp1QQGSoOh4lMEfl-WcBMz7C-DRYwcF3cQhBFenkFjqh5ng>
    <xme:PnaQZ4TEAMWLSct38ddhaDxAuwqWOMAO734jDY3BOQObPFpJppqAzmh_wGfyguK2O
    MlJeo4Nr_0pXcs>
X-ME-Received: <xmr:PnaQZ2Wc8ioi7H_rHqK-xuOXsm-JNdlGZt6ps7ocK0cFth5XkdrM8-mi8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudejfedgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuf
    fkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggv
    nhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqne
    cuggftrfgrthhtvghrnhepvdffheefvdetuddtffffudekieejveevteeggffgffejveff
    veejfffgieegueeunecuffhomhgrihhnpegrshhushdrtghomhdplhgvvhgvlhduthgvtg
    hhshdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprh
    gtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggt
    uhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:PnaQZyjBzkkmi6ZOier0heJW4ynxx_6LFeV9i1QUIRrPomusz_zImg>
    <xmx:PnaQZ2DytStWxuozgD2v8TChonlLXrjVXp4QAUra-L107A5TiZKFng>
    <xmx:PnaQZzIPoUXfl46kenz1I-wPiCIJyXewim66f-7p-T6PBQNyheMQTQ>
    <xmx:PnaQZ9D17ykdaGmJqyR3iy8WKWQbe1mwaEXB2WoRm8wIns-fyRQtSA>
    <xmx:P3aQZ37JvcvD8kzUlC8rN5L9ia_e2ZRMcBU-4OitdYIrOyR_XXPD85Gm>
Feedback-ID: iac594737:Fastmail
Date: Tue, 21 Jan 2025 23:38:16 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Z5B2PA7DHTBbvbOq@itl-email>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GCv24PqyPJcIKQXn"
Content-Disposition: inline
In-Reply-To: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

--GCv24PqyPJcIKQXn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Jan 2025 23:38:16 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

On Tue, Jan 21, 2025 at 06:31:31PM -0800, Tavis Ormandy wrote:
> It looks like an OEM leaked the patch for a major upcoming CPU
> vulnerability, i.e. "AMD Microcode Signature Verification
> Vulnerability":
>=20
> https://rog.asus.com/motherboards/rog-strix/rog-strix-x870-i-gaming-wifi/=
helpdesk_bios/
>=20
> I'm not thrilled about this - the patch is *not* currently in
> linux-firmware, so this is the only publicly available patch.
>=20
> However, other people are discussing how to extract them:
>=20
> https://winraid.level1techs.com/t/offer-intel-amd-via-cpu-microcode-archi=
ves-1995-present/102857/53

Is this fix effective, or can it be bypassed via a downgrade attack?

Since microcode loading can (hopefully!) only be done in ring 0 and SVM
root mode, this means that one needs OS kernel access to perform an
exploit.  However, if an attacker could load arbitrary microcode, they
could compromise SMM, SEV-SNP, and DRTM, so this is still pretty bad.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--GCv24PqyPJcIKQXn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmeQdjkACgkQszaHOrMp
8lNQVw/+I4Pwff9bkK1QWjrRI10y8j/peXmhJq28r+5+aDMIPKTt31nALU3FH/VD
qnC8m4B9A2qdFiTiks0m5bY8yByxji9z3gpHdAkTjrHhWA4NaZQgR8Uu8lXYqg5d
HyiMgdQQ3ZK1qUeYnJ6imkHnelerOz3OI3LrWpDBDd5aHAzS48amY4SUtE21Pm12
bITU+PuuC9+hf/oRR5dUrq+Dt3an3oygh+EeIqUPhVKr7NFxITwtfJnZqE71HJbd
+UQ6AuheXkqtWLndFXoK41irgc3gnFPR8a/7skFcH4seGJbRfvtJ+3696ziMiADf
C8KxWJBwDV43bHzQT5xjmc/HMCSlAzCvPJJYYuj3AAhJJ+9L5jviKnNF5caws30g
+rQY4cY2HB7L+33jRrs4oPOoEafPqbel0XditNzsKsSRsPQVMJNGnPsO2aRp3Ncy
RU5dC4ArtAKdhPK4wXxpa426Sa49+MAK+XfEivvDLvNdmgnxtUWd2vvnGj1chr4r
d1rDVxsxCn/NAdvQFb3f/REMMbQ8udIhpHKZJGgOtU3F97xx206AjT3xHs0b1CK5
uC06b7DnMGjkA2yCKXVih2yyMNcJl3dtJaR42UtAbCVUmCVNgnsMNLUYw1X/iQ9o
/uKb3egtIV442WYEpLQt96fqeIZ+VZzVA7TZqCDQ59lQrpffBvQ=
=LmdQ
-----END PGP SIGNATURE-----

--GCv24PqyPJcIKQXn--
