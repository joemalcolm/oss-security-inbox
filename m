X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1269" "Thursday" "2" "April" "2015" "23:06:43" "-0500" "Jim Thompson" "jim@netgate.com" "<942E0C08-E883-429E-9F27-22715C00B684@netgate.com>" "39" "Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040304:06:43" "[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        jim@netgate. Apr  2   39/1269  " thread-indent "\"Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" "<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1349 invoked by uid 550); 3 Apr 2015 08:39:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21944 invoked from network); 3 Apr 2015 04:06:55 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:cc:content-transfer-encoding:message-id:references
         :to;
        bh=uY1f20CmaJ09ww0i6t0ERKKYocXtICkeKBgu6O0R6Ww=;
        b=PLTH6z2L4iBlv+pSmzOorqOxCNiXyPz5kNsE8nMnYMx/GHFCCmqZPIKilJQ95A5skH
         KSW7EkbGufqdSdCIoRBJg43N3egveRp5/0B67zPkERbY7BYrHpuIbLPGJhbe71HDjzrL
         RzPPKpTR/JyayIzWLJmz3HPCzgVMvkkakwWhqszIwUI6Pq72aWtUXSkIsgpSR+lfYOj+
         fpYDDrlqRqm+KhpzG04FccHMLPKW7/F04aBEgAQ81rKInHFZLZChhLvUdALz3vnwMAHE
         7h663totsouxXZSvakrspmuI9y8HzqY9wZDlzYCqesG27VubfDTMV84wA19A9B8E1SaX
         BxuQ==
X-Gm-Message-State: ALoCoQnkQKB4SdY2m5qhyhnIn89AAHa53w/OYC62nOPqqmVC39SHHjvOxwads6Edwqpc9AOOrwny
X-Received: by 10.182.19.132 with SMTP id f4mr737527obe.8.1428034003659;
        Thu, 02 Apr 2015 21:06:43 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2096\))
In-Reply-To: <CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <942E0C08-E883-429E-9F27-22715C00B684@netgate.com>
References: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com> <CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>
X-Mailer: Apple Mail (2.2096)
Cc: FreeBSD Security Team <secteam@freebsd.org>,
 "freebsd-net@freebsd.org" <net@freebsd.org>,
 ljungmark@modio.se,
 oss-security@lists.openwall.com
Date: Thu, 2 Apr 2015 23:06:43 -0500
From: Jim Thompson <jim@netgate.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages
To: Eitan Adler <lists@eitanadler.com>

have you considered that there might not be a relevant patch because FreeBS=
D=E2=80=99s implementation isn=E2=80=99t affected?

Jim

> On Apr 2, 2015, at 9:15 PM, Eitan Adler <lists@eitanadler.com> wrote:
>=20
> + FreeBSD lists since I haven't seen any relevant patches (although I
> might have missed them).
>=20
> ---------- Forwarded message ----------
> From: D.S. Ljungmark <ljungmark@modio.se>
> Date: 2 April 2015 at 10:19
> Subject: [oss-security] CVE Request : IPv6 Hop limit lowering via RA mess=
ages
> To: oss-security@lists.openwall.com
>=20
>=20
> An unprivileged user on a local network can use IPv6 Neighbour
> Discovery ICMP to broadcast a non-route with a low hop limit, this
> causing machines to lower the hop limit on existing IPv6 routes.
>=20
> Linux Patch: http://www.spinics.net/lists/netdev/msg322361.html
> Redhat bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=3D1203712
>=20
> Projects impacted:  Linux kernel,  NetworkManager, FreeBSD Kernel
>=20
>=20
> Regards,
>  D.S. Ljungmark
>=20
>=20
> --=20
> Eitan Adler
> _______________________________________________
> freebsd-net@freebsd.org mailing list
> http://lists.freebsd.org/mailman/listinfo/freebsd-net
> To unsubscribe, send any mail to "freebsd-net-unsubscribe@freebsd.org"

