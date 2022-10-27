Received: (qmail 5689 invoked by uid 550); 28 Oct 2022 11:18:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3690 invoked from network); 27 Oct 2022 22:26:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oK/6qtYEFDub9f+j+dWtjbzf9FTg1RdMEXC3gyj3IPo=;
        b=lTTgxAZ8fesjzrlzlKS+PYnmCeze+kowUC/387KDUy/37Cj+1gwacB8jwqSZkJPHa3
         tXmIDKDSeVkYrRKDxPVFb5FRXo2/Cuoex+n5oPgE8TxbOLOdNBUZEUbTCQxx0eenZttk
         vvk7hCamQGjuJsu9cJ5nldBfXN7ChQM1O2Y/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oK/6qtYEFDub9f+j+dWtjbzf9FTg1RdMEXC3gyj3IPo=;
        b=VFKLgvHevZ31rDdHvfgpMkXZrvCuaU1ToEqAdwJmrU5AmAiY3qlIkEQCqSM5rogcyE
         UBxDGJQ9EDc3GQS3zXGWe7pGSJhW6fDKkoPd5OKnRggf5XL5fn7+oCZ0tEUFD6EoP3X8
         aiMXis3TXMT8tTX6D520ztnLAFO3WTsgohzJoQncV6QGmBBUhZcQeg7nbqEqw/iPr5ON
         HDuywt5gZCTD4/xNWdITyG4YG5U9FFOhcOXBPagFXa88+ZvacwSaAfEil0JBvvTZdYtv
         K/V8bVuW7yQTi15/wLFogiC8bRuPO63lxli6Co2aDpPwMBjyoRvCSAHagXpEzQuAlS0z
         4HNA==
X-Gm-Message-State: ACrzQf0gc9qvya30GLaV0KgJvoiQOgt9XCX6cdO1JU5rJdiP+R/I9dPw
	Lnjb/WsHYC0Mr0Qkd8sL836ZdtUVZyVZ+yqjiRjNOyCdMEs=
X-Google-Smtp-Source: AMsMyM5xVcS3aB2klmn0Sudg/7oGGaS6cEmfkmdDyXb8w0s06mj+s1biOuAVxNSuEQR1bNpvf92kI39fx02TLsT2tew=
X-Received: by 2002:a92:d4d1:0:b0:2fa:f0f:944 with SMTP id o17-20020a92d4d1000000b002fa0f0f0944mr31319721ilm.125.1666909553581;
 Thu, 27 Oct 2022 15:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <db0d3f4e-ea16-83f0-2a2c-8186f42af180@openssl.org> <CAGUWgD8YHzKE7JALLLxQELxgz8f6+_9cKEmbZm38C_QHwhFpxQ@mail.gmail.com>
In-Reply-To: <CAGUWgD8YHzKE7JALLLxQELxgz8f6+_9cKEmbZm38C_QHwhFpxQ@mail.gmail.com>
From: Roxana Bradescu <roxabee@chromium.org>
Date: Thu, 27 Oct 2022 15:25:42 -0700
Message-ID: <CAB=ivF85hhN73MbzdX9j72Vqa5pNuF-FVYZD9BToqRM1qPSx2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: libressl-security@openbsd.org
Content-Type: multipart/alternative; boundary="000000000000d07a0605ec0b9fa9"
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

--000000000000d07a0605ec0b9fa9
Content-Type: text/plain; charset="UTF-8"

I think that's a question for the LibreSSL Security team as to whether they
do pre-advisories?

---
Regards, Roxana

On Thu, Oct 27, 2022 at 8:13 AM Georgi Guninski <gguninski@gmail.com> wrote:

> Is libressl affected by these?
>
> Haven't seen announcement from libressl.
>

--000000000000d07a0605ec0b9fa9--
