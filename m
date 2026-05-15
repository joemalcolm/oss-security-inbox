Received: (qmail 17694 invoked by uid 550); 15 May 2026 20:38:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13653 invoked from network); 15 May 2026 20:22:14 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778876525; cv=none;
        d=google.com; s=arc-20240605;
        b=hsLSL2aLo9YHNuBqCsiIcE/c86z1p1WeDYlrtW13SrvLZ0P5+n4kdXF9PDHMMvFWLY
         9Jhvp3G9wpyAGNprMjwIcDS7Qhhb+OPnACf8NRc6lD1XN66N8PI7SvIy8RD4UFDPiKoR
         62tsd/8S7nWfZmYAJKegBOHPYQd4EkfYEWDj87ztOed6zfq2cu/GfiVpBbsNBH0U8mVC
         wtFKmcLj+Szi/ViiK2VTpqDIDFeB1VwbPHG7veEvcmzk+KQC9KQkkqSBZOWbdq/8NFIs
         Zhyh9MmvwSLbaJehryMIQbCoXaadpfpoicAmXlmp6AAWDgBlF8VFYQpmCX4fuCLRnIF6
         bCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Di4iKLM2v8CaIBdtE5/fqYHDpPajCwb5ndOPZ7nTuvQ=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=i2lmwJNQ0JkVlYpqryCcaNFJRtC0HRP/BERm1JmUea69YAELeVo6hyCP7A75HOsr1c
         nIjcbCn2HFARVYFZry29FF6wxc13pzzo+YSia7LzaKZA7npB4TbhOx0mmTZB7odvNAos
         4fnVauu3RXoBjWwaRJ5764JHCapniPxFcgEXEsy0DCoE6684HJDsO5a7a8Dk7U+0pd1C
         XOThnbKe63DmEF5iP+FQ80GAbnUimp1S5uzrF6PTPvUEIFW39ivJVLdZhJ2XSH5WM4gy
         15WFKAPFT2VzAEQqpgOKDgO3x/rVsY8cZcscHDD1yXU7D0KOmeq6MUOyMICjZd/GnMzq
         wGRw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778876525; x=1779481325; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Di4iKLM2v8CaIBdtE5/fqYHDpPajCwb5ndOPZ7nTuvQ=;
        b=D5I61xFDerQelBba4jFdCIub2jWFnsKTTo+OQiYecsWeHm3z8AXGTGW+g60mlNMYSZ
         ubvci+1Kn6T+E7xlubds62106nCgllkST3AnAL4vmbRvsxVzompBqxUXyDAi0xpeqKnw
         5mbOmHVnMjmJ7kbP4l3c4Pv9+UbmCZdTivi3vVSE6jGkb4TyLZHhmKlTSHqwY4TYlvJF
         Ez0Z8SYC9VHrR6+X2/2Y91lI7qAF17X97b9nhIGvr0eeE5GF13lkAyGEQ7uHUTHFFEZ5
         AsnspyX/qDm32JPS5uEERPNdvEGtrU2VfqPe52tsduMG6EHCdWj75SaQex4y+FDXcUYN
         QcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778876525; x=1779481325;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Di4iKLM2v8CaIBdtE5/fqYHDpPajCwb5ndOPZ7nTuvQ=;
        b=LQCnlqm6OWlY/NNdU8Fc8K+65Xg71wmLcM6oQk/MkQ8CDNrCa+G72tk0FEM1piqjow
         ppPQoOvuOT+eMDEfqXP000SCYVxeojmG7kEPgEn1/IgikqB/evHBRx12UXWarLp7AQ4a
         1yfEi8/D6TpMhVp042qGkjqyU0O/ZsVmVvgTFs6IsSOQLkcF1yvZJs5XApWcNoMS4cxL
         R6o8UvRp0FQ4H0/sZPJwnivpltzhFgbC/4NWXqhzWnTKCF+8XR8qP6MzAxXhstIPErAd
         eAPPkVdcirV4laoifMf5i6j3FpIluHP/a71MvkcZ+geea5B3l7gVCdeHp1jxEup25err
         8FEw==
X-Gm-Message-State: AOJu0Yzq71JwucfLiHCi6Dnu1YSwJZCtpYGIJF6oJ52PHYVBsEosq4x4
	e+hP9xns+wyBGXDsLEoKbyO2j1ehLwqHGvI01B44LuA947cIYBt85VzeJge/CkPbnRuv7M9OIBu
	oO8sBL7j0CTAT9N2f+j87m3iimQjZPvsJ5rH4ZsYrvfM3
X-Gm-Gg: Acq92OEYkBvkBbTRBrd7nTDAtm+TAfcS1tWJ3715PPsF8MQSHJnjLGaRsuS1v41tKgr
	dcajCas3E7pslQWBM8QW8ERoAtx6wZfzjoGP9T3mSb2mfWk4Z22/mMYhiiMfC3JgnfxXu6jRFaI
	tgG5gNtTO6IPoIPBwp72S3f69W4WHiKC5qLeS7Qo/6cBPK36torwPgubhhnHU9iSuWXSZBGKrzo
	ahRwysccvSFfxTloRp+yI/beA9TlD7auyQMA1oWSqSzAMD2eoExeToN7WAQwRM+xSliLxQomi/p
	KU+GPGKgu9R+/k9nzMRkNGyNDBvNA3HQSTfVfZQ7llWyR9S/VLq+Ug/c5Og0e0zVHJQ7nAsnlbi
	tcP0IIF3iZIm5NHPpMA9SbV0Iaxg/r8zKXn5cgB5iXCCGPc4b2U4xt+yxZiKROw==
X-Received: by 2002:a05:6512:a85:b0:5aa:b6b:a3f1 with SMTP id
 2adb3069b0e04-5aa0e74bab2mr1909556e87.45.1778876524597; Fri, 15 May 2026
 13:22:04 -0700 (PDT)
MIME-Version: 1.0
From: Stuart Thomas <stuartpaulthomas@gmail.com>
Date: Fri, 15 May 2026 21:21:47 +0100
X-Gm-Features: AVHnY4IBwDkT43NzcOJfKW6ea2FY1AKmWaK8dPH-Wj_yz1o1ZTLvBVJTDfvCqVA
Message-ID: <CACS-ydN8PzrXjx6OPVz1oGDe1Kj3Os3CWDnJ-=2QLbMvoc-qjg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000059156b0651e0f740"
Subject: [oss-security] Poppy: XPC Observability & Fault Injection

--00000000000059156b0651e0f740
Content-Type: text/plain; charset="UTF-8"

Poppy: XPC Observability & Fault Injection

Dynamic analysis toolkit for macOS daemons. Trace XPC messages, map
entitlement checks in real-time, and perform targeted fault injection via
Frida and DTrace.

https://github.com/jetnoir/poppy

--00000000000059156b0651e0f740--
