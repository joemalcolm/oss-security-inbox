Received: (qmail 11299 invoked by uid 550); 13 Jun 2023 17:00:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3921 invoked from network); 13 Jun 2023 16:50:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686675030; x=1689267030;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7/6ny21TVBOFKbl32Tq54j7NPFXNZcHaTdv4s8qz+js=;
        b=gMpJam+wVUuFAudKSIwPSnpUTaPyUq+M8nMqSbPBTNT4Hof+sfrCHqbjuMCadMh2v0
         gEAkRnnDBhUbZgYVAPY/ezFYsqdFgwd8Kd/CtS5OUafL6M6w2aZaXjp7Eanby+axO82L
         B6Kib7YmIxkUH8EaASmQTT/+vZiJdE1sriyk3SfPtA0S92YBD8XXvJzBXX62dz4T3UWw
         aGjvyxH4rm3WwrGMPnMvg93BVBiVT/TLQjafFyuYRX+mscRze+1Ey/SBi4Mwe+QJRQTE
         +RGVz0oWMhiNVVHGqJNejCuBM0+WHoCP8BRyesJgBjXpO2ft4tlo5t00cVx1WvjjpsdM
         VqkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686675030; x=1689267030;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7/6ny21TVBOFKbl32Tq54j7NPFXNZcHaTdv4s8qz+js=;
        b=ZPJ+DUGivgLvAJfE6TNUOYvVuKUjCXdGxy9HEQ9ozD/mVUGrdPySYx+7+wzbY2J/4t
         zU5fRFIfqOqzpZdsGvPelUdYttctExVV1rg0vxYfIJVJM/T/dn/cbLWiKTnIAdOX7lnf
         9FacIEzEh3XJbtNyTG4i0sqFMZzMPUDesgcwbnwkV7b+kl1sM7EtpgwyX2yfxJ4zXQxZ
         ktmy9WUKifNTgSbrD7K+taB9P4sJcLvkid2xOD89PaHLyJhwD9CQTYkz2mx7F25cnUQE
         i327EsQ3URbHJ9TVbWxZ/EICNvjMGeptQxgJjFmONlT6K5qJu6NJHoGJ+unmwFMQPl8q
         YRBA==
X-Gm-Message-State: AC+VfDzrmuGvcHTRYYNcoDn0tqgQ101CVXgVknm9Mbdfzk4p6BDHAuBK
	yHDuiMa1MR9yaxS9fpSYAszEQPBuj1CISrCNJB1CDEEA3cc=
X-Google-Smtp-Source: ACHHUZ7c5dybSIDxD3x/nAjJuQMFO3eKoCMVbcTb8nUJVwFKwr7tNKZvRlSptaLc2TkeShRv1Ne3IoJXrgl4qye3L9g=
X-Received: by 2002:a17:90a:8b92:b0:259:b065:da4f with SMTP id
 z18-20020a17090a8b9200b00259b065da4fmr11727381pjn.36.1686675030135; Tue, 13
 Jun 2023 09:50:30 -0700 (PDT)
MIME-Version: 1.0
References: <b43dbbf1358a42df945de86dee00f452109a7a2e.camel@debian.org> <YT2PR01MB98273D8129B5BB67241FB30BE856A@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <YT2PR01MB98273D8129B5BB67241FB30BE856A@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 13 Jun 2023 19:48:40 +0300
Message-ID: <CAGUWgD-+BM-vkEoAo_Efa9T7ZJk_DK2w2jEzw7TgXQCVC82G6g@mail.gmail.com>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Solar Designer talk about 15 years of oss-security
 at SSTIC conference

Na zdorovie tovarish Solar :)
I am missing the old full disclosure mailing list,
there is little discussion on oss-security.
