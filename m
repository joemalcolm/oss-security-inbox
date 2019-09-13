X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2431" "Friday" "13" "September" "2019" "09:18:08" "+0200" "Riccardo Schirone" "rschiron@redhat.com" "<20190913071802.GE4936@fedorawork>" "62" "[oss-security] CVE-2019-14822 ibus: missing authorization flaw" nil nil nil "9" "2019091307:18:08" "[oss-security] CVE-2019-14822 ibus: missing authorization flaw" (number mark "U       rschiron@red Sep 13   62/2431  " thread-indent "\"[oss-security] CVE-2019-14822 ibus: missing authorization flaw\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-14822 ibus: missing authorization flaw" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25757 invoked by uid 550); 13 Sep 2019 07:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16123 invoked from network); 13 Sep 2019 07:18:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zkA4sNnUq+w5EFWvJvEDoA6cWCyFODVShKDc4L6ojqQ=;
        b=EPxHfDidhvvysorBev21FGWbIJKxmlp/ir8Y1rfewKBhid20y0gf0Y2l+S/S0hVb+c
         b2K90DnOhisnt0n+1zMGMo+Ax/cQamm/g3pXrQKIRtDL5JVOGK1xd1dApHm6IlCWZCNY
         v3jUiQyai3ManZOH9oJ8iwS2BFTzAQptL46V59GeppL1XFw5I34+PwnbMbZ5haGugdtu
         mQd2V0MblxLDRQ6fVBKYQluBhyOQKrgSEO/imq2WlFQVOimWjRtmFN6shXxuaZzZIsNN
         stACp94TQsY8FhQj5YGausluXIxkuT7YVgZ7e3xSyIAMOTnpPj4g2i41cuY20jtHzp9Y
         LzUA==
X-Gm-Message-State: APjAAAX/YKs0RbOdHYs82maZvu/mFvN41W7W2KJqP3AhSv56wOh0gVyh
	SYxdSg2yjtFpE0UEjDxHEKIjc2V9UUDq5pDvhf49NOdRE5eZF7EPZgHz1kCXUjh7RnCRPKDofWN
	3Lj9tzqkzAn8C5+ki0gvLyUPxo23y
X-Received: by 2002:a05:6000:105:: with SMTP id o5mr10252863wrx.51.1568359090984;
        Fri, 13 Sep 2019 00:18:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUAQxvpm8vNjpOcFFMFBmV0IXsvHIL4TxF3LGN0MLadbB9knnS4QWXDSHtBQNetIGNA4HVMw==
X-Received: by 2002:a05:6000:105:: with SMTP id o5mr10252843wrx.51.1568359090739;
        Fri, 13 Sep 2019 00:18:10 -0700 (PDT)
Date: Fri, 13 Sep 2019 09:18:08 +0200
From: Riccardo Schirone <rschiron@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20190913071802.GE4936@fedorawork>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8/pVXlBMPtxfSuJG"
Content-Disposition: inline
X-PGP-Key: http://keyserv.sr32.net/pks/lookup?op=get&search=0x1E8AB789CF96E110
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: [oss-security] CVE-2019-14822 ibus: missing authorization flaw

--8/pVXlBMPtxfSuJG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A security flaw in ibus was reported by Simon McVittie (Collabora Ltd.). It=
 was
discovered that any unprivileged user could monitor and send method calls t=
o the
ibus bus of another user, due to a misconfiguration during the setup of the=
 DBus
server. CVE-2019-14822 has been assigned to this flaw.

When ibus is in use, a local attacker, who discovers the UNIX socket used by
another user connected on a graphical environment, could use this flaw to
intercept all keystrokes of the victim user or modify input related
configurations through DBus method calls.

ibus uses a GDBusServer with G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONY=
MOUS,
and doesn't set a GDBusAuthObserver, which allows anyone who can connect to=
 its
AF_UNIX socket to authenticate and be authorized to send method calls.

ibus can be manually selected by setting GTK_IM_MODLUE=3Dibus or it could be
automatically selected by graphical environments like Gnome, when input met=
hod
sources (e.g. Korean, Chinese input method sources) are in use. In these
cases, all the key strokes of the victim user are sent to the ibus interface
and they could be intercepted by an attacker.

Upstream fix:
https://github.com/ibus/ibus/commit/3d442dbf936d197aa11ca0a71663c2bc61696151

Thanks,
--=20
Riccardo Schirone
Red Hat -- Product Security
Email: rschiron@redhat.com
PGP-Key ID: CF96E110

--8/pVXlBMPtxfSuJG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE3bt3kyIFawQJu6PaHoq3ic+W4RAFAl17QrAACgkQHoq3ic+W
4RC00w/9FJq16WGskWi2CnCbyqq4sUXa0OkoIQJeK5HmsrbN/TMz2dRI4ZZjU2E5
oq+tYyI1ZxuWxcNM7ynERQouuNOL2RLq4/W/nfsZqPOpT2tOAy8WuutTu2I0rpnZ
ml4GQiR5XDgywST+IvubkNHq00uasdB0RiqnrUPVFIivYL+XPd/clyL1W7TCE4Zp
tfJu10ibB4xkYudHl5iZJf7C2lPaoZaEF8CAV3/6wsA3dRo87RbON4jydm3RsYsM
QvCsch3Z8Shnj++eUOJsM8ygTBgIcfijoZOCtrItA/mru6auUChVCDEO4qumCWTE
BKybOBnTQJHiItN4xCxUHwwOqaKjPS2+1JTY3uz1Sy4ByqnPhilWbxBZgHPtygbj
nFcnwTh3a7MRIKeEtq2162betFPxszWLli6c42o4P8i1IAkHgP4yUE7TLsdOHdpB
k53SXC9wi4mus8bY1CBXq/FGjIU445B73AlBMpcq1B1Xvelcqm+5TXAiIm6jkqzT
u8Vob54piZw11Tqhr7QwezYzN87snLqaWpaYWmun3s8lxTI5tLYTQpVxKowXyo1M
21mTbmaWnZbL1Embbi2uD7QcWWbEhEtlsA4HAuVimA5DUuS3ND3/6EmfZntS/dUX
Lrrg9nOKskm9eZ0kZI+cyuuNIq97cG64gwicqPTzIPXhgp1w2xo=
=s46d
-----END PGP SIGNATURE-----

--8/pVXlBMPtxfSuJG--
