Received: (qmail 9595 invoked by uid 550); 6 Aug 2024 11:27:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17594 invoked from network); 6 Aug 2024 09:02:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1722934946; x=1723539746; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C7oXxTNW3KMpBxa/wAPDnjFtYK8+MmYFQFmHGgcgvkw=;
        b=CdftiWxtpH570SpkqsrsatmypTN95f3/RTXBmC74dQ05v843otkjIf9w//cCgXYj8W
         9mQaKxFKgrv/Kl8dt/qhViw+XUGhtgxEOtunSfZlpaKvGrH+97Fx/2FJ4TBZb3gNKg77
         3rlYWei2vUFxXUBD47a93g6RGZDzOb0nr2LvBTve1pV0mIT8zQwX+CBGKBqpYacv5wTT
         hucpIkZnFXTHiK8OXb814cyUseC23WMgjVJhmh93GP5nIhLEUPleTvzYNzBr+Hxvrx3R
         MwxGMIHtTDGGZAfVj+8rkQWeWQY05QAsowa/rFyPbve4rEvthwcWXQAMgGVFndPxsPeN
         fEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722934946; x=1723539746;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C7oXxTNW3KMpBxa/wAPDnjFtYK8+MmYFQFmHGgcgvkw=;
        b=Rp/zOCXaBFm38mvUoSBkKWqfxkxkwi2QNuOCPbOJBVfY+clHsA/Ohu/oGYHqpT4kTM
         IKG5svRoUqd02ty53IaIOfBE7VlOHJOjCknYOnCBUQclZo9b/S/bmDFxLpFswhhESaw1
         bNWB0hQ0BcsO36895UgDu89HzhZkEge3tbPi0pSs/ES17Fxkz+1q2OuV6gChd0KiEtRH
         IQizL2jiAhLe+ApzRgCIDG4ZVDo9LwajKIDcIouO9qX1RVGrIRrJIiG+ZOFZiDqeRdcF
         MQ9zA2Fla7qTk9JwDlOJBWDG+CmJ5z6REZGdFGk5UIue7fovluJt6FUJ4fBFhZbGtQwc
         tc0w==
X-Gm-Message-State: AOJu0Yx/uTdXCydlDSMHtDKEPUUc5A2edZmFzbTgKdXJ9onUl4FQaTOB
	DdZUQKX9RvOqQtGRcJOaWsCS61pwvnIHHtMczd+Xocf6a1rfOXbEuoodzell5MYy5xYFu4mIEXU
	XRBli687rsJ9rT0J8W1DjKBA+j99juvXsalJtycTZaElewop5v6g=
X-Google-Smtp-Source: AGHT+IHOoh8Eo9xIiRr/SmgINLVyUarKCSTz6I4deJKGXnabCet6es+ZdEfNZdAjH99GdnqjYI/RNITSu4Sq428TdxA=
X-Received: by 2002:a17:907:2d29:b0:a7a:b385:37c8 with SMTP id
 a640c23a62f3a-a7dc4dbaae9mr1067491866b.5.1722934945649; Tue, 06 Aug 2024
 02:02:25 -0700 (PDT)
MIME-Version: 1.0
From: Neil Horman <nhorman@openssl.org>
Date: Tue, 6 Aug 2024 05:02:14 -0400
Message-ID: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000682d21061f000d12"
Subject: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--000000000000682d21061f000d12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Neil Horman <nhorman@openssl.org>
4:19=E2=80=AFAM (42 minutes ago)
to openssl-security

OpenSSL is currently considering the deprecation of the TLS 1.0/1.1
protocols.  Currently TLS1.1 and TLS 1.0 are disabled at run time, and
requires enablement by reducing the ssl security level value.

The current proposal under consideration is to explicitly disable TLS
1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to release
in the next 12-18 months), with an eye to completely remove the impacted
code in a future major release.  The default configuration could be
overridden to re-enable TLS 1.0/1.1 at build time.

Questions to the community are:

1) Are distributions/users comfortable with this approach in the time frame
proposed?

2) Would builders of OpenSSL consider using the default configuration (with
TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
re-enabled in their builds?

3) If the deprecated protocols are re-enabled, what would constitute a
reasonable warning mechanism to inform users that these protocols are going
away at some point in the future to pressure users to update to a newer,
more secure protocol?

Input on these questions is requested and appreciated

--000000000000682d21061f000d12--
