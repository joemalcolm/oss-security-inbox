Received: (qmail 4015 invoked by uid 550); 28 Jan 2026 16:13:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7687 invoked from network); 28 Jan 2026 07:57:38 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1769587047; cv=none;
        d=google.com; s=arc-20240605;
        b=aSM9RLj15GubGdiRg+5nlZ6LwLZw7Q9Sm6JdedF1FUenNNBAoBIoDLrWFi6ZD+G/n8
         owGebOSiFf5uZWNdrSLOgewMZuEflYLRSLL4eb3yr8R6Gf+B9EQv1JBH3Y7f01IrnIz6
         d6vMJrnCoKUwk716Q0wPmYzPkXJ3PwTKZ00n5U++vKx0R8J7Tj0z1wcHwrF6rNzK57TQ
         5FpX8mKBw8p9mV6VK63gmiGtv74NuoJUorVDUwZ7wVxc7s1DNP88pQzurZv3r8J57jPT
         eibhQUlghjjXiOqvnMVlj0FfaUkN+0Gz6fjvNcb7zEimBZL/oJMGSFU8dElpmMzB//LW
         P0Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JawCjF/0ksuKf5VcEE0WZSO8BevcV4XOLyQ2BBBh2vY=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Jj9LhwyE2PzEqcCEDZVfehjc3RSa8EGkmTXgJuQS471vRToh8dWVdDig1JMZOIC0++
         Q82aByHJnsMdxQ9XuwnLmC8i6mgtAbMs0HEoLt7mznA84+hSb/0S2KuFyDumjbalcjt0
         tMQ9jkm0UilxKANUATZTZYy2MHevigeK/PhfBK3ZgMd/qcUcDgP2kwD6Q9nQTgA0Mjyl
         /wu4vcizHxVVHlyRRFF6g12/aeXrNvDY/MstMtzvukm5TtrXhBJIYIgUV0r9zi0gnQN7
         EPJXJLFSUT1gNZ2cby4JN+Zmx91CZpSUnnozNf6lUnGZcETTFTHoaIJTk+DPsUl5J9Dg
         ns/A==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769587047; x=1770191847; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JawCjF/0ksuKf5VcEE0WZSO8BevcV4XOLyQ2BBBh2vY=;
        b=SlPKho9FGTNDQKb4Rz7rwlWoUOW48ZUxcjSbaA8AFY1mIXmY4yEQayYK/0ea7Abf8A
         UAFmS6pEuFJc1QX/0RZ+9Ci2n9KkJePQDAypi16/ZR9/8FMaAAQOoQGD1laK8BKscHM+
         8MhVgoOpYgR4nW3jn0wNnGMeeRY6BzjdJ8UisUykjis9S3OU8Eo6RuT9k7/eVExDm0LR
         K2xujQHLr87golZvJevvXd1E3z4ZKnep4ZsO0lauBjRLAEHhwT4apM5R+Mk+io53FyIc
         /7Uscs28sSavVqBAaPNdb4uvGYHj9DY7gHNWzt/fISxdK+HPH7mv1R+8pb6l6vOCY1TX
         uh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769587047; x=1770191847;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JawCjF/0ksuKf5VcEE0WZSO8BevcV4XOLyQ2BBBh2vY=;
        b=grjr7PNCcieWqhZVqdbXilT+sSGfkjPsHdQghJ09cq4jqKhzqjKMLa/a+1kapwJ02s
         qeNHPTvervzDYdQLQJbZwBT0tiGCh1+SH7gxB7htYqWBnL1BIr+tWbEF+T8AUxhUrPKA
         VkRaFV1tDFGymdjHgy9QNOQVh8qjDBjBAiWNlUlAFGi95WCRmC+/ycOlveacHOfoXqq4
         8pKZmamdKECevqdcK+lD+NfniMb9DCO9EUVJFBU6XCmeaMNIniDZr7QzYulwskI8mdxb
         PVskvxk3dFuBUgSP5vj3T9kfU4v9Ny0R8JmD5xrZvrixxZlAP1GwwSME9iKCnycEZB7Y
         N1FA==
X-Gm-Message-State: AOJu0YyW3CC5H/8/g0+l6mkJVr+3S0IQX4JQbDLc4UhweSYo7H56AXxo
	zAqg82Wc5bzI4cMsIO9vw1QpS85xnC/9ZUzoMz84bFnWPObuGVzIZyqRHsh7nfTlvMl5jCnCVfh
	Zp90ksq+6vlGIx3Mm6N7tPIato2wVJUiHDn/Zd9jQ3A==
X-Gm-Gg: AZuq6aKx2WmTup6VnGhyLr9fnmdhVL8G/q+Ic31+p8ZzKr2XCh3zt+5W7q2Qd+0L6k1
	7hto8lYnwaxce8GgOR8+1Z+8J6sSGOgI4LVl7Tsp0d8mh1uT2eENkTyWpupqtI6WFakM5VQ6aJu
	1E3h4+ctrNXTXqbx30GS+jryPo2JCuN/xbckYXvK/jgBe0F+hSVFSLeiMoHAwcymopg48daPmLY
	6JuFdO0ncDYEsrtmFl3XXOvqT+sH5vP5hOQlMg6Pcuixz8luDiq6jUzbAHUwy7R3J4H+Jqq
X-Received: by 2002:a05:651c:b0f:b0:380:a1c:7039 with SMTP id
 38308e7fff4ca-3862af0bbefmr2345721fa.0.1769587046453; Tue, 27 Jan 2026
 23:57:26 -0800 (PST)
MIME-Version: 1.0
References: <CAPmip_w_x-4qSOH-8TAUH9vtz6M+oh+fCcwptqsp7zqj6OBmpQ@mail.gmail.com>
In-Reply-To: <CAPmip_w_x-4qSOH-8TAUH9vtz6M+oh+fCcwptqsp7zqj6OBmpQ@mail.gmail.com>
From: cyber security <cs7778503@gmail.com>
Date: Wed, 28 Jan 2026 07:57:15 -0800
X-Gm-Features: AZwV_Qio_2k2GQ2Jds1ibSnf96O9_Dz_v5t_9swivLiKlf0WoM4KYgosXe9gQIA
Message-ID: <CAPmip_yNY76cDYU3v=34vYnR2JxyGmDjpjW5d11tzSqSnXrzcw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Clarification: rbash escape via history built-ins

Subject: [oss-security] Follow-up: rbash escape via history built-ins

In my earlier message I described how `history -w` can overwrite startup
files in $HOME, breaking confinement in restricted bash.

To add one clarification: even if administrators place users in an
unwritable subdirectory (e.g., $HOME/restricted), symlinks from that
directory back into writable $HOME files (such as .profile) can re-expose
the same vulnerability. This means that simply making the working
directory unwritable is insufficient if symlinks escape into writable
locations.

Recommendation: Restricted environments should ensure $HOME itself is
unwritable, or that the non-writable directory lacks symlinks into
writable paths. This complements the earlier advice about history-writing
built-ins.

-- RelunSec

On Tue, Jan 27, 2026 at 3:33=E2=80=AFPM cyber security <cs7778503@gmail.com=
> wrote:
>
> Summary:
> Restricted Bash (rbash) blocks output redirection to prevent file modific=
ation.
> However, history-writing built-ins (`history -w`, `history -a`) can overw=
rite
> startup files such as .profile if the restricted user is left in $HOME.
> This allows PATH resets and escape from confinement.
>
> Steps to reproduce:
> 1. Start rbash in $HOME with writable .profile.
> 2. Run: history -w .profile
> 3. On next login, .profile is sourced, PATH is reset, confinement is brok=
en.
>
> Discussion:
> The Bash manual notes administrators must configure restricted environmen=
ts
> carefully (unwritable $HOME, different working directory, restricted PATH=
).
> However, this particular escape vector is not documented in common guides
> (e.g., https://0xffsec.com/handbook/shells/restricted-shells/).
>
> Recommendation:
> While consistent with current design, administrators should be aware that
> history-writing built-ins can modify files in the current directory.
> Restricted environments should ensure $HOME is unwritable or place users
> in a safe subdirectory.
>
> References:
> GNU Bash manual:
> https://www.gnu.org/software/bash/manual/html_node/The-Restricted-Shell.h=
tml
>
> -- RelunSec
