Received: (qmail 1790 invoked by uid 550); 4 May 2026 16:57:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18055 invoked from network); 4 May 2026 16:45:13 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777913104; cv=none;
        d=google.com; s=arc-20240605;
        b=Xkdi37illeRYz7J6hmLpY3qg5+wvMG89c1dQpD1vCXZLc4ZFI+d71iz2Hk0ngbECpB
         KM0yVSb0jB0eSLRyC1kc1JW4rF4F0DSLuRWOLd9XWehBn6Zkak+J5aAnl1iGHJ6YyObr
         fUN918bxAg7Ygkxr60TtAfIDZpaan35L2TUfrKu3U5Iiu6w76dupLctxzN98mha58/H9
         WYG+hUeb84krvQ5rPwM+bOSXwpoKofzPac+J4ZlBhBNeFrx0YlCWMA18U+s7su2UHbPx
         RwHZBj8229OvyhgqDD8TZ1YAzLFIvSE2dQa9OPK16/ZU2H05xZSRPRE2wOWydtgkLgCF
         W6Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BKxiLIJlwLYvGFjo5XA++aftFjg73pA4+TaEM1qJDuY=;
        fh=Plkhr00nmzOyoB+b8RIwFu72EZj8MjTfUzbd2I9uEuI=;
        b=fQRtIsiWKacsCZnLRBde6QkVtdpOtvv4hUj3Ti1nniihZWUPetqcmSHu5YHL5jnmdo
         DXy7dUahZ4w2G2dz8I/OVA0E0kvFDgleEIWFFPgm3g9m0EEHLzc/mjv4W6mcDj7C8o6L
         izdh96VfidyvFGHhJxQCp9+ylYcLtOF/iG15oq0yczWpwJVQumDnHPj4gtKYOYpO5lHI
         0uqIkD79MqlSzmg+52Fm56xOb6tZE5o/qg2I2sv/6verjOrhxvZQZ+yRq99WbFV3S93N
         BBqz/KAQ0kJn0JY4udMF1zmIdMV7I7EHPr6qCOtlv3MPGRb5O6+Uj3gC8H9XsQRCZ0X5
         wyIg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redcoat-dev.20251104.gappssmtp.com; s=20251104; t=1777913104; x=1778517904; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BKxiLIJlwLYvGFjo5XA++aftFjg73pA4+TaEM1qJDuY=;
        b=mTdJmnRVuQP0VGlfNJQ0qqcJkmRpX1ko+25yTqjy/rVqDQKEqWwONhjxURdx9h9m1B
         epEYmOAkFXdv7NJbki9weKHNa4enKkp4lsU1o4gYoXBSyqMPmS3sOX0aK1GHBZP+hG94
         8/cu/Bp5PiKdJ0uhpsoamxchcCZ1DLa6YeqYpXxweJpBwfM5dzaxYnv1KhfuglgO5JIG
         OCTQYngBA5llclsMIP6pi+CZxeXqDnvHpWvhYp0f9+NRgdvK4qXDIYVvFTtUbh0FNge5
         npX4v/s0NEmhD1AOLg4Mmvt9KRlbA1FQUuUeGDOjxbAdPj3z0wDZmCK9VbhBsOCTvZep
         vFBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777913104; x=1778517904;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BKxiLIJlwLYvGFjo5XA++aftFjg73pA4+TaEM1qJDuY=;
        b=RzL9NTtqno9aVAyx28HYWo/1NcY9oMl7vGguklw8DsTHukLsnNBuzAkGbZwuC/tO5X
         Koi4cFlQLtbqkU1pJ01HE6up5YhJyio0OeCeJIHvmFhBY+j33uWhOBquVBremmwwjMIN
         FuCjvatFkd8DhczE7nfRiu4hpqfdAr4a8GQxddcDNRSXuYRgNNpygZmborXyxqUETa9R
         aHWf76jSlYglMcnaBw2Y74FLiy5IHCJqhzAlkXsx/pPzYpnRDd6oF/N6CTgNKlL9pdwv
         rNdXqde/AjoXvg0sVYSaw4fTOFApVusMYkHqdaNVzh+j0V95vLWqqgXFW6YY6o2UaUTz
         9+gw==
X-Gm-Message-State: AOJu0YxbEcwlZZFUmo01qL+pIjNxBiIwSoV4WR7Vl/eT7KX/SRHR/vdR
	nR4M6jpBoRtuGTdFBJBEaQgqbyXQDaxOTRbslsz23AxqAXAlQXHllw50jqAUXhbA3TJQSAUM+ri
	Hw+/wuSX4U1Ck3oukSLSD/N+FNRYy0Eg8lm47uav3gYiVTP9M6lAJOQo=
X-Gm-Gg: AeBDievTv1ROR2f/i06kbRnmS3Lyb89vIJJf/hXvpjFHH8Pe3ol9aDZNdtK8OFC+cij
	Y2Bjg0TpUIbGD9cRmMMCQ6i4OHPseWujRhtNypUJ/4xXNJ/TDhQEhDmfg4alFYKqiXP6f1cQ809
	5lNP2NFtOsh0Q1hHvQ7LS6XBYDICiE69L0UcUaFMay0fJtuQC9+CQQk+7U7WXaBOPTBLYMgy/lv
	n1HWTlta7WWW3NHm/UnqI2cPelDHatYy8QMDeGBw2tgexHD7ox6noh6Vl13F41R3dt8/J3Kv9Lo
	X3J5Vz1fEYtWjbY7xSQKlC9xjC+qj1loKVmGFBaF2ecliCKtCEjpBdwK8UiZ0krbkX9a86rWzsA
	35/5zCnY8
X-Received: by 2002:a05:7022:660c:b0:12c:3d3c:ac08 with SMTP id
 a92af1059eb24-12dfd7ac2bamr4576123c88.4.1777913103660; Mon, 04 May 2026
 09:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <afJorKIje4O6dXbH@netmeister.org> <87v7d4b7a3.fsf@gentoo.org>
 <87jytkb2gv.fsf@gentoo.org> <878qa0b1o9.fsf@gentoo.org> <2026050453-gamma-stuffing-8606@gregkh>
In-Reply-To: <2026050453-gamma-stuffing-8606@gregkh>
From: Emily Shepherd <emily@redcoat.dev>
Date: Mon, 4 May 2026 17:44:52 +0100
X-Gm-Features: AVHnY4Kx-S81GcMDEkoUHbY51m8LT759_9sgErNxEYHRcJJJrmlTYmfM9eolG6w
Message-ID: <CACHV8XoX5vtjH3d1KKhQJ5_fr8qBRG7pnWFsLxw5UzngeoeA=Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Taeyang Lee <0wn@theori.io>, 
	Brad Spengler <spender@grsecurity.net>, Solar Designer <solar@openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

> Why this specific one is somehow
> more "special" than others was not obvious except after the fact because
> the submitter decided to provide their exploit code to the world to show
> off their tool

Was the PoC of the exploit / some description of its severity not
made available by the reporter to the security team / maintainer when
they reported it?

--
Emily Shepherd
Red Coat Development
