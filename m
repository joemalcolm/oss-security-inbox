Received: (qmail 18307 invoked by uid 550); 1 Feb 2024 23:27:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18286 invoked from network); 1 Feb 2024 23:27:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706830191; x=1707434991; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vcz7rPB8+NxbP3UeUfYKvZjtQ92Y3EZXdwHrWqSbESs=;
        b=hridlAyMPo/83aSt0V5nWz/EyL9/XTRB+6T2h7YZiiS4XSYaWRYuY3lU/P6aftXWKZ
         HRWPfcFqoVNMNNbd7G9kD5GEM65s4UG1ayU6SuFdcvxDb0rAoCcChDv/LYz/ygJBpazf
         DCZ3O2JagMD8SjyLOFoDhzRapSwZIQ7g/kQWnwOniOk9gDWzBAwADj9T6qDiRk1EsdCg
         +GCEuFUbuS0RE7EveOsQNqOeyd4Q3VckkMCtPVK4I14cEBSUlci3Ld3TYQjLLLxR2TvA
         oY83nNIkW4m4QMykmOIl00Jy8TMuk3M1IiIRjYLJ4JIuNCvg5SUesGrNprodTH538zSb
         oHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706830191; x=1707434991;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vcz7rPB8+NxbP3UeUfYKvZjtQ92Y3EZXdwHrWqSbESs=;
        b=fGAMz9fMNJC1T3/00Eu2wFS5F7MIkEk03GrgJSR49KsZvMNFTWGve3VyGV27RcQtTk
         a34WdhJdZHM74TwekLojJWaPdaaUXVQYTamzc4bWNDo45Uwc9euKc5tA/thUmSvmHLWx
         gzq1QlJA7bhRsAiUee54u3c2ZPyjtVizMhAHpI7EGb5U0g0Y5xAt/v4/txKu4clabdV1
         /KO5jVKtthpBQXyCmEx1hFIkRU/WHTobwY9t4RzTWslOeQudrMyyKs9DkP652g4Yk4XB
         OnEC28re/lu5WJmlFSIXe72vYQM7qPtsfZvW6Rxa5emkJDQxgL4PDOS93B+05dQ0tLxg
         7aJg==
X-Gm-Message-State: AOJu0Yw0adlnjz4bwVm2IlgDy0vh0g3+pUX2mKD8NiH06YF293thfu46
	+cx8rnQbApP95gv76kkxiPQmlIPMH54YRDel1O0os+uruqF53Y1+z+syuVb6rZmNoy8K5jUdyB2
	2Vrz/s/d65H2YDDDOrfiuQJqX8d2ConCzk64=
X-Google-Smtp-Source: AGHT+IHF56/4GzzeqyQiXUQx5sggye1CJP3ovXvxWKQh55B9jTVMHlu0KXWWJH8KM4mZityO743Y1e0jhvr4cn96F34=
X-Received: by 2002:a25:8185:0:b0:dc2:4c31:774a with SMTP id
 p5-20020a258185000000b00dc24c31774amr606447ybk.49.1706830190645; Thu, 01 Feb
 2024 15:29:50 -0800 (PST)
MIME-Version: 1.0
References: <20240201123100.42ba1334.hanno@hboeck.de>
In-Reply-To: <20240201123100.42ba1334.hanno@hboeck.de>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Thu, 1 Feb 2024 18:29:39 -0500
Message-ID: <CAFRnB2UBm6VXnK3te6NaZ6AQWHjYWe8XSWdWN3CD6TWyYzfUZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Python standard library defaults to insecure TLS
 for mail protocols

I'm the original author of PEP 476, which made certificate
verification on by default for TLS. In 2014 I scoped it to HTTPS-only
to minimize the risk of breakages, and ensure we could get the PEP
approved and implemented (particularly given it was going to be
enabled by default on Python 2.7, without a major version bump). It
was never intended to be the final destination for cert verification.

I think it'd be reasonable to start a discussion on the Python
discourse about moving forward with fixing SMTP as well:
https://discuss.python.org/

Alex

On Thu, Feb 1, 2024 at 6:32=E2=80=AFAM Hanno B=C3=B6ck <hanno@hboeck.de> wr=
ote:
>
> Hello,
>
> By default, the mail protocol functions in Python's standard library do
> not validate certificates for TLS connections. The API is surprising
> and unintuitive. This is not a new issue, but I was surprised to learn
> about it. Therefore, I'm sharing it here so more people know.
>
> Python provides functionality for the standard email protocols in its
> standard library. One can create a connection to an IMAP host like this:
> c =3D imaplib.IMAP4_SSL(host=3D"example.com")
>
> Similar functions exist for pop3 and smtp. This code is insecure and
> vulnerable to man-in-the-middle attacks, as certificates are not
> checked.
>
> The secure version looks like this:
> c =3D imaplib.IMAP4_SSL(host=3D"example.com",
> ssl_context=3Dssl.create_default_context())
> (The parameter is sometimes called "ssl_context" and sometimes
> "context", depending on the protocol.)
>
> In my view this is not just an insecure default, but also very
> counterintuitive.  Nothing about
> "ssl_context=3Dssl.create_default_context()" implies that this is about
> certificate checking. Furthermore, it is surprising and
> counterintuitive that you need a "default context" to enable something
> and that the "default context" is not the default.
>
> This is documented behavior [1].
>
> There exists a discussion in the Python issue tracker [2] since April
> 2022. According to that, the same issue exists for NNTP and FTP
> functionality. It was discussed to change the default, but it hasn't
> happened yet.
>
> Python already had a previous discussion about enabling certificate
> validation by default in the standard library, but it was only done for
> HTTPS connections [3]. The PEP document says that this should be
> reviewed in the future for other protocols.
>
> The company Pentagrid has reached out to a large number of open source
> projects impacted by this, and wrote a blogpost [4].
>
> Also relevant is RFC 8314, which contains guidelines for TLS
> connections in email protocols [5]. ("MUAs MUST validate TLS server
> certificates [...]") It targets client software, but I believe it is
> reasonable to apply the same standards to client APIs.
>
>
> [1] https://docs.python.org/3/library/ssl.html#ssl-security
> [2] https://github.com/python/cpython/issues/91826
> [3] https://peps.python.org/pep-0476/
> [4]
> https://www.pentagrid.ch/en/blog/python-mail-libraries-certificate-verifi=
cation/
> [5] https://datatracker.ietf.org/doc/html/rfc8314
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/



--=20
All that is necessary for evil to succeed is for good people to do nothing.
