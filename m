Received: (qmail 1534 invoked by uid 550); 2 Nov 2022 02:54:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1510 invoked from network); 2 Nov 2022 02:54:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wrDymvYJDC7hUH6/osyEooGI/VHyaEEkVioQ8+cHUd8=;
        b=GplYDpBc1A3xsUBD2Jp3x/+pl/KY9dImloqFWGt9rC6qmUL77jYMg/SKGdJPbKZuY5
         AWI4AA8Hvta5ERzMGf7zV6C2u4N2/NFCKXlCzEM3FjLydigR9w00svO17Y1n+bD3vyzY
         MjoUookicPIz8lznIHyqx8As18MplgT4akFEPR8e6Lw5R70k1WwmH/A12fvtJuFxXrHz
         UVgjsiXtNNb0afEQO6QLx9JcszE7iI8PTWTtgTtU4waeRvjSnF3l0LTliXmbDHUSA82/
         CoLDkwifj8KbTvOIw01H9zSTPiyFMX43V3pDz3MJZv6FX8OBsNaoY+ReetB9Ffg+MXJQ
         NAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wrDymvYJDC7hUH6/osyEooGI/VHyaEEkVioQ8+cHUd8=;
        b=GeV3q5Ki6j41AMDdvkW6OIpRSvAkohjTROCfGNRSyRZk39F8XwoeW6pwq1gsgDZTG4
         1R2eCNY9NlnZn0f4aQblGUVl5l62sCrMngKhwyE8uBOczaKkLp0iekbWoYnDOrCadsdP
         ILWJZfqDT9pkxFoj6bksyd9FukddyKj7lPCC57NRfHLsBlZimADMTn6fIVX2ViTjBZVk
         MSGSrjRxIfhkF8TOKc56GmaaagSlq7zEuZWwHGbUw+Rc3vW5oamPv/zPSFy6mY8wgRTB
         ALb4MA+XyyH7m7UFpysjOMoPgJNEiCMG4HuFNTm906aVaPM5pQGXVrh30XElNkEkrtpe
         KH+w==
X-Gm-Message-State: ACrzQf2QsbrfnEt2a1sGMcQGw/+1z4C5O9uZoxnfmRxmmoPy5/wdgqoH
	x7xRX40paKqkqTd6G00OPlrMt2ZFHZkBfYh6RGj8Y5xW
X-Google-Smtp-Source: AMsMyM6y78HoEp/x6U8qCu5KQBbpgQM7OVOskQsRbvrc7hvAD/aVbeI+274KkNv2FzSIH14p19OUGQYX2TXxj0oSv4k=
X-Received: by 2002:a2e:3c03:0:b0:277:1d64:f4fd with SMTP id
 j3-20020a2e3c03000000b002771d64f4fdmr8329882lja.32.1667357650488; Tue, 01 Nov
 2022 19:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <Y2F6C/dZo5njPUfd@itl-email> <1e5efc36-0cd4-45e2-b838-1493f9db6518@app.fastmail.com>
 <Y2HbGYMVSAm7/sUn@itl-email>
In-Reply-To: <Y2HbGYMVSAm7/sUn@itl-email>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Tue, 1 Nov 2022 22:53:58 -0400
Message-ID: <CAFRnB2U7V8PA997x+d_si+SN-_WOnaoC9M6impMENR5jfHiGwA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)

Alpine Linux switched to LibreSSL for a while, but then switched back
to OpenSSL. (LibreSSL is still packaged separately)

Alex

On Tue, Nov 1, 2022 at 10:53 PM Demi Marie Obenour
<demi@invisiblethingslab.com> wrote:
>
> On Tue, Nov 01, 2022 at 09:52:59PM +0100, Erin Shepherd wrote:
> > LibreTLS does not track the OpenSSL API, so increasingly software does not build with it (it's not possible to support both LibreSSL and a supported version of OpenSSL without #ifdef hell)
>
> Has software not from OpenBSD considered switching to LibreSSL outright?
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab



-- 
All that is necessary for evil to succeed is for good people to do nothing.
