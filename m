Received: (qmail 1258 invoked by uid 550); 3 Oct 2023 19:46:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28148 invoked from network); 3 Oct 2023 19:40:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696361996; x=1696966796; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oSjYoyOoBnU9lkWPgpD6q0XtoHU09PVrr3YuQZIyPkA=;
        b=QygKwbez4uEyAPBN65uha9x9++LTMZJW9LXG9toWAs7BSJyzFjC3A/QwxyFPeagtkl
         G9eWW9j1B8EkAeqKxNfxU5XrGIs96KGF5HIoIgyzgjCVLQMg5jeqGX67MEDWtbxBLwCY
         xPye2VxHxxAHI/YM4kTI3x3Hk0siNtXb22tc+PhE3MmeGYtcw1WOpxt5UesS3BIDzPdK
         7CozJVBHiafqchO2U9V+dvVTrjFmxAJpR4Q3LdWZG+JiUVjqnGWpdg1z8diPqzNQME4R
         DYhy1QmMnR5bPSoDXbFrD2U52lSXSsy0CzPSDfEoLoFVv2DtVj0luzT7FAF2pNlplq4e
         TbkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696361996; x=1696966796;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oSjYoyOoBnU9lkWPgpD6q0XtoHU09PVrr3YuQZIyPkA=;
        b=peYB08CpgOkoPM/8Oq+A9V3cUi+M2lqW4ovMUnGnWXOqYlHbUGhHlIguTtpWbCVUWG
         Ax0zpOR7/l/6+Cjz063JDfQQeKURqosDZa5cRxBEaalN82BPfHLiD+QPAb929dpFLJli
         RFt2NTuFyMcfIp9Vqme1yLUBim/uBoQOPiiEAtvwhjtkmQ/yA44WI09l/JBKvztoF/Mo
         Ov8hBEFAjpf7hBspQROcOiZrHX0Zei5FpTaDuz8z/ECJIaDaQWHjpxAKMMilmgM1cY1r
         WEJ+2CGHRcxsc/ylNOvTXo+KkABPy/5XkHT1Nm2ZXNtPiRz1olGDIozsIzHbuXf3ggvu
         VMRA==
X-Gm-Message-State: AOJu0YxczhRYfbHnql63eYBM7WPRKcMN5BTd9kx9BmOby3y1QtG5iYp+
	87/U9D3F+JZOVCi3B9tekRFiyks1nEdBcI9xAuMh1kER
X-Google-Smtp-Source: AGHT+IHztyLetS2Uddy7RyuKP9pycMCEdVTDf3wbRX9/GhAXNe4F/bzDQbqETwHL/8CXEvOu0HO4X5CggTREw4DdwDA=
X-Received: by 2002:a0d:c906:0:b0:595:9135:83c7 with SMTP id
 l6-20020a0dc906000000b00595913583c7mr472917ywd.47.1696361996176; Tue, 03 Oct
 2023 12:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <20231003191637.GA22984@openwall.com> <CAHjsZGaZcrGn-cuv9yiXpPR81pebRd=AimOeR2xPiQR-GMiZkQ@mail.gmail.com>
In-Reply-To: <CAHjsZGaZcrGn-cuv9yiXpPR81pebRd=AimOeR2xPiQR-GMiZkQ@mail.gmail.com>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Tue, 3 Oct 2023 15:39:44 -0400
Message-ID: <CAAHN_R1ATfyJD=QikN=crfRgX-YzO9zw3hdQbXoipiTb1k1uVQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-4806, CVE-2023-5156: glibc: potential
 use-after-free in getaddrinfo()

On Tue, Oct 3, 2023 at 3:31=E2=80=AFPM Rodrigo Freire <rfreire@redhat.com> =
wrote:
>
> On Tue, Oct 3, 2023 at 4:18=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:
> > Hi,
>
> Hello,
>
> <snip>
>
> > https://access.redhat.com/security/cve/CVE-2023-5156
> > Puzzlingly, the latter URL lists RHEL 9 as affected, even though I think
> > the original buggy fix hasn't yet made it into a RHEL 9 glibc update.
> > Maybe that's part of Red Hat's tracking of what's in their pipeline.
>
> The affected code was backported into RHEL9's glibc and it is affected.
> The fix is traversing our productization pipeline and we will ship
> when it's done.

To elaborate, none of the *released* versions of rhel-9 are affected
by it, but the RHEL process is using it to coordinate things in the
release pipeline.

Thanks,
Sid

--=20
https://gotplt.org
