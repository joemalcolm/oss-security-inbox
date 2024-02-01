Received: (qmail 5843 invoked by uid 550); 1 Feb 2024 11:28:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5813 invoked from network); 1 Feb 2024 11:28:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1706787062; bh=juhEYpgLctqNX8Kc+wmPfjau1c28uvaJBgwQWy+SNTM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=o2yBQUZns5E9HAFup7J4NnxiIgGE6jW6uSED/SqziXczqbaOevjdRkJl+gA0tgfu5
	 UBpUj/XkeN7It/MSMMuxL1O/ANjSl4No2gp04nZn+4JnUL/zqL6SJVAK5wVsxDuEKo
	 +ziIWSqyBx/Rx7hj3nN4jSr1Gqw5uj0ZxsdAH8rbxwEKxRpFTbw0uT3cxglGoMkDtd
	 wvz/Qj8/HrvDiwVzqExw3dtFsjCPV+IyoVpfZo+/9T7Yvnjo1czydxSgKEirb+cXSi
	 qvaXMzHzhsIMXMgAIkYxhOyZ7wqefO8ttXstcup3JxQAG5PjUqG98WRJPYlJ+sfj6n
	 R9SbKygW3hLsg==
Original-Subject: Python standard library defaults to insecure TLS for mail protocols
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Thu, 1 Feb 2024 12:31:00 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20240201123100.42ba1334.hanno@hboeck.de>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Python standard library defaults to insecure TLS for mail protocols

Hello,

By default, the mail protocol functions in Python's standard library do
not validate certificates for TLS connections. The API is surprising
and unintuitive. This is not a new issue, but I was surprised to learn
about it. Therefore, I'm sharing it here so more people know.

Python provides functionality for the standard email protocols in its
standard library. One can create a connection to an IMAP host like this:
c =3D imaplib.IMAP4_SSL(host=3D"example.com")

Similar functions exist for pop3 and smtp. This code is insecure and
vulnerable to man-in-the-middle attacks, as certificates are not
checked.

The secure version looks like this:
c =3D imaplib.IMAP4_SSL(host=3D"example.com",
ssl_context=3Dssl.create_default_context())
(The parameter is sometimes called "ssl_context" and sometimes
"context", depending on the protocol.)

In my view this is not just an insecure default, but also very
counterintuitive.  Nothing about
"ssl_context=3Dssl.create_default_context()" implies that this is about
certificate checking. Furthermore, it is surprising and
counterintuitive that you need a "default context" to enable something
and that the "default context" is not the default.

This is documented behavior [1].

There exists a discussion in the Python issue tracker [2] since April
2022. According to that, the same issue exists for NNTP and FTP
functionality. It was discussed to change the default, but it hasn't
happened yet.

Python already had a previous discussion about enabling certificate
validation by default in the standard library, but it was only done for
HTTPS connections [3]. The PEP document says that this should be
reviewed in the future for other protocols.

The company Pentagrid has reached out to a large number of open source
projects impacted by this, and wrote a blogpost [4].

Also relevant is RFC 8314, which contains guidelines for TLS
connections in email protocols [5]. ("MUAs MUST validate TLS server
certificates [...]") It targets client software, but I believe it is
reasonable to apply the same standards to client APIs.


[1] https://docs.python.org/3/library/ssl.html#ssl-security
[2] https://github.com/python/cpython/issues/91826
[3] https://peps.python.org/pep-0476/
[4]
https://www.pentagrid.ch/en/blog/python-mail-libraries-certificate-verifica=
tion/
[5] https://datatracker.ietf.org/doc/html/rfc8314

--=20
Hanno B=C3=B6ck
https://hboeck.de/
