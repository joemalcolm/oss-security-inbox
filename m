Received: (qmail 18176 invoked by uid 550); 29 Oct 2024 16:40:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7822 invoked from network); 29 Oct 2024 16:36:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1730219753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Vh7qP3TBVGqjn6OeBhqrvw5KMV0o+aFVQMy//gjNStc=;
	b=PB1z5otROMbw7e0QUn27TI7B/GtS1CdDC+3dg59qlxfY0o+pAVy0BaVPGgEPT23Y7o8EDl
	CArKp3kTtJHfzXaHLbTSu9HRW5XkPY22xXb4gxgxS5+ZMtDTIf9noJ1TbKMN1TETWSLEXO
	hfZQsCtFphXvz1r6KvFut8uxQx5zxJk=
X-MC-Unique: eB6rYCtoOVGEJNwvDfdykw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730219751; x=1730824551;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vh7qP3TBVGqjn6OeBhqrvw5KMV0o+aFVQMy//gjNStc=;
        b=ZQpx0jWW2BhIf2isDU87EPDhEmpRHdCeIpKVtma5LDQ2z6YqBPBpAVSExFyKLJEsFL
         dYvkwk6EDc9SudohxllnKXFfhlSWzgBBoXSCCCsIM8yAEYWlAozRqz7ZknafxZy7mfJk
         CrAAomSkegWPl3k4+SLuk6bK/5JZQ9qvtGTvyYXa8G1yOcWLLn9quU3N1MaGTeFDwLqc
         +9lhhiq3JD5kjipTXrkusGa9sgrjSlV0KRRLhpbVIqngjKCCCNmRynNw3MqJMUcUQ0oP
         YjCQht5KLrbvqZd6tIm002M0jYXWbAXDF4UqeWueAz8xyWJyZD/KMdNIrstSmgVcFvRl
         R6bQ==
X-Gm-Message-State: AOJu0Yw/vp//EezxUfPHytSSXyA65YsIumTab1/oHIrNcDk0UZL96RJt
	3wlx2kmopXjipsj3XSZjah66THb65clqZKPCPk7IloG4Qcq0iq0EE2TWKg3M0SzrCBGE/b3K1ET
	ki8MeuKG/xOhmgi15u512XMVEjquq8UhFp9cpYAUOZRIdybAPv85nqQevXxuSMwcbXk4K5y3DNP
	rGM15cYqvcRljhknrUgMswBpvxnE2pQBxWVhqCEo6HmovxMCjr
X-Received: by 2002:a17:907:3d89:b0:a99:4112:5e6e with SMTP id a640c23a62f3a-a9e2acdf7f6mr253380666b.3.1730219750766;
        Tue, 29 Oct 2024 09:35:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxHbvTpTPPKNYkwbgEJKBgrMLpRq/0PsMh0G95o7X9MxBG+xsQsCX9j68nDdWk3HWPugMBTUMfrw4iXdRGvn4=
X-Received: by 2002:a17:907:3d89:b0:a99:4112:5e6e with SMTP id
 a640c23a62f3a-a9e2acdf7f6mr253371566b.3.1730219749137; Tue, 29 Oct 2024
 09:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAFkFYGj1uT7Z7yYC8ppLeMXrj9phpa=75G32PPVhJ2qXk0Lgzw@mail.gmail.com>
In-Reply-To: <CAFkFYGj1uT7Z7yYC8ppLeMXrj9phpa=75G32PPVhJ2qXk0Lgzw@mail.gmail.com>
From: Jose Exposito Quintana <jexposit@redhat.com>
Date: Tue, 29 Oct 2024 17:35:38 +0100
Message-ID: <CAFkFYGhoZ8aYfL-7SP9M39vXd-g_KHoAF1gy8vQ_C+7s=9PtUg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000088023d0625a02dad"
Subject: [oss-security] CVE-2024-9632: X.Org X server and Xwayland: Heap-based buffer overflow privilege escalation in _XkbSetCompatMap

--00000000000088023d0625a02dad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Jose Exposito Quintana <jexposit@redhat.com>
Date: Tue, Oct 29, 2024 at 5:16=E2=80=AFPM
Subject: X.Org Security Advisory: Issues in X.Org X server prior to 21.1.14
and Xwayland prior to 24.1.4
To: <xorg-announce@lists.x.org>, <xorg@lists.x.org>


X.Org Security Advisory: October 29, 2024

Issues in X.Org X server prior to 21.1.14 and Xwayland prior to 24.1.4
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An issue has been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.14 and xwayland-24.1.4.

1) CVE-2024-9632 can be triggered by providing a modified bitmap to the
X.Org server.

------------------------------------------------------------------------

1) CVE-2024-9632: Heap-based buffer overflow privilege escalation in
_XkbSetCompatMap

Introduced in: xorg-server-1.1.1 (2006)
Fixed in: xorg-server-21.1.14 and xwayland-24.1.4
Fix:
https://gitlab.freedesktop.org/xorg/xserver/-/commit/85b776571487f52e756f68=
a069c768757369bfe3
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The _XkbSetCompatMap() function attempts to resize the `sym_interpret`
buffer.

However, It didn't update its size properly. It updated `num_si` only,
without updating `size_si`.

This may lead to local privilege escalation if the server is run as root
or remote code execution (e.g. x11 over ssh).

xorg-server-21.1.14 and xwayland-24.1.4 have been patched to fix this issue.

------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

--00000000000088023d0625a02dad--

