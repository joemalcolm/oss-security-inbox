Received: (qmail 13935 invoked by uid 550); 18 May 2022 20:00:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3675 invoked from network); 18 May 2022 19:40:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=A1QAPZ/0cqQZjL0+UPANusBIbYUNSQ+2WnDA81IvlRE=;
        b=d3aqHGxQp96midfrI1To/R9xxFqrL5xs4hM6UKxeIxtI70cGYWEAweIkKhcJnohFap
         mCbJw8e7jwGe0eWFLxg/zCsd9Z/0WeWQt8oDYc2V+pjBtcH1f2dPMC+qJCmGoNEVZJ2Y
         YzSziZSG88+bxx/D4P9YfgAK2c7b0dR0QT/cTYvxOvNNV5nfxF0D+Fs8GxCPCjl7IFro
         WYo8C8RD0hkob1Hu0IWeUbXQRmFGVtFW7JEgdLhJrqeF9oz7uTrwR/ArvCAGs68YbmLX
         vGjkZOG/i2nUN2DXKQPu6NNy21bVTWndp+tddWBW6cw6wdJG5EATftChFehKBAF53Nix
         gAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=A1QAPZ/0cqQZjL0+UPANusBIbYUNSQ+2WnDA81IvlRE=;
        b=rwSc2jkRTONkP0aLv0aD/deuYkfqTsuldv9937PYgLQH7pSOzW9IvRr/2B3QTchO2z
         yE7X11YzG83ufhAQ502oRpLoRV7UjdR84z2B8m6AfWbPM1ZU59U+1EwB7DFrBW21HlDD
         jkKcvCfK5A30fuJez4UXSUXkxuQFdLvxReM3BkbDqR1+OZ6jF8QaKM5f7rl705y7Aa9p
         SoSFvKdjVYHM+2lVcYslIP87+rdsaoqmm05hR+45HtTTvZ9L5+oyPxAmZrEr7CRCjlJu
         z1j3KGjATWHEqozzt3JOBc8seDx3Xyc4dMkm1Xy2S1XqTfzdhv6WCswfn+X2qLj8GFKi
         lk6A==
X-Gm-Message-State: AOAM533U2k0ZRrGHYtUNl0Ki6lHzLeYxG5rT2sHZAfUrlqpDNnugN84B
	p/EHrmoIltNTdLG9+lAG9E0DlI/bRkMexV7Tk2cayzcNM+qweg==
X-Google-Smtp-Source: ABdhPJxIXV2nNeFTZg2kMXgmR127NJyNCvpc6nPs8OTolcrGXB8Cma1Y58KPc2LqoC5URfpi5R6BsIRGc1zIJ3G5Dng=
X-Received: by 2002:a17:902:c404:b0:15e:a090:dc8a with SMTP id
 k4-20020a170902c40400b0015ea090dc8amr1108110plk.31.1652902829029; Wed, 18 May
 2022 12:40:29 -0700 (PDT)
MIME-Version: 1.0
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Wed, 18 May 2022 12:39:52 -0700
Message-ID: <CADW8OBvo2NjaNEGsFsaT3QX3UtqvuLJbL07Kgwc1+qrJ51LiQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-29581: Linux kernel cls_u32 UAF

Hi there,

I recently discovered that a patch in Linux kernel upstream has
security implications. And some vendor-maintained kernels were still
affected when I checked on May 17th.

# Impact
I wrote a proof-of-concept exploit and demonstrated that it can be
used to achieve local privilege escalation.

# Vulnerability
The vulnerability lies in the u32 network traffic classifier and it is
enabled in most vendors. When u32_change function is called and it
enters an error path, it will mistakenly reduce the refcount of the
current network namespace, which can lead to UAF of the "struct net"
data structure that is associated with the current net namespace. This
UAF can lead to local privilege escalation.

# Patch
The patch is merged into Linux kernel main tree already and can be
found here: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3db09e762dc79584a69c10d74a6b98f89a9979f8.

# Disclosure
I reported it to Google on Apr 21st, a CVE was allocated on Apr 22nd,
and the detail was made public on May 17th.

--
Kyle Zeng
