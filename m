X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Wednesday" "16" "September" "2020" "15:09:39" "+0100" "Kaxil Naik" "kaxilnaik@gmail.com" "<CAH5JyZrCbbV0OgZ9A_+3GqiR6YkUX5SYV5oR35N_xEfa4_W0cg@mail.gmail.com>" "22" "[oss-security] Re: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12" nil nil nil "9" "2020091614:09:39" "[oss-security] Re: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12" (number mark "U       kaxilnaik@gm Sep 16   22/571   " thread-indent "\"[oss-security] Re: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12\"\n") "<CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>" ("<CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15627 invoked by uid 550); 16 Sep 2020 14:53:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30185 invoked from network); 16 Sep 2020 14:10:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jZHtL6sLnsRU/EmPFkTSFlCsdpPw4ItMJMjvZ92Yvjc=;
        b=cZfsZRngFhIDBAg0LOXSV2YIJnQxvhxClGi+Bq+8ghqkpxRr7Nduff4VAQeoqPBSMQ
         tiH434yXfpn0VtlWXPREzdZdLQlpxN7y+0M+C0YpoFXupbrAjEarnqIVuS5n8QTXO5cY
         bA6iMR5BX+Nel3FW8jj1fvNoH4abHxKY5cNXSHugTn5cPmfG/Hz2E8PJiWGvpQBd6YQs
         NB+7pSE4gdneZfUMKyJairUWLUMKeYglZBfMmr5xmYFdg9e6wGxaRTTpxJu7Ocul2T2G
         RMYtZWHoUqC0BZXQahUuz/UlET/ww/mGQ5gDGPmPPmeHRRGaVKs0iCiyiOw1XSytHvqJ
         Cn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jZHtL6sLnsRU/EmPFkTSFlCsdpPw4ItMJMjvZ92Yvjc=;
        b=Dl7aulwKDb2YHwh4gtfHeFfrWkTLnE7dETfBLrR2ttlCAdVuDy5pX8+WIO4oFopWlf
         CAod0XNMNOiN6FG86BA6CNlH7JYPvaAWdSRPJCrktTHoxC37eG6CSoe6GsjCgc1UpzQB
         0+602OIw684Ryh3RGL8JUfQ8VNYbcYoLm2MFpn/1VcsSbwonLtLP5a+L3lcO9FMUmdry
         qp3/iOBPDOQEXo8605911ZSfxLKE4cfcfp56Kk/FZS6KQuoxOVxGPOr5CxJXmeaHh5rA
         VcHa2Qhm/d6//l19f6tJl+4eSKM281DGliHCyNuv0QQwO855bpetlxCY5pLULRBT9Saw
         tstA==
X-Gm-Message-State: AOAM533Rb2Rea2ZBLsC5AlyUTCadv5jL/yEnDy0UNY3vMA8UYan/sFjy
	kzBp0Cd0D4Rp7BHfSvKXBY4FNZpuf1OHEq3ZYWLGx8T+UUE=
X-Google-Smtp-Source: ABdhPJxIVboCPBJlGgYmYJ1uZFLGSmW8sVTi/HO14yeOyDKaQFZynuzf8yNLpUIcKu+mG3hVAy1e7DIHd5y2mlI5vX8=
X-Received: by 2002:a17:906:454a:: with SMTP id s10mr25296036ejq.138.1600265390648;
 Wed, 16 Sep 2020 07:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>
In-Reply-To: <CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Wed, 16 Sep 2020 15:09:39 +0100
Message-ID: <CAH5JyZrCbbV0OgZ9A_+3GqiR6YkUX5SYV5oR35N_xEfa4_W0cg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@airflow.apache.org
Content-Type: multipart/alternative; boundary="00000000000027f6ae05af6ed268"
Subject: [oss-security] Re: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin
 Parameter <= 1.10.12

--00000000000027f6ae05af6ed268
Content-Type: text/plain; charset="UTF-8"

Correction the issue only affects < 1.10.12 (not <= 1.10.12)

On Wed, Sep 16, 2020, 12:27 Kaxil Naik <kaxilnaik@gmail.com> wrote:

> Versions Affected: <= 1.10.12
> Description:
> The "origin" parameter passed to some of the endpoints like '/trigger' was
> vulnerable to XSS exploit.
>
> Credit:
> The issue was independently discovered and reported by Ali Al-Habsi of
> Accellion & Everardo Padilla Saca.
>
> Thanks,
> Kaxil,
> on behalf of Apache Airflow PMC
>

--00000000000027f6ae05af6ed268--
