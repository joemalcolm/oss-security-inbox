X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Friday" "5" "June" "2015" "12:04:11" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150605100411.GA6837@kronk.local>" "51" "[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution" nil nil nil "6" "2015060510:04:11" "[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution" (number mark "        alessandro@g Jun  5   51/1962  " thread-indent "\"[oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code execution\"\n") "<20150604215609.811EC42E102@smtpvbsrv1.mitre.org>" ("<20150604134618.GA1613@kronk.local>" "<20150604215609.811EC42E102@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9857 invoked by uid 550); 5 Jun 2015 10:04:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9816 invoked from network); 5 Jun 2015 10:04:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=pTEJxvO1zMcG0Y8uNvNu1voqSy6jotmAKjM29HLdpMk=;
        b=EuwjRONnpwU+mAdPz6dVglL7ZoRtK+71BUpjBs2FSF6xpN0asxoJ8TRVeTBKDbHsbe
         mafQ75yMZW2JKs0sn7sRTLRL/P8p2gOxkvAElgmLyG6tIPwJ4zqmuupnOhMfH/dUolUn
         A+IsGU/Km/oDOpLykx8AIzH1hyksWUYlcYNHDzTOCLeWShaHtD6vImMgeeaO4C7XhPOB
         SqtNWofHPJCLyBOg41LdE3G9l1a+vwr0fgO6HhvjJ4c137JrXUJq97WJVjtcQ2pl1pEh
         HsrIrf5XUJm7ha0qKj5HVhvZUGgS3TfFOdiB66Sd0oQPJDs8zdSRjK+ZFiNc9UCbwWQN
         zn9w==
X-Received: by 10.194.5.74 with SMTP id q10mr3832217wjq.27.1433498652808;
        Fri, 05 Jun 2015 03:04:12 -0700 (PDT)
Message-ID: <20150605100411.GA6837@kronk.local>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <20150604134618.GA1613@kronk.local>
 <20150604215609.811EC42E102@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline
In-Reply-To: <20150604215609.811EC42E102@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Fri, 5 Jun 2015 12:04:11 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: redis Lua sandbox escape and arbitrary code
 execution
To: cve-assign@mitre.org

--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2015 at 05:56:09PM -0400, cve-assign@mitre.org wrote:
> > redis 3.0.2 and 2.8.21 have been released
>=20
> > https://groups.google.com/forum/#!msg/redis-db/4Y6OqK8gEyk/Dg-5cejl-eUJ
> > http://benmmurphy.github.io/blog/2015/06/04/redis-eval-lua-sandbox-esca=
pe/
> > https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6e=
a21e25411
>=20
> The Ben Murphy advisory has a long discussion of many software and
> deployment issues. Do you have a specific viewpoint about what the CVE
> ID should be for? In particular, is the essence of the request that
> the Redis upstream vendor believes that loading Lua bytecode was, by
> itself, inherently an implementation mistake in Redis, and is now
> fixed by the
> https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6ea2=
1e25411
> change?

Yes, that was the idea.

Cheers

--/9DWx/yDrRhgMJTb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVcXQYAAoJEK+lG9bN5XPLzSQP/R5xIqAq0JhrjyZCmBvsoAnC
MEMQjZc4wpnhNmQiVq6wWumZXp7IZmDP5PsfeffBU76/6/KKBHdb6i8waQR2UYcx
hhXsl3P1Hw7RIqk54Chamjj6NHDO9OZZmW8RUs5ZGOqNP0QHVUq3/tE0XIrVtmEQ
3wlGQv2x3GmLNw8kakze3RukdObQ6wS053UfhAUfW3XYPDocqB7PKeLtPeXwS/v6
zJemscCWkDzb4R6quSeKkiOAxw6N9BBg6JsXPPu8bwUhos4AN3TdtGEAdqTPto9v
eFN8WZLHU9ecnSTVq2d/rSDtOzrSX9dTbcKiJK5betaLeyr3lIov16dLB92QRoZR
kvhlx4a50c6eXVu3YOqunl3kIUf7t7prg3WN0CJ0gS/TQ9WfGlkw2R54AlXPkMUP
C4/UIif4gc5z8ML4ZsiMPev9tQMUfIx51UmdDe6QX9TU4IIhDahmySuEaHPCvimG
h5Go9+IypJOaq3mANniAmEeM9vlG0wdwWnVfIweIfISfLdS0jhdqFQ8bpmQ40S9I
hymAdPu6s/hbNRA4AwWyalnUM9LOqYtQ6bMGLVZa58q1gkih6+x1Nmrri9Tgy0et
psG9uAoi27PDrGOHKFaRHkZY1pDk/NbVhKrOmX4FAFb8ZEaE0n4Py+J8brgS8D1U
cfOVZLPv3aAEELGsV1ci
=61bz
-----END PGP SIGNATURE-----

--/9DWx/yDrRhgMJTb--
