Received: (qmail 11865 invoked by uid 550); 7 Feb 2023 19:26:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28498 invoked from network); 7 Feb 2023 18:50:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ankSdsHQ+Bbdh3dxxMRD/krwWnbIdc0NPx2c/uev/v8=;
        b=H47QLc74TBdzyFktW9S0+Cy4ez+QngHaqn9JuRoLPYRwlFOGNH9vsV0w5Dy+nBu+tV
         fhU7+Vcn9EdzhfYL0E/zcsLpcygGOqLPkFTe86ll3y3Y9e/RikD3GhnxVdkKZf/nuiOn
         f/1u3GnJwUhq54xStSzawZcQhdRkhmAfFf3z4Eq8RP9my/ldHbq8czOardOyn0S6Z3U0
         oN2Xeu4YsbXu3kHSEuOySQiTM7A5Vtph4AOOw6hB+HhSH5b6yZi5Qn07LMUAx0tHzcIr
         L8hPLwPY7tEkApDK32a25Nes7iRcg9P3Cm14nUeMN+HDo0C1lZOgipW1s1ICzYRpQFQS
         Iw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ankSdsHQ+Bbdh3dxxMRD/krwWnbIdc0NPx2c/uev/v8=;
        b=O22tOTOhQCt3COmtYs3jw0pbTqF6l0WRMbNGUAbtdDXJXFdiiNo9NbA+oOO19/ONdy
         6wl4TKZHmsMHGe6jsNYnaGs3a+Jcl0WClX8ovWmFelNXvphorAW343gFMSlvD11RiNer
         YCtmNRnKEH38pBLbSzgdPGv/83LKbw4RESjowE/xP7sZjxNbYqnLsv3NhS7v3jUkVebz
         iORwiSsI9FE8UQg5GSGpuuLeXRRmzjPwvN9WX8sSC2VeQP65RDIglqk2vc1W9fPPhiLO
         5RB6KA/BshO88yJ1uYljtWbLGTJtU7Cyw1xT9TzN9AWAeupIxd0GXN59BoUFUUjYRyhZ
         UkCQ==
X-Gm-Message-State: AO0yUKUKvC5xlchRxaYdtek85h+QvKFszfVG8Zc/uQNTn12yE/x76htc
	yYQDGO4h53sBaORH8z0rJH8ndT6SdzksCvGr+M8D1M5qUcK6StqsHs0=
X-Google-Smtp-Source: AK7set/tmOOlVoMt5Yz49B2JAICA/12vi+Oq7hw5zIFL9NaO8tpYh7Kh1nBSsGBRmsfXeoXpL6BkNy1kTqKqhIYPjEA=
X-Received: by 2002:a1f:9b0e:0:b0:3ea:704:c196 with SMTP id
 d14-20020a1f9b0e000000b003ea0704c196mr651312vke.11.1675795798909; Tue, 07 Feb
 2023 10:49:58 -0800 (PST)
MIME-Version: 1.0
From: David Leadbeater <dgl@dgl.cx>
Date: Tue, 7 Feb 2023 10:49:47 -0800
Message-ID: <CAP9KPhB7PqqFt=Of8+6CKiaV=+p=WwYOjG3QF3TEBDDop1125g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-46663: less -R filtering bypass

Hi,

I discovered a way to bypass the escape sequence filtering performed
by less -R due to incorrect terminal state machine handling.

The fix is:
https://github.com/gwsw/less/commit/a78e1351113cef564d790a730d657a321624d79c
but not yet part of any less release.

An example that results in a DoS in xterm or iTerm 2 is:
printf "\e]8;;\e0m\e[>0q" > less-example-xtversion
less -R less-example-xtversion

This has the result of getting the terminal to reply with something
like "\eP>|name version". The "P" there makes less scroll up, the ">"
makes it scroll down, and then it prints the same thing to the tty,
rinse, repeat.

This affects GNU less >= 566 (and <609, but version 608 is the last
public release, the later version numbers are snapshots).

David
