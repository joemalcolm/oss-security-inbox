Received: (qmail 20362 invoked by uid 550); 8 Apr 2024 12:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17605 invoked from network); 8 Apr 2024 07:05:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spwhitton.name;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm1; t=1712559929; x=1712646329; bh=6GEsiJbYTrzxWbYGErw7/
	96Fdk62LZyBpwbYXlLH46c=; b=ENqQwVUomUmHPR6yl1l8QuJXd85SNVa2gzgnr
	gtCnSyHTf0BBF5FBPsprKVaVP4FSvCCVItcjZ7AiRYzbxVtZy8SH0E80BQVneoJR
	xxYyMGbp9NHMPDjk2+y2othECsdBv3Z+aTqZcEqcrqOB4DvZjR8oc1YkG6zy18oB
	t+le4P+53p0uH9CS7piELNpg88lrm6HZacEMbYswYds9VYAhF2xIynL3Jue9yV/q
	Yl3eTqQffXUpTZCdAPAgknSoToItxEAceg1Q4ZjK6oP4XnrG1aZEwjnb0lBctxcM
	NTWHanwqULoAXf/NcB62D9e50nfBLOBZMqWOwPj722aBfuyTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1712559929; x=1712646329; bh=6GEsiJbYTrzxWbYGErw7/96Fdk62LZyBpwb
	YXlLH46c=; b=bs9/ra5ApvfssrroH9wRSR4PpA4khhbt6oGKvrFC9CfFJUB5Vu3
	9kS2vy7ZSwgDn76eHWPnMk8kebHLai1y7eg+CcTFCXV0Gh4ECpxtCAtuZZvW80pd
	Jq9LsGXAuxL6QH3F5SHezn63Iw8U7tA848MdlRamyj4ijZocGmJWh5ZSTY8Xc/37
	onSuadMqeGdeXo9mmGK13vl5978983KL4GJ2d3GXZwHMi4ks5srN6ntF9N5+g8HL
	bhcX+4Fp1yVfMWXCvyntZbiU7yzM2NRQLfZZ1KEwL7bsA9uSPYUC/WaxeGS+zizF
	uJ3z4phJ9i9PYdHFGIWxB+Ut9JJwfPnXxbA==
X-ME-Sender: <xms:OJcTZm8SmElBnxdTRvcKMo_F4sfRAhfAvxRFxkbYbGd2Exyz0E31HA>
    <xme:OJcTZmuvmX4LTGidM-2HT0gZi0IWl9SyvSUUiGRHjPUva7SZjsS28uRWjmTAqXRKn
    1giTS3_ur4rY4DZcA>
X-ME-Received: <xmr:OJcTZsAqDnPEJJlJ8KIEXTQtQ_kXyccESN03cT21ZdfBX_orquJqWLW-XRYLIL9F6wOIBjD9715I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeghedguddugecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkfgggtgesghdttd
    ertdertdenucfhrhhomhepufgvrghnucghhhhithhtohhnuceoshhpfihhihhtthhonhes
    shhpfihhihhtthhonhdrnhgrmhgvqeenucggtffrrghtthgvrhhnpeelleejjeelleejie
    ekjeejiefhjeeviedtleefgfektedvffegffeigeeuveffkeenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsphifhhhithhtohhnsehsphifhh
    hithhtohhnrdhnrghmvg
X-ME-Proxy: <xmx:OJcTZucfVOV-dkeeoo6BFH5ogdQIWtKkuCgeJqRUWX2rxUNPrEa2Lw>
    <xmx:OJcTZrPjsjDUR41YE1xKtf1JzX5V1g561gwMyrBaVULxj0tyF3qVYg>
    <xmx:OJcTZolhqBgxJ9ICEFXR8T4qBx4v4xWWqyT5jPRW1RHg3VI84AoGww>
    <xmx:OJcTZtsuPPLurvsxlEti_kCZ2YSwpU20ZwKWZNsCWxbEvMDUM2IApg>
    <xmx:OZcTZgqedLrIVP02jJ3sxJeridYUCp71-M01ypM0rtaH3Npm0c8yL5hO>
Feedback-ID: i23c04076:Fastmail
From: Sean Whitton <spwhitton@spwhitton.name>
To: Ihor Radchenko <yantar92@posteo.net>
Cc: emacs@packages.debian.org, emacs-devel@gnu.org,
 oss-security@lists.openwall.com
Date: Mon, 08 Apr 2024 15:05:21 +0800
Message-ID: <874jccjpvy.fsf@melete.silentflame.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Is CVE-2024-30203 bogus? (Emacs)

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hello Ihor,

The description for CVE-2024-30203 is

    In Emacs before 29.3, Gnus treats inline MIME contents as trusted.

and for CVE-2024-30204 is

    In Emacs before 29.3, LaTeX preview is enabled by default for e-mail
    attachments.

but I think these commits

* ccc188fcf98..: Ihor Radchenko 2024-02-20 * lisp/files.el
  (untrusted-content): New variable.
* 937b9042ad7..: Ihor Radchenko 2024-02-20 * lisp/gnus/mm-view.el
  (mm-display-inline-fontify): Mark contents untrusted.
* 6f9ea396f49..: Ihor Radchenko 2024-02-20 org-latex-preview: Add
  protection when `untrusted-content' is non-nil

fix only a single problem, right?  But we have two CVEs.

It seems to me that either

- CVE-2024-30203 is just bogus, based on a misunderstanding by the CVEs
  assigner of exactly what the vulnerabilities were

- CVE-2024-30203 is legitimate, and we have only fixed one possible way
  in which Gnus treats inline MIME content as trusted.

I think it's the first one -- can you confirm?

Thanks.

--=20
Sean Whitton

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJNBAEBCgA3FiEEm5FwB64DDjbk/CSLaVt65L8GYkAFAmYTlzEZHHNwd2hpdHRv
bkBzcHdoaXR0b24ubmFtZQAKCRBpW3rkvwZiQIKhD/9S9yvUe4fFcTWKEFAGwXrC
xa5zjkoWIxPQK7ZS/4y1yyM8DwYCH+pw5i1Fcbo76hJhAYMIlLxPU9Gk3abIXIiN
k4AzVqcjmDKKd7NmQ3RkAlozYtgDoN9cLjgy21TmfGMxGFEKTJ1467cRbFq/ZM3U
yBQZK7k7qrCKX9fZP1hTavx+KA72IMYhSZJ3+B/QX0KZTFeAqN41bVe6hctzthIs
aX5HMuL6adeVuO18k0ra7Kaw1mfrYYiN//YpFuVdjdcuXACTgBL4ZXBOdBkdKHDq
duPCx/Eg0xbHd53BzVHOvYczT5erl2xojyuJ44gyyFGMcDvaBBRvWXjOJhNDMNoF
BtRd9/moZkVlIRsv1zbOEYmCpdsMb7KU5vDPpKCwo8SG5tfP+bMWbrRHFJ+NqJm4
opu0TDRFtjuqk1jG7CXYQv56V+X/NR0R3zik413MPv3c/kOUeWA1Q3O5rk3IjDUl
AdQR1o2PZeTW/pq3Ho4QK/iz+AWEMUWYnTF+Mg1m56G67sqQmBnwn13MascfNF8M
3FAyLMgNRBr1WbYq2j+cQgGJ2LCqhFHPCz1BQ5pyJqcEGNevm/3iFoWg6Pqx0CCD
Nm50AHWeE1bi8CnYC6xqK9BFr2BQiA+MTMxtWr/G72cdBMNUDUP516WwIOfLadxR
pyfVaBqs6tsbV9QMHVe/ug==
=EejD
-----END PGP SIGNATURE-----
--=-=-=--
