Received: (qmail 3361 invoked by uid 550); 21 May 2026 17:53:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32212 invoked from network); 21 May 2026 17:19:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779383985; x=1779988785; darn=lists.openwall.com;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xgmbORoPC4vqrJBtnEhXcZ9Nw2HZwSU7PMf/QiEIXlo=;
        b=XSzwoQ7O14BPJVdPLexScCsT0XengBkDSqMYBoXhF4KtDvj8s1KNGnm18oJjO1eipk
         mZ/InZAJtEswGNTYYWu237R2+q98lEDqY8OcwSU5XSb9lDSDj3x9WvMCQ5nVR9ltuaF5
         zwZ3AP7APz8r0VNoniVLgMof5t3MMkRT2IoN+jh6TwUcHH417ObpQpFeN7wUrxOBfaln
         KPD65RFwOc+aIIrGWsacro1Nh+cuITiiWC2LSlJEwKLb/DMA+Eg5/jiRtKVlSVjoWCEk
         EwOmG9kV0/eEKg36n6RVNH5UWDqJgRA9Ft1vP1cvVkeKHowq5dxRg4M34o3BHuTExh4d
         a0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779383985; x=1779988785;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xgmbORoPC4vqrJBtnEhXcZ9Nw2HZwSU7PMf/QiEIXlo=;
        b=Kp2RRpH8Ys66N++2Ff8CcOIzCk1Dz5OJwG3SXCQ/aUkK8zjR/gTwPeJNfWqjhCtp+0
         9zZttFTCPBYYrikBopB2OjgkpHIyKzF4VyxMUQglp/tgS3MT7MXXf6IexqpCQWE9sND3
         KEkqO1G6tI+sEzEbVj33mzcWnjZH6Nh8rQY4SOueJAX3MkNu1hyZVRghN8OhtTZzZ6Ku
         u/FAasD4SS7l3BFAFM1WZaQyfRjtdw1fSr83jlj2/+zRJbzMosWQcYOojGkiVrE/IDth
         kZuy0x0r4DS0TY1ZtQOzXEwuR/dxcFgt0BMv+JkSX4FFD6wwVjxUXSlIKi8zUUkusCmr
         A2tw==
X-Gm-Message-State: AOJu0Yxz7kQkBN1Z19P/5TjA/UtqKl03A7MARiblFjbYtKgybOaz9kOT
	zGSkaCwx62pKR6gP3+jlob4rIXypxzuBPNsPim4W1T47ZwJFNi9K0rCKJDus7Q==
X-Gm-Gg: Acq92OGKHmUyQT/L+xsIc/3pg8evuQs/PwqxSTSgni3Z6B4VhGFun8EBD7Vd9QtukwG
	4b6h/uPT0zLa3pvOEzclSCJW+cv5A51tTj8y2nh7Svd9larx96WTfm1tUrHr6pOeuOe+1eCe2ts
	nrcQeG6TXyanj6m4MkTligfzvV9HGT2rRKWZQymLMXcQKqsuhoP+wv27AFpR60Tqzb4cjjuLHtl
	UG+eEuYomLsct5hfIZJGIqdzgSWZ6K47vq0p6KWO4WE8awEAqCJzDAQxffA2Prn+RiGMPhnj3V1
	ueOoAYBmGBosypD56R4+cPTTWzqrA3NwAZgdS4uXNynYN+PwLQCpj8vaEqpM1aT+TK56rP33H7F
	rBorLYD4jEc2V2BbCCGZMRDioySaZgkzuwN3Ko8rrtzocax1eL6Ur2gdcTTCASOBB/V6iulqziU
	o7flLMF6I9pyE4qtznCw+HzgQQ/OIBR+ucfF3tVuTrEeHsOYlU0q1Z/A==
X-Received: by 2002:a17:902:e78c:b0:2ba:3e2f:6883 with SMTP id d9443c01a7336-2bea3379cb5mr40769975ad.19.1779383985369;
        Thu, 21 May 2026 10:19:45 -0700 (PDT)
Date: Fri, 22 May 2026 02:19:42 +0900
From: Hyunwoo Kim <imv4bel@gmail.com>
To: oss-security@lists.openwall.com
Cc: imv4bel@gmail.com
Message-ID: <ag8-rm91DYcl7uxz@v4bel>
In-Reply-To: <agXllSDnfFBIo7xh@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Linux kernel: Dirty Frag =?utf-8?Q?variant?= =?utf-8?B?cyDigJQ=?=
 fix merged into netdev

Hi,

With the help of several maintainers and developers, a v5 patch
resolving the "publicly disclosed" Dirty Frag variants other than the
CVE-2026-46300 (fragnesia) variant has been merged into netdev:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=48f6a5356a33dd78e7144ae1faef95ffc990aae0

Separately, the patch resolving CVE-2026-46300 alone has been split
into its own patch:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=f84eca5817390257cef78013d0112481c503b4a3

This 48f6a5356a33 patch addresses four "publicly disclosed" variants:

1. https://lore.kernel.org/all/agRhFtawP06hWyRa@v4bel/  (2026-05-13)
2. https://lore.kernel.org/all/agSx78pXBFCdn08p@v4bel/  (2026-05-13)
3. https://lore.kernel.org/all/agVpIsaSherjHTYg@sultan-box/  (2026-05-14)
4. https://github.com/v12-security/pocs/tree/main/fragnesia-5db89c99566fc  (2026-05-15)

Note that the fourth PoC was confirmed to be blocked as well by the v3
fix (skb_gro_receive) [1] that resolves the third PoC, and the v4 [2]
and v5 [3] changes address potential issues.

As long as the in-place path in esp remains, further variants of this
kind are expected to be found in the esp module. As mentioned
previously, I recommend keeping the mitigation in place for the time
being.

This patch has been verified against various selftests and stress
tests without issues, but it would be appreciated if distro
maintainers could additionally test whether this patch introduces any
regressions.


Best regards,
Hyunwoo Kim


[1]: https://lore.kernel.org/all/agW4vC0r8QOUKtRT@v4bel/
[2]: https://lore.kernel.org/all/aga1VyHpHaUhnGZa@v4bel/
[3]: https://lore.kernel.org/all/ageeJfJHwgzmKXbh@v4bel/
