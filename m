Received: (qmail 11826 invoked by uid 550); 22 Dec 2023 16:39:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11806 invoked from network); 22 Dec 2023 16:39:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703263233; x=1703868033; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iaOx5+3jO1cL91DS569gIXUpVx3LqZ/T5J+XcMzuDDc=;
        b=cC/tA3sXu+dslC46i4TuWLYNw0fCYTleiMEUWj2BV1d8vOYyrQE26wD1galtqGx3oG
         zTbeHfPF8EQ1IbMoVd2H3suBERMOXek0jOVOg13j7UABsBbJFH61ij9DnH4DH4NpFCVd
         LBDQYubw44Yn78b7hk2hGr3oe10MVf43TxmbDto9EKEimGKbi7yVxn6Y9497O2mJNdgA
         /0Eh3UbZoUE3JYflS4mtCPOXqRu2J0pqgUWjrRqkOb3jUPT76WMrDKRMDHXow/kyBL+Y
         TxXZ2m3Bjd5I3itn3xc2Vfpl6Nd9GnY6eXYbJTCsuqhDw1DVgXOwhrMiw/vZ8os9jhC4
         RoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703263233; x=1703868033;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iaOx5+3jO1cL91DS569gIXUpVx3LqZ/T5J+XcMzuDDc=;
        b=gNCpH84mz2Kk4t8vD//t7jREBFqFLLxU4KBJhmwub0LcKu+scoJNbKLxxUrF+MDrVg
         6OI2Y194LI6ucgOLyRgQ//1U3uxgq7GgyZ7AMxyCvwtULN1xxb1taMwpyL/xPckbYYl1
         4w4w7xBrxZyFr3exw/sPUd6121hgW/Pg7AF5AiuCk35lJOr65+Ev7aJguNsYTMt32i9P
         peIm8GllEjWPJU3b0uTylNjOXwePq/2CDVdgg8+b090WFzX2Mzpd/0sIFdzLQiVBHOno
         tJOzHkkVHOW/OLgPrnLCZCc0MB3JdR4s6lnQRWULJrxPI9QI97HaUSav4ZLvD1EPTc9V
         Cx4g==
X-Gm-Message-State: AOJu0YxMjaoT7KvUEyx0YRwVrW2HXGtnpXwxKHJoxydA9MGobxMQemJl
	P+9n9TFI7MIeNEpDE4RAcku59Dz4TfOuQyP1PXCugMld
X-Google-Smtp-Source: AGHT+IFwnRo7Nab1eo9wFL7qqJvmLPgO0TUCN34s+Kbw3hvzwtgDhfJQlEO+wPTlkmmlyg1vfkc8vuVrNZNdUB+zUdI=
X-Received: by 2002:a05:6214:2485:b0:67a:a721:7849 with SMTP id
 gi5-20020a056214248500b0067aa7217849mr1996298qvb.110.1703263232791; Fri, 22
 Dec 2023 08:40:32 -0800 (PST)
MIME-Version: 1.0
References: <20231221143630.GD14101@suse.de> <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de> <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
 <20231222121134.GI14101@suse.de> <20231222150438.GA13989@unix-ag.uni-kl.de> <CAHjsZGbiZYGug2L04iZ+VEmMg-pdfKyKOGdcSeCLnsZYd0Vm2Q@mail.gmail.com>
In-Reply-To: <CAHjsZGbiZYGug2L04iZ+VEmMg-pdfKyKOGdcSeCLnsZYd0Vm2Q@mail.gmail.com>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Sat, 23 Dec 2023 00:40:06 +0800
Message-ID: <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Fri, Dec 22, 2023 at 11:57=E2=80=AFPM Rodrigo Freire <rfreire@redhat.com=
> wrote:
>
> On Fri, Dec 22, 2023 at 12:10=E2=80=AFPM Erik Auerswald
> <auerswal@unix-ag.uni-kl.de> wrote:
> >   * The CERT/CC and VINCE involvement resulted in "there is no
> >     vulnerability".
>
> I'm trying to make sense of it - where's the compromise of the
> Confidentiality, Integrity or Availability of the affected mail
> servers?
>

The integrity of the sender's identity, as a minimum, is compromised
here. Normally, when relaying mail, servers add a "Received:" header
that specifies where they received the connection from. This allows
tracking down the true origin of the message. The smuggled message
does not have such a header and thus misrepresents the vulnerable
relay as the ultimate sender. Additionally, if the relay has
destination-based deny lists that deny some but not all addresses on
the destination domain, they are sidestepped.

--=20
Alexander E. Patrakov
