Received: (qmail 26440 invoked by uid 550); 19 Mar 2023 16:28:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24092 invoked from network); 19 Mar 2023 16:24:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679243085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wUE9MtJtvvI4I9VK+6yvS3NfBVvkozfLrRno2vSHKBI=;
        b=Whed12a/XZLr2T4m5EaxKG3v4MR6X5xYeTV9zg5FLtSIhaE1Axc3g/QiI1g43nfCEw
         I38/4gQYlq0P8QNocyTZCRR8r1ymNic305ceLVv7VCatwgmlbdxE2GAFUcjGBHWpWbi8
         IrR0M1j7vuehHd676YprdRhSt9yarMMIVyjCqJJucIfVzTLNv698P1wesSzonhe0BzRZ
         4yh16uRHErCNwMpEJtU0sD70LA7J0g5emHYEQYePDnLmHxTqmn872cXPyzJXWIa5ADeg
         2MHX4R4OFahwrs1RmBWOS4oOj6PCEv9C5DexZix3SwXMTOfWJf1DtUCo9DIv2VEwHqfc
         Afug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679243085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wUE9MtJtvvI4I9VK+6yvS3NfBVvkozfLrRno2vSHKBI=;
        b=RnZy7Me204LfDvaxzKpF5PZbxLL4JJlgsyH2p8jIung8cl1locN/amDYxYmfEJzJYe
         AjvzHPnXzph4obLHMkoUUH3wnIYbt3N2CoJXIj4VEEEHVE5ZcpokdGg/cOS9Uw/oCu2l
         68jey5hj0e4Lgqprn0/WY4wvxsidbC6pmrv7zc+I24hPXHE38B1udGa0U/1m4tkpzahP
         9JEc7fhR0KdnIpdBkEIPESsZBzyvHZ/wINeTNQEnDa3E1nYWPLEiEEHMPjwim7s+YXdt
         VWhcFf0XvLumcUcDcFyh3DWPD2Ttw4y4fkUzZ5G+Qoe6xRbBk1ApMUJzPoTzQCg7gXqS
         Oqig==
X-Gm-Message-State: AO0yUKUuJbURI7EgTXMA0OvhKMRC9I1sqxWxLuu53JYiueYfd/a0702Y
	NlKZTEopzyPUEeD6kLq39TzjwOD4989d+pLNNBs=
X-Google-Smtp-Source: AK7set+GnRE1NpiACavZZp23cfzTc9fEJ1FEgiM7TYwod+GkI0Pd9+Qq8N0vqWEiBTfwnOE82j2yssoAETvBoEB+ypU=
X-Received: by 2002:a65:61a5:0:b0:503:a7:d244 with SMTP id i5-20020a6561a5000000b0050300a7d244mr915302pgv.9.1679243085092;
 Sun, 19 Mar 2023 09:24:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD-icAVmX4LER-Ctu_98WYKd833tnS0ePLsu72iChJWshg@mail.gmail.com>
 <20230319135946.GA20983@openwall.com>
In-Reply-To: <20230319135946.GA20983@openwall.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Sun, 19 Mar 2023 18:24:03 +0200
Message-ID: <CAGUWgD9EKiV7QxeYzH78S7RkzByR_mK+gtZiO-boo9qa6_mw7Q@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] First result on google promotes insecure coding (XSS)

On Sun, Mar 19, 2023 at 3:59=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

>
> Have you contacted the site in question and suggested an edit to them?
>

No. Since this issue is already public, lol, let me see who from
the community contacts them first. btw, I strongly suspect there are
many more buggy tutorials.
