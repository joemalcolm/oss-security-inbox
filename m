Received: (qmail 11996 invoked by uid 550); 30 Jan 2024 13:44:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11978 invoked from network); 30 Jan 2024 13:44:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1706622428; x=1707227228; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SwG9CtaACjZkww9lw8ezk43IF1T6kAU/+JyFoTe1vVo=;
        b=IeNRC/yFUyPTuSN+EUuWMFraz0lY1k7lCXS7fyJjhQw2jwl8kyAhL6dZAzVwx41+jF
         rCCHYgGIg6s6X/waLMwiincVWmQJa0Y/tnjUw2fjdJh0f2or1kGg7TG39OYIr6HzJWq5
         HnDbMW+jZH6fFZdaCuG4+LhcNVUbukfMbnNLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706622428; x=1707227228;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SwG9CtaACjZkww9lw8ezk43IF1T6kAU/+JyFoTe1vVo=;
        b=K62CzRpAJ+cyLJRwhCgl1M2Jtxa3qaYNVlHcogu5ohStbU8Jlk33JJZ7f8zY3mU6CF
         O37AGOApYXXSBzJxOD7oTfFWU1ATngnLOdx9qqV3uvj1Ucw2c9CgnFsA3Tfcvm/FIv/q
         ickXugWlVe/Xy2qffqgcFg1CZP4cattsZTxPBxosXIE/Uy8m9ZbGIoarcdUXhHhfPhdC
         TKdehUKh6bCQ2dOOmZ2P+nPx4j7sAIpVTQ+EAgoculCYPB3Za5CNfCSVGnGoey2J3rWv
         c2BEukLaVmVDH6SYeBmcv/WgD3LL2ao+e1mu+CIKBuydfbGwGHLirroe+4LnF6+S2Kcp
         gR8Q==
X-Gm-Message-State: AOJu0YyGhrn3kOq9gOCm+DdLRIxk2+FWHYaTiQ7UCJbLGytecoMbybAa
	wwSbbFGY6IHga4+Yo0S7nMknBXE8X+T3sBMZnspo0ohr2gxh+vxOGMIlhRQkeByP0VR+SPnlCk8
	jbIDXAEhUel7GZq1PD9eWyRWWVqIAZwdNWsV2L9yCzollmujAUSM=
X-Google-Smtp-Source: AGHT+IGnwl8nfbEnFvnKoD2opZG/o4f8llFpA8DHBEAWRgOSWo3MqGoKA/VbHoeV2SpxCRssxEqrl1iZqckyb8CdZH4=
X-Received: by 2002:a05:600c:3143:b0:40e:b195:6bdb with SMTP id
 h3-20020a05600c314300b0040eb1956bdbmr8140050wmo.2.1706622427829; Tue, 30 Jan
 2024 05:47:07 -0800 (PST)
MIME-Version: 1.0
From: Armin Kuster <akuster@mvista.com>
Date: Tue, 30 Jan 2024 08:46:56 -0500
Message-ID: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000093a963061029ffa5"
Subject: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 & CVE-2021-33631

--00000000000093a963061029ffa5
Content-Type: text/plain; charset="UTF-8"

Hello,

Not sure if this is the appropriate mailing list to share this information.
I noticed these two openEuler CVEs were assigned two weeks ago affecting
some K.O stable branches.

https://nvd.nist.gov/vuln/detail/CVE-2021-33630
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3e8b9bfa110896f95d602d8c98d5f9d67e41d78c


https://nvd.nist.gov/vuln/detail/CVE-2021-33631
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5c099c4fdc438014d5893629e70a8ba934433ee8



BR,
Armin

--00000000000093a963061029ffa5--
