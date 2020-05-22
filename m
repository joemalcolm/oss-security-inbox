X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["420" "Friday" "22" "May" "2020" "18:45:00" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>" "16" "Re: [oss-security] Short notes on qmail security guarantee" "^Date:" nil nil "5" "2020052215:45:00" "[oss-security] Short notes on qmail security guarantee" (number mark "        gguninski@gm May 22   16/420   " thread-indent "\"Re: [oss-security] Short notes on qmail security guarantee\"\n") "<20200522121750.GA24868@openwall.com>" ("<CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>" "<20200522121750.GA24868@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Short notes on qmail security guarantee" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30222 invoked by uid 550); 22 May 2020 15:55:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24463 invoked from network); 22 May 2020 15:45:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=MoT55WVO4r4ukipGehixPOPzkNHpf/aAKTUhW0DzRBQ=;
        b=gt/bPIf4J0S8aNtBWALh/IirIKVR7eaqSs4iR5QsPhXo8b1I+ll0DhQS2je9ez3m3I
         xNBdhVWLLN2/P+f2JCDQ/RxIaJ8B2+8tSHMPC9NRRkaGICRW1Y3iceClTNngvO2E6HA3
         vXs8yxk0NI0ejBItURzCMpgT3+0mIuvGGl8ct124Hn3YYC9/nhwkD8lh8VryE4OOpJog
         KQew7XU6NkXBOObPJCO+mWsqttnlPxkrJmpGyaGAo7J3SoEMHhEtzYaZuxE/3az2Rlsh
         lvHBHIXfo50+fPq+HyZwKw3GZ+Dol4o7QjeYsvhbe81LPuvEkpHt/TDnRCtUnAlmiqpi
         bRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=MoT55WVO4r4ukipGehixPOPzkNHpf/aAKTUhW0DzRBQ=;
        b=cFv0/TYdbP5sqX9uBGxdVuypSYaRObzmndnrbEMiJeeu7p2aFMgnRa07KMzOplYbEL
         df+LSZ/yfnyZX6G+1hYtAZ5ruvMUwPRCKVeyq5YAlpvWJRRz0d16LFDHkpEfNL+5761F
         0DnxMFVs1+ZYRlREX3Qe2jC58M1naSvXD9yf21Km/Mm4/vbQUxveDhAVZYq7xNMd61AR
         DN0iAb36Od+dNzIEBHUScK8ah77bR/BnGVTjYbxmmbkynaomHRhv+JDyz6IC5HYw6DVw
         eeLt5FCTgjQufp7Bo6kIQUt125JSQx8f4dTeGVrnbh8Hq8MV5Z+hvHO8YWa1UbxRjegl
         MTLw==
X-Gm-Message-State: AOAM532UnAzvxnQfxmrkgMrV3q2Qp3+WmOrYC4LNBbE7JTlMCrWicsOL
	fKvvSy2X7aPAc95cUEc7BobGYHbjgVPRiyWDNsPygJjB
X-Google-Smtp-Source: ABdhPJxGZpA4UzqO6iY9DJcfQJfuV7r+iJP3UB5mqYC7baMYu/xXP23KL/P5ev5HHD/QiNSRPcVvFVq6YpwYoW8901s=
X-Received: by 2002:a5d:674f:: with SMTP id l15mr3977833wrw.339.1590162312639;
 Fri, 22 May 2020 08:45:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>
 <20200522121750.GA24868@openwall.com>
In-Reply-To: <20200522121750.GA24868@openwall.com>
Message-ID: <CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 22 May 2020 18:45:00 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Short notes on qmail security guarantee
To: oss-security@lists.openwall.com

Hi,

Thanks for the info.

I am not professional admin, but does postfix require limits?

Do many widely used daemons need limits?

AFAIK most RFCs try to avoid DoS attacks, not sure.

You are right about the DoS impact, but I conjecture
that if you DoS vanilla qmail long enough it will crash from
memory corruption, lol.

Re mobile phone RAM: Looks like I was wrong, Samsung
currently sells phones with only 12GB RAM.
