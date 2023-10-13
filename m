Received: (qmail 26344 invoked by uid 550); 13 Oct 2023 18:27:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23679 invoked from network); 13 Oct 2023 18:23:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697221427; x=1697826227; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y8RvIP6sEzuZYpLLK2nEXTmMSGlCeOYOT5d00EUBnAk=;
        b=kT9PJ+A/snC9xQ3oWermETyvyybfF2aBEzgQRrdWhHvqOVLkk3xQyMi4/C6UhtPYWr
         T2wVnEMXs/QUP/n41dfQTBsieUrqnximxji5Rv1smEkn2gqTeqQMfQY9NnrUYnOMrj9L
         rhcRgSwfg+jPmqSt1t6qdLXVudFd+ckRf6tyHMrotLQsgxOg+Gst68ZRXImfjfMCo2ja
         OQBkmhOrAOAqIycmckMkuD8Q+rAuQmcK9caiJjce8S00fXvfdgoV1XEPXfmfnNVfySc6
         s+Y13a0r866CZ6qajMkAkIW6lxtPpHpf/IUc/FIqS+s6ggl2N415Vi9GvSqA/pB9OSwB
         hU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697221427; x=1697826227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y8RvIP6sEzuZYpLLK2nEXTmMSGlCeOYOT5d00EUBnAk=;
        b=KtUWsXMtPw7Aen0m3543DkxfJJnA1iCmsKOOz8abD3FWVAFr2kUo8QhFMHk1V4b73j
         XO1Q4SO4hTQ67DRZyGR/zp2+u1TI3C3zWoLlKGW7ffN5Q4h5DbeimDTjmwCHH6pkBZbX
         chzA095SK+tkErEoJmRvH47smIGjIMvyMBpAayUn6eTKq1Dw3T8pDKRXDy4+WBDfDtc8
         kkPxRzCQ5Fe/MxmvMYOy/33qTbH97dcK5wocQPM1Dk+nHyYNpIZmrC0t+I5x51wadiyB
         kxud0TqtLGqLO9LLflvhfJ0pfY07ccCcPnHNxVHR9bsitogBL3cdXPQt2DkMhzSd6I2c
         zEgw==
X-Gm-Message-State: AOJu0YyAsUKIz/S4669ZBVY0BeUdTq5splrkVn+/OTAlhdHDZaoOxqfy
	sQW+Ln2AhPIwukD4QSmh+BzgTQO6hjOB0kYYf1ZvHCsT0KdnXw==
X-Google-Smtp-Source: AGHT+IGjN0QBdqu+nM7i5ZXUyUDfjOSxQWf3A5bbDX23KrlevXViW1LFaUdSr151t2+hHSzw9fv3yrgPZ6xHnPj9yLI=
X-Received: by 2002:a1f:c7c5:0:b0:4a1:a334:57f0 with SMTP id
 x188-20020a1fc7c5000000b004a1a33457f0mr9429700vkf.3.1697221427598; Fri, 13
 Oct 2023 11:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <CA+17n5uwjXBDzGGpepNtQSOFQaifnuyodd2EUQxEcCOLH+UUuw@mail.gmail.com>
 <fc7f78ee-8322-4d6b-b07b-923954016c05@treenet.co.nz>
In-Reply-To: <fc7f78ee-8322-4d6b-b07b-923954016c05@treenet.co.nz>
From: Joshua Rogers <megamansec@gmail.com>
Date: Fri, 13 Oct 2023 20:23:36 +0200
Message-ID: <CA+17n5sRt+SzQv+3-W0JugU4S3VV-C7n6a26D4PdQoOciuwwiQ@mail.gmail.com>
To: Amos Jeffries <squid3@treenet.co.nz>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004c29c306079d28e2"
Subject: Re: [oss-security] Squid Caching Proxy Security Audit: 55
 Vulnerabilities, 35 0days.

--0000000000004c29c306079d28e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Amos, oss-security,

I've added GHSA-543m-w2m2-g255 and CVE-2021-46784 for 'Cache Poisoning by
Large Stored Response Headers (With Bonus XSS)' and 'Assertion in Gopher
Response Handling' respectively: GHSA-543m-w2m2-g255 and CVE-2021-46784

However, for "Gopher Assertion Crash", GHSA-f5cp-6rh3-284w does not apply.
"Gopher Assertion Crash" concerns an assertion "assertion failed:
store.cc:832: "store_status =3D=3D STORE_PENDING"" while GHSA-f5cp-6rh3-284w
concerns an assertion: "assertion failed: String.cc:172: "canGrowBy(len)""

To the best of my knowledge the former (without a current GHSA or CVE) is
unfixed.

Cheers,
Josh

On Fri, Oct 13, 2023 at 3:54=E2=80=AFAM Amos Jeffries <squid3@treenet.co.nz=
> wrote:

> Some reference updates.
>
>
> On 11/10/23 20:55, Joshua Rogers wrote:
> >
> > The issues are listed below. Due to the sheer size of issues discovered,
> > technical details are not included in this email. However, breakdowns of
> > the code and proof-of-concepts can be found on GitHub:
> > https://megamansec.github.io/Squid-Security-Audit/
> >
>
> > Cache Poisoning by Large Stored Response Headers (With Bonus XSS)
>
>   ... GHSA-543m-w2m2-g255
>
> > Gopher Assertion Crash
>
>   ... GHSA-f5cp-6rh3-284w
>
> > Assertion in Gopher Response Handling
>
>   ... CVE-2021-46784 / GHSA-f5cp-6rh3-284w
>
>
>
> AYJ
>

--0000000000004c29c306079d28e2--
