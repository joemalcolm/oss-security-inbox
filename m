Received: (qmail 7693 invoked by uid 550); 24 May 2022 16:18:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32252 invoked from network); 24 May 2022 16:11:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=KNdF8gY/+3OcNB/uRoBMBwN9Iy1asfG5vW6SBmo9zVI=;
        b=qtOMS4Pzv2Dth/mw239RA49kdEETZtygQZrXtVgc8WuhAFSvQANZARbJjFjLitNDP5
         AlODXQPOaLWtf3WdhhWbyw5T/EAX9X5Yf+u5WTqIV1Od7mzCpsVTH/AuOx7Q1SfgkWXG
         +Wp0BdKNAxCnVK5ng6pk9ErZSFQgb+OZ6I7Iq+OFvKdxfkuQEtY/S3HBb2R6rD0MkwWK
         rqPIY9CxwY9MbXsFASwN6/e/kmi8H5JTZoZLV6dWh74IZchc6QHQjTCJo3uuER7BDnR4
         CfwuPkiOqu8GqTwZjHLU3KS5mY2P0IF+7F/gfLBnOnLaNH8X+AY0ORlmvxI4EvUasSpf
         14Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KNdF8gY/+3OcNB/uRoBMBwN9Iy1asfG5vW6SBmo9zVI=;
        b=rZuvt4VVUpTy6mRn6eUwKJ3vXWzxcLyg+4PK6VVrIkK+RtRGvRh3+Baqxu5omjfs/A
         sdioEz/ydZ0K9BqwGb31r+K4dplPOOONP8Wu1EfTe6T//C/x3Nj2Kgs7XVsL+zgrHsnQ
         tOaa51kDtaQ2uXDQR4zIc18/xhALuEze/MSjglSiXMwACJE4224JUoePYeovv174Q+z4
         p3DHp47homcn66ueFC7jQ8jZkY7njZc1hogr9st7T+X7+l/DhsG3fEDxoNlK5EwT+OeN
         B3hsnzR3XU5Y6B2kDM8GgasYHP5s1sa3gHswB9a3NP+BPAEEUXvwi2hbI4hcS/qA3Fa+
         yNoQ==
X-Gm-Message-State: AOAM533ueKCglpSvG+umEtQLvdstyACbSPsRZPKE72oA/pK6mgtcMBQk
	93R7AcyE/D/nSI5Y9WaZAe+FD+bT168Jq1JzgHKA7UESoDeprA==
X-Google-Smtp-Source: ABdhPJz2ayKHiP0PfQaYsh9UHUg/x+ZERQLyTU69WReRSPu0KY/Bo8AB086gm5S07+OG5PPYTSx7G1/E2lXsPcBwbFc=
X-Received: by 2002:a65:554d:0:b0:3c6:3f22:72cd with SMTP id
 t13-20020a65554d000000b003c63f2272cdmr24756053pgr.283.1653408673924; Tue, 24
 May 2022 09:11:13 -0700 (PDT)
MIME-Version: 1.0
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Tue, 24 May 2022 09:10:37 -0700
Message-ID: <CADW8OBs7P=YE_xfYCX3KuhaiVkwjSTMVUjLX93S_bn_XBd05EQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-1786: Linux Kernel invalid-free in io_uring

Hi there,

I recently found a severe invalid-free bug in the io_uring subsystem
which affects Linux kernel v5.10. It has been demonstrated that the
vulnerability can be exploited to achieve local privilege escalation.

# Root Cause
The root cause of the bug is a misuse of the identity model in
io_uring. When preparing a request, the kernel uses the identity of
the current task instead of that of the request task, which causes
type confusion and invalid-free when the request needs to be
destroyed.

# Impact
I wrote a proof-of-concept exploit and demonstrated that it can be
used to achieve local privilege escalation.

# Affected Versions
To the best of my knowledge, this bug only affects Linux kernel v5.10
and v5.11 because of their unique identity model in io_uring. But it
still affects many users because of some widely used vendors (Android
12, ChromeOS, etc).

# Disclosure & Patch
I already contacted the Linux security team and prepared a patch. The
patch has been merged into the Linux kernel stable tree and it can be
found here: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.10.y&id=29f077d070519a88a793fbc70f1e6484dc6d9e35.

I also informed the vendors and gave enough time for them to patch the
bug before this public disclosure.

--
Kyle Zeng
