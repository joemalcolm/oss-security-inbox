Received: (qmail 1269 invoked by uid 550); 3 Oct 2023 19:30:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31946 invoked from network); 3 Oct 2023 19:27:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696361216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vy5wHuB9s10T03Td1/Yo2/f0aMWTCx4UNWUbTV8Hqcw=;
	b=V5Ob0KHiGlHFC96lu8ecyCXEm/XliGyKo8ARtv3jt8KRrTbftSabpc7Zs8gcr6X47SwAZL
	O7ALu5m0foV4lZXG5HZxB+cHF1filnF/5gqKmn6R4R0so0Vh01jzo2YsFtPmKeCXxC8SbC
	4JIHDXFiftf+9U0iSsCzy7wsIpxXAms=
X-MC-Unique: SNwRB1N4NaWuWMEMjDjv6Q-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696361213; x=1696966013;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vy5wHuB9s10T03Td1/Yo2/f0aMWTCx4UNWUbTV8Hqcw=;
        b=icF07ZAm3lDWe1Ip7JNZFqXSZuAJ7D505CjQH3+q2pC0UNf+6ug0lDLJJ7hQZeQKwU
         pUIMFj+0PPApR92/GeHCthpFFmtGWlAmINDcOCjCu1lRWLn4zsPRMAtHiFxhF2H8+wdW
         Yr32LnacapDJn9+li2W1ulxfX6SI16gKeVoSpvLRa4BT0UeF1sRE7JK+sN+L/kzfdKlx
         7VAWSLfk5HCaldsidEDlWtHadV5ghzMQmC3DmKlxS2ItJMAQB4pRbTrOSKkDAIzvVrIF
         gBy69AemzBB8Z/S7VBHeb42FwGfzaJVXHeRqq1aMSQf3xZB+4iU+7gaoOduhTaQjORkT
         +WGw==
X-Gm-Message-State: AOJu0YyBX+20VA1uZmv5pQl6elBiZ43nJAyA2Ycy/c9/Z1H8g55/1R1q
	1YfKjtWqEON7sW+5gEvO+BRqWGKNre9qbgM3C1QrbUWsWQBQywLtvWQjVQNXzYBjkLkFfJVPoI2
	cGlHTZwIUjAxe0uU76/rmiolJXCBkibiqvJ9rRU/tHxA+C0Ds2mT7
X-Received: by 2002:a17:906:76d6:b0:9ae:6a8b:f8bb with SMTP id q22-20020a17090676d600b009ae6a8bf8bbmr126987ejn.6.1696361213791;
        Tue, 03 Oct 2023 12:26:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGO2RfLRGLFqzaE2KgELhdlfpmEzOt55HWz+60rAzB1a3DZN0fwfzkimK1yjVNAXKj5FpWs+2Xl+RzBop3iPao=
X-Received: by 2002:a17:906:76d6:b0:9ae:6a8b:f8bb with SMTP id
 q22-20020a17090676d600b009ae6a8bf8bbmr126973ejn.6.1696361213461; Tue, 03 Oct
 2023 12:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20231003191637.GA22984@openwall.com>
In-Reply-To: <20231003191637.GA22984@openwall.com>
From: Rodrigo Freire <rfreire@redhat.com>
Date: Tue, 3 Oct 2023 16:26:42 -0300
Message-ID: <CAHjsZGaZcrGn-cuv9yiXpPR81pebRd=AimOeR2xPiQR-GMiZkQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-4806, CVE-2023-5156: glibc: potential
 use-after-free in getaddrinfo()

On Tue, Oct 3, 2023 at 4:18=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:
> Hi,

Hello,

<snip>

> https://access.redhat.com/security/cve/CVE-2023-5156
> Puzzlingly, the latter URL lists RHEL 9 as affected, even though I think
> the original buggy fix hasn't yet made it into a RHEL 9 glibc update.
> Maybe that's part of Red Hat's tracking of what's in their pipeline.

The affected code was backported into RHEL9's glibc and it is affected.
The fix is traversing our productization pipeline and we will ship
when it's done.

