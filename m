Received: (qmail 30438 invoked by uid 550); 27 Feb 2026 19:39:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30407 invoked from network); 27 Feb 2026 19:39:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772221148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=trh/aaTUj7FUnxc6ysdFD6OYltAf6/XLgUFDpbHDUps=;
	b=Xou8w+VMvVqHurKROvWfpflmcBpeeqzeVUllBz/4NuA4vv7KfGyVPZ3jrUWq9pNZDtIl44
	MO5J6L0qUyXxRNtzVf8+dKxJMYcHTbBsD1WGKYyuz9WD1Ux9+x+c0XSHS+cOGcbCdBSb8F
	FmkfT1EhVFM7cSJA6Y3VQkKan+2CEhg=
X-MC-Unique: XoIlCpcgOFSIv1yoaaf3VA-1
X-Mimecast-MFC-AGG-ID: XoIlCpcgOFSIv1yoaaf3VA_1772221145
From: Florian Weimer <fweimer@redhat.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <a671aebf-fc45-4d06-a1dd-5ed6664aaa3c@oracle.com> (Alan
	Coopersmith's message of "Fri, 27 Feb 2026 10:38:40 -0800")
References: <a671aebf-fc45-4d06-a1dd-5ed6664aaa3c@oracle.com>
Date: Fri, 27 Feb 2026 20:39:01 +0100
Message-ID: <lhu1pi6c6y2.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wVzwMxL_7S7wxrfIIKS2iaJ2_qPjs6H6-3Gj6K6YBDw_1772221145
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] OSEC-2026-01 in the OCaml runtime: Buffer
 Over-Read in OCaml Marshal Deserialization

* Alan Coopersmith:

> https://sympa.inria.fr/sympa/arc/ocsf-ocaml-security-announcements/2026-0=
2/msg00000.html
> announces:
>> From: Hannes Mehnert <hannes@mehnert.org>
>> To: ocsf-ocaml-security-announcements@inria.fr
>> Subject: [ocsf-ocaml-security-announcements] OSEC-2026-01 in the OCaml r=
untime: Buffer Over-Read in OCaml Marshal Deserialization
>> Date: Tue, 17 Feb 2026 15:16:54 +0100
>> Dear everyone,
>> it is my pleasure to announce the first security announcement of
>> this year,
>> and the first on this mailing list.
>> It should any moment now also appear at
>> https://osv.dev/list?q=3DOSEC-2026-01
>> Human link:
>> https://github.com/ocaml/security-advisories/tree/main/advisories/2026/O=
SEC-2026-01.md

Surprised to read this.  I think this comment from 2018 is still
appropriate:

| Marshal should not used in contexts where an attacker can control the
| data. I don't believe it is, at least in any project I'm aware of, and
| if it were, it's unlikely that those project perform enough check on
| the result of Marshal to make the use safe anyway.

<https://github.com/ocaml/ocaml/issues/7765#issuecomment-473076288>

The demarshaller does not have access to type information from the
program, so it has the ability to construct an arbitrary object graph.

The manual has a formatting glitch which hides the last sentence quoted
below:

| Warning: marshaling is currently not type-safe. The type of marshaled
| data is not transmitted along the value of the data, making it
| impossible to check that the data read back possesses the type
| expected by the context. In particular, the result type of the
| Marshal.from_* functions is given as 'a, but this is misleading: the
| returned OCaml value does not possess type 'a for all 'a; it has one,
| unique type which cannot be determined at compile-time. The programmer
| should explicitly give the expected type of the returned value, using
| the following syntax:
|
|    (Marshal.from_channel chan : type)
|
| Anything can happen at run-time if the object in the file does not
| belong to the given type.

<https://ocaml.org/manual/5.4/api/Marshal.html>

And the party supplying the serialized blob can chose whether the type
matches.  So the inherent insecurity of unmarshalling (=E2=80=9CAnything can
happen=E2=80=9D) is actually documented, just not very clearly.

Maybe time to send a PR.

Thanks,
Florian

