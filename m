Received: (qmail 32653 invoked by uid 550); 28 Oct 2023 15:51:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32632 invoked from network); 28 Oct 2023 15:51:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698508285; x=1699113085; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1kc6dv5JraOhNgrSt40knRqone/Z4Yjh1eCXPTSlRE=;
        b=K0dWVOx8X/A6rS+fIEV2XnPKkNrJKeiemQ6MyAjATrscQwuHHtlNgNCrl952VYGPe7
         ALFTqYpQUAFVDuR2Eh2gn+8L2Do0InJeYHouzySyNv+EwWBNcXSeX/IYwrlpU+I6+Pt0
         ktfQ5ARHJnfpY9y5Gew/qy0kfSKr7wpaSw0XT2232fmF1sEI5JKd9ODw6pVKesCPLKxU
         6DSmGVtFx49h+xyhh8orHUzsmEhdqncY/QG0zDjLEba3WufeXuqemWZcAmuSPsudkGIj
         Hybe+Cr6tU7lIuMM0DMCRsNAi3f5SN3wg/mI3YXQfhpRe37pUXZepSh/mVZ5THGZ6uyH
         ZYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698508285; x=1699113085;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S1kc6dv5JraOhNgrSt40knRqone/Z4Yjh1eCXPTSlRE=;
        b=JAIKSrEmnPvV+yV1RwOdMoo/NP3WGI1Ky/v0pQB+7kS67IFvquzMsiAYL8/bwcP1Eo
         ef3qeXKWSrHLvPCwAcEjmFhZX5apfsT6uoRGpCwe70A94X2//UBt9cmslp+BTjkZ7LHL
         LiAYj4rMzc3/amTOxkkppdqp04jRrrj7OexrUHyYMxv+CsKW5yueDshEtMTV9znR4c+D
         TSKBNf6PiGaR0tbV7Oa8m4BQM1PtnzNQwycrNOgvPMRH2a4eH74IfLE42yh2r/Be6ZZT
         wyqOuajthwcQZGWAxOFrcmJIYsbBG72KlLOGAV/JmLVAUK/TzsthSiyvZY128qMboKkb
         870A==
X-Gm-Message-State: AOJu0Yxv12C6g/rJR+dOvtAQeUPF8Tpxn+SgZ68vsU116Ech/fiwda15
	6vZaLdkEdX3i8sTlWhdBzj//ncUswpRGUA==
X-Google-Smtp-Source: AGHT+IFjZ5fQgvum90SS3SOgJUGxfUMF2DiNccYFbVYnhcOS0GkYV9WbOD9yS8/b/SAfTINMW9tmKg==
X-Received: by 2002:a17:906:641:b0:9d1:73da:e4fc with SMTP id t1-20020a170906064100b009d173dae4fcmr1142570ejb.73.1698508284696;
        Sat, 28 Oct 2023 08:51:24 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 28 Oct 2023 17:51:23 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <ZT0t-5HDT_cAcgC2@eldamar.lan>
References: <ZSit-X8iB2gx54hq@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSit-X8iB2gx54hq@fullerene.field.pennock-tech.net>
Subject: Re: [oss-security] NATS: 2023-01: Adding accounts for just the
 system account adds auth bypass

Hi,

On Thu, Oct 12, 2023 at 10:39:53PM -0400, Phil Pennock wrote:
> [ CVE has been requested, still waiting for assignment, so we're just
>   inventing our own in-house numbering for advisories; we'll make sure
>   this one continues to work after the CVE is issued ]
> 
> NATS-advisory-ID: 2023-01
> CVE: pending
> Date: 2023-10-12
> Fixed in: 2.9.23, 2.10.2

While I see the later NATS-advisory-ID 2023-02 has a CVE assigned, for
the 2023-01 was above with CVE pending. has one been assigned in
meanwhile?

Regards,
Salvatore
