Received: (qmail 6067 invoked by uid 550); 25 Dec 2024 15:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22450 invoked from network); 25 Dec 2024 09:52:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jfrog.com; s=jfrogcom; t=1735120338; x=1735725138; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rojid7zWoFkS74rjtapDn6KStAH3XbsRgUQKl63uvmY=;
        b=Ho7eEE6je9XLdyCUKZGwzXGKdj/EyVe9bUP7wKHL2nwXsNNZoZG1dA68NwwsDW6U02
         IJdSvWOeE+DBiYrePdjrLadM/nHgbKYNjUJRe6ZK4yF+C5RpJJAgjh8hiYcPvQvTxYgt
         CwScI8nu3XhmBXJJkPX68KWmxIjnYykupk8vQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735120338; x=1735725138;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rojid7zWoFkS74rjtapDn6KStAH3XbsRgUQKl63uvmY=;
        b=nwtfwbiZmzaUC5xAVreCKfzkOAXOFpvWmBM2+r801yLOZJhtRBE8abCESbCFMKmJN0
         e/ZIr7OFc21dnkLscJavPtzKJmhL1YxjwYvgtlRl8xaQhaJ5b+vriY9Q8tnG3g0xm9nk
         X0hsfYo6zjLn9m2eBN1pbd2UeqJbSKFbVJPEPdVX7aCRRWsqB3bKcUAtG0707IetUMVs
         rs5pZreyyyelIu1KMiBETgYp/vKPxInIpPMX3XLE0jPRdDaLj8G9oZKtdlUvzd2IJCnf
         L41i279yfGbPZR3yJDobC8HB60PuEKf4mFLwt8CV4yMaLX8IWGD5s3qFsu4cExoQ1QUs
         Vj9w==
X-Gm-Message-State: AOJu0YyBTUAfVauZeouqVM2+FKgPhwCC/qYpa/xlq3EJmIMLvXeUMgS3
	cS+xO5GImVYjaGPlDdRkI/7rCFtMNdYenYs8ksopJEUQTAC16z+GAEPbmBSM0U4lXErFsGJyWkR
	mILOkjcVhyG9DO7TVINgIkB2qiaYgsfZC5aU+hZCp8PVgmsxB2gQ/4Q==
X-Gm-Gg: ASbGncsQt7V+BUxSx44w2yi//E4BIKTDagkmgJAw4mttHPnnVk/afHpLRGGcRoqDCsv
	Gohe5e96PnCjyUctZJTcXgj4UVsqnbrCRBZyRtA==
X-Google-Smtp-Source: AGHT+IFct5fuEw6drEchTUvAByIDEjDQPUHqNgU4AK2PMKa8DoUMUMSwDaNP034342lupzFZwrOft6iwNujDs8fsYUA=
X-Received: by 2002:a17:90a:c2d0:b0:2ea:8aac:6aa9 with SMTP id
 98e67ed59e1d1-2f452e3ed33mr25168016a91.21.1735120338079; Wed, 25 Dec 2024
 01:52:18 -0800 (PST)
MIME-Version: 1.0
From: Yair Mizrahi <yairm@jfrog.com>
Date: Wed, 25 Dec 2024 11:52:06 +0200
Message-ID: <CALXx8ZniT0BHhhVgqZK4z+gsRUuOJGSZJRzFbjfA2BQUdRPmew@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000064fb34062a152f5b"
Subject: [oss-security] CVE-2024-40896 Analysis: libxml2 XXE due to type confusion

--00000000000064fb34062a152f5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

libxml2, CVE-2024-40896, was published recently and given a =E2=80=9CCritic=
al=E2=80=9D
(9.1) severity by CISA. Interestingly - This vulnerability is a regression
of an issue that was identified over a decade ago - CVE-2012-0037, which
was given a =E2=80=9CMedium=E2=80=9D (6.5) severity.

Is the massive increase in CVSS over the exact same issue justified? We
believe that it=E2=80=99s inflated.

CVE-2012-0037 allowed attackers to perform XXE attacks on vulnerable
applications that use Raptor, an RDF parsing and serializing library, which
uses libxml2. XXE attacks may have severe consequences, such as leakage of
arbitrary local files from the victim machine and SSRF.

The vulnerability was fixed in Raptor by parsing XML entities and making
sure they don=E2=80=99t contain file URIs or network URIs. A crucial part o=
f this
patch was letting libxml2 know not to re-parse the XML entities, as that
would have rendered the fix ineffective.

[1] In order to do this, Raptor used the =E2=80=9Cchecked=E2=80=9D field of=
 libxml2=E2=80=99s
`XmlEntity` struct.

```

    /* Mark this entity as having been checked - never do this again */

if(!ret->checked)

  ret->checked =3D 1;

```

[2] Setting this field to 1 would cause libxml2 to ignore this entity and
not parse it, as can be seen in libxml2=E2=80=99s `xmlParseReference()` fun=
ction:

```

if (((ent->checked =3D=3D 0) ||

         ((ent->children =3D=3D NULL) && (ctxt->options & XML_PARSE_NOENT))=
) &&

        ((ent->etype !=3D XML_EXTERNAL_GENERAL_PARSED_ENTITY) ||

         (ctxt->options & (XML_PARSE_NOENT | XML_PARSE_DTDVALID)))) {

=E2=80=A6  // parsing the entity

}

```

The newly discovered CVE-2024-40896 was caused by the removal of the
=E2=80=9Cchecked=E2=80=9D field in the `XmlEntity` struct in libxml2. As me=
ntioned above,
prior to libxml2 version 2.11.0 this field was used by custom SAX handlers
to tell libxml2 that the entity has already been parsed. The Raptor library
used it this way in its patch for CVE-2012-0037.

[3] The =E2=80=9Cchecked=E2=80=9D field was removed in libxml2.11 and its f=
unctionality was
integrated into the =E2=80=9Cflags=E2=80=9D field:

```

if (((ent->flags & XML_ENT_PARSED) =3D=3D 0) &&

        ((ent->etype !=3D XML_EXTERNAL_GENERAL_PARSED_ENTITY) ||

         (ctxt->options & (XML_PARSE_NOENT | XML_PARSE_DTDVALID)))) {

=E2=80=A6  // parsing the entity

}

```

[4] Raptor changed their code accordingly, and made it so =E2=80=9Cchecked=
=E2=80=9D will be
set only if libxml2 supports it:

```

#if LIBXML_VERSION >=3D 20627 && LIBXML_VERSION < 21100

    /* Mark this entity as having been checked - never do this again */

    if(!ret->checked)

      ret->checked =3D 1;

#endif

```

This meant that when Raptor is used with libxml2 version 2.11.0 and above,
libxml2 would parse entities even if Raptor decided they were malicious -
exposing the application to an XXE attack.

Of course, this issue can also expose other applications that relied on
libxml2=E2=80=99s =E2=80=9Cchecked=E2=80=9D flag to XXE.

[5] The fix applied to libxml2 made it so the library wouldn=E2=80=99t parse
entities if their data was already filled (meaning they were already
parsed):

```

if (((ent->flags & XML_ENT_PARSED) =3D=3D 0) && (ent->children !=3D NULL))

        ent->flags |=3D XML_ENT_PARSED;

```

This makes sure that applications which previously relied on the =E2=80=9Cc=
hecked=E2=80=9D
field to avoid XXE would not be vulnerable when the field is removed. Users
who use such applications (e.g. Raptor) are vulnerable and should apply the
libxml2 patch.

[1]
https://github.com/dajobe/raptor/commit/a676f235309a59d4aa78eeffd2574ae5d34=
1fcb0#diff-aaf490494024b45ec35c24eb38180c55019bf35414337d96eb10feca0d099d7e=
R254

[2] https://gitlab.gnome.org/GNOME/libxml2/-/blob/2.10/parser.c#L7175

[3]
https://gitlab.gnome.org/GNOME/libxml2/-/blob/2.11/parser.c?ref_type=3Dhead=
s#L7169

[4]
https://github.com/dajobe/raptor/commit/4dbc4c1da2a033c497d84a1291c46f416a9=
cac51

[5]
https://gitlab.gnome.org/GNOME/libxml2/-/commit/1a8932303969907f6572b1b6aac=
4081c56adb5c6

Credit (Analysis):

Goni Golan, Security Researcher @ JFrog Security

Yair Mizrahi, Security Research Team Lead @ JFrog Security

Credit (CVE):

Xisco Fauli @ The Document Foundation

--00000000000064fb34062a152f5b--
