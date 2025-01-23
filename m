Received: (qmail 32754 invoked by uid 550); 23 Jan 2025 17:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19643 invoked from network); 23 Jan 2025 17:49:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737654534;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9DI01qEQSZxSj5ftix0M9PYODCEOohmi4yRNswPDu88=;
	b=cZ0EfbSQixz2ngqi8rQrPViJ8ciNueAPSzQe6Au5tasZegp2Zp09r3WT7N2ixNn/mOcxK+
	/LJVHk2G07NJbavq+PxuxhwYCgYcCjh52cV8qgxhVEl1l7flXPSmF3a0yn7DeVMf+Y5F5/
	lLJ7Y9FDPjUjmE+F0WnxZDpTf+xJ2+w=
X-MC-Unique: W0uZWJkNN_qbDcKLmTc-wQ-1
X-Mimecast-MFC-AGG-ID: W0uZWJkNN_qbDcKLmTc-wQ
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737654530; x=1738259330;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9DI01qEQSZxSj5ftix0M9PYODCEOohmi4yRNswPDu88=;
        b=b9N5Zb+Yl98hteP2JQhGjJijMpFZ5tKLQrAEx47O/ypIPnI2pp17FOIZAxRz/FqO2Y
         7IS55krh/48xXIipfp0WfKjJSCXOCdv6tvRbJGyw2sAIcGoyR51n+997BA1H5ezaw5/V
         59wuNskvIyZO87FXH3WBz6HC0kX00cibD7m1c2t/UdiTKDTmur6xxaHRkINmcMlqV0Y1
         yyF1VDJsSdZyisYr68Rc7hSxvzAEnBGGbv8QpIOI9cNH0PcoT/92c3MAzOnJESgh1HEo
         QrP/uFrQR7O6Kf0E67BbOATBaH4I1nMl/xhZFVzJmRu9/5g948ZZOGv/0IJxSn5bCVYI
         k9dQ==
X-Gm-Message-State: AOJu0Ywag3RaZkbvFbz14u4Pu1iWdf03wrIm/64lDxcZqukqOVYLldN2
	QlnTyPgcSt8Fa+H0tvbsPY29Rju3AZvjfU3lxuFzXzftdIBxg3+2a4Q1ur7t4BwSRQqJbEcWGxn
	eQ54Ml3stt+9D3Jg2bavPm/Y7pyg+ZrfG7Jp7UxDOgJQrr+7Ednkb6qWpSsDTjjMbB+rYiRpwIF
	9LSoL5wa/0PmoZ1fbETgPl8QxZFYFAOvjFqlcaEAbstvwTNJY5
X-Gm-Gg: ASbGncs5qztntArxahIAon4qWNr7WYhFw+YMpSFKHb4JukmY9mSfU8diSJ+Hl6eN71d
	/cDwlSiHiEs0rj6oXEQQz+anlA7dR6MuET3z6wf169fqtYVn7mi6G
X-Received: by 2002:a05:6871:6287:b0:29e:4340:b1b with SMTP id 586e51a60fabf-2b1c0a6a928mr15442165fac.9.1737654530719;
        Thu, 23 Jan 2025 09:48:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXkWLes26qt+l8VxFz4r/Wi6lmD/Ihqqu2p8gEnzdfzrgFSqXqwbEKIM8LpX7eUybfkCf3Ol9VvzyAyH7CF3s=
X-Received: by 2002:a05:6871:6287:b0:29e:4340:b1b with SMTP id
 586e51a60fabf-2b1c0a6a928mr15442155fac.9.1737654530285; Thu, 23 Jan 2025
 09:48:50 -0800 (PST)
MIME-Version: 1.0
References: <Z5DF00lM-3Q36mhh@kasco.suse.de> <Z5I8r_p6IC8A2ttG@kasco.suse.de>
In-Reply-To: <Z5I8r_p6IC8A2ttG@kasco.suse.de>
From: Pete Allor <pallor@redhat.com>
Date: Thu, 23 Jan 2025 12:48:39 -0500
X-Gm-Features: AbW1kvbHSkuHenwKO7vKxPRgMIzZ7ZEGNWwBZqruL2klgrh5snHygMGKalMjPWc
Message-ID: <CAEFCzXUSfA3MdvcNHg88dfZZEGLujZG+EG8s9ydA=AWGYDzcqg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: b8as4XMikqwRkrcLVrTrynBwxl8I7zFPxU-OcrUQdUI_1737654531
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000053207062c633976"
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

--000000000000053207062c633976
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A little comment on the inside helps.   Glad to do so.


On Thu, Jan 23, 2025 at 7:57=E2=80=AFAM Matthias Gerstner <mgerstner@suse.d=
e> wrote:

> Hi list,
>
> thank you all for your input so far.
>
> It seems this thread somehow reached Mitre and my stuck CVE request got
> a CVE assignment by now. The reply also contains some additional
> information which I believe will be interesting to share in this thread
> as well:
>
> > On Thu, Jan 23, 2025 at 01:14:13AM -0500, cve-request@mitre.org wrote:
> >
> > If you encounter unexpected behavior with CVE ID requests (e.g., one
> > answered and another not answered), then please report this as a
> > separate issue by using:
> >
> >    https://cveform.mitre.org
> >
> >    Request type:  Other
> >    Type of comment:  Issue
> >
> > "Request type: Other" items are read every day.
>
> Additionally Mitre expressed that they are working on improvements to
> prevent such situations in the future.
>
> Best Regards
>
> Matthias
>
> --
> Matthias Gerstner <matthias.gerstner@suse.de>
> Security Engineer
> https://www.suse.com/security
> GPG Key ID: 0x14C405C971923553
>
> SUSE Software Solutions Germany GmbH
> HRB 36809, AG N=C3=BCrnberg
> Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich
>

--000000000000053207062c633976--

