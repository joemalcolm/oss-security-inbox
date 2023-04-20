Received: (qmail 27784 invoked by uid 550); 20 Apr 2023 08:35:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26274 invoked from network); 20 Apr 2023 08:00:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681977589; x=1684569589;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fau43LjVhm+b3e/CNqrxZbB67PkTkT2PV344TvEoGlg=;
        b=S6OMgfI40Rkx2/N4DNt4ZF1y8N0i/RyoEh6IZzVwp9Z/+BuCOWH/hOjCvF/LVoSuoW
         4usHHMFac0COfrqUuBkWNgBV8vXel1vNQ8YsAKVjnHagTtev5sQW3+ZCW6GA0+k0DWYH
         5nEoq9GChogabItQzkQLcVaU85jO1LI0/qhfSofJ75V60hADYt1eFLOWvaKOwHdS7Q2h
         X2Ch626mSXJijRMSICU4zToORG5wgpryMAXJtg8v9RrvDjPWlxxEDPSlcH621yVGaU9s
         eksmgJ73oubM4A1jaD7APMXI/s0ar7Ep3vTslL2Z34/NHpFz5mM1911cJj+34elTtuMR
         uImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681977589; x=1684569589;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fau43LjVhm+b3e/CNqrxZbB67PkTkT2PV344TvEoGlg=;
        b=C15TGpezAYqtTwfsN5NEcHh+so3yClkxp9PRswsGFFa/Bv1dy88n/mL674Umg45Uue
         n3MgENnL2gyxhGqSCGZYZdm5NvXq+FCw4fCxMIAuNhtQ2iJXCXozhTTchE0mFcrWMMzi
         ngilaQYtrjNUjnyPLxU7bEbqaJeZByVTNE/7Nm+i3ctSbHpTj1fXZEY2hBTZyHuqdmrI
         xZxdSjlYHi/Vf9BOsYvDwXAIxhf37o/nUt7HB/p1BI4NcvrnN4cMcrVHGX7bVs4flbtR
         7Qfdga2ssJx/eqylOakNhDhZwiD1/pBlLK9MMS0FoQw3vIvvzsHxxFouqczqAg7Swczy
         o2JQ==
X-Gm-Message-State: AAQBX9f6p689KXupNGUxYNzGBu948LvtmhLLFx2unSEBOZ1FGqcWyWvd
	tPgO4cbynN4geQwA2TkP5aLyyngWzU1BLAJrK/9zhMrbqNnvSA==
X-Google-Smtp-Source: AKy350YJtUX/wWfMp/tdlZP5YEN6qlGhJa06/R93DEpDM3NfbBaGJiIeAKYKgefpOPbI7VeeGNhlMy1LimzQ+IU5h04=
X-Received: by 2002:a17:90b:38c4:b0:249:64d2:4122 with SMTP id
 nn4-20020a17090b38c400b0024964d24122mr834777pjb.21.1681977588608; Thu, 20 Apr
 2023 00:59:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9UDNkNMsixAnLcmS0OuWM0Btvx6fRbRr1OSk1UsXhy2g@mail.gmail.com>
 <CAHQ_-nSmiU3vZM-8skFJ0jvuZhjR5eHWX=UOjZM-i1qy47pUwQ@mail.gmail.com>
In-Reply-To: <CAHQ_-nSmiU3vZM-8skFJ0jvuZhjR5eHWX=UOjZM-i1qy47pUwQ@mail.gmail.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 20 Apr 2023 10:58:42 +0300
Message-ID: <CAGUWgD8-GXOj=hvUzTD0K=GeiQTR-qSstSX0AQ+7GPsv1TWZzQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Checking existence of firewalled URLs via
 javascript's script.onload

On Wed, Apr 19, 2023 at 5:57=E2=80=AFPM Peter Philip Pettersson
<philip.pettersson@gmail.com> wrote:
>

> There are many ways to make arbitrary HTTP requests through a browser, wi=
th
> and without Javascript.
>
Hi, thanks for the info and for the compliment :)

I can't imagine how can you check for open port/URL
without javascript, can you give reference or explanation?
You can make request, but without javascript you can't read the result.
