Received: (qmail 15906 invoked by uid 550); 14 May 2026 03:50:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17912 invoked from network); 14 May 2026 03:17:31 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778728643; cv=none;
        d=google.com; s=arc-20240605;
        b=XWa82fBbhqX0PGtjzPsD9cgvyarmgG6SP1fenkd3WKawrhbidEeIINMOG/AF8ihYXI
         LYFz6skZX7HhxNTiJBMTUO6Y6JRCmtinBmgfOsLPZQgtBUFOz7UIlakKf18ijcOhzc8q
         mmhROZMNe+XPx5SZcxpcD4XeLjfBxEIMkLqKfKaIN6Y0VxFESQN3XMZGm3Z2aC8weYt9
         /0eC+00nsXwOiOhG0qjhVVqhjf9kHXC6UOyQT/2MBpG6cdy9SvobC3NwXI+FEwvHdkj9
         OMkIRa099OzT0zCj9mNPuJZi1siZA7pVPJVHSFQy7FBq1Ssy4X4JmjT7wtUwUhLXhYuk
         D3aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=1y74g1oZaxUEKTIVzu+Du0ISMYEne+66NsMm0z2I4HA=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=K8jy9jHOHrMknsf5pwTgJ20h33GsmMOlbDXijBiMn0E8WkMUiU+muFTqpJ2Cx1zAkL
         PGG/A27FWwiSwrtM8HYN1YuVwQFCQxH9z6gBqcfWowFQKoAGHh8/HhUYy1TDX1kwUkcd
         a+BnFiJXzQD2ZSGQ9TT2MZ4sEuwZCin2XBIPdksm8aELYJqS7Ki++JqZ3gMpX2lByRX6
         szJZ6D4whDbJD0MtyiOKegLCghlnOpRgiypoVN0coWjksN0WwZSPIn8VzYzDo6Rw2sAz
         L+zhdttDGjyk/ZtSgbl8v1RvBAykZHB6mWO41LmCVpE1YxxlEDh/u9UcL4KDe4q5If7U
         b9xg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778728643; x=1779333443; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1y74g1oZaxUEKTIVzu+Du0ISMYEne+66NsMm0z2I4HA=;
        b=K8GgU1OKBjNZy6lSA9i3bomehxwTNMGGCsYfzdyKgjksyzBKo61UETzDjC/6m2h9b4
         eNdd7OFs/E3xB5QqdCBsaDNsI/bPGXnIBvTs/1wQuQBxTlWsUcdSYUvOHw5w5d1SfUDJ
         lwfhXT6ALI1lgVo/Rcfx+m7JAe2ZoExp9WSNpbhl2KqcuwUi7ZbfNYE+DgaW6ReFXCx+
         PAusu1udkxmJ/HUlVTbDyoly3DZO4nYAqdWk+ceC7n4T5hSwXrKm9655Y0OZj2BXgRz8
         rxE+EDOH1rLF9Z1WJRbFpxMGM1xVqu7nf+eMdv4bpVrGxNaLIOnkYxxpGsWTaPdSbnnM
         hGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778728643; x=1779333443;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1y74g1oZaxUEKTIVzu+Du0ISMYEne+66NsMm0z2I4HA=;
        b=MbhS/tJSgum7oRx6D+JDmMk6ePC8geLcEwRNn4EfxIEqN2wGJa8NzXhDIgdrRXYT56
         itdfnXolCUtOG/EqkJ5RXWsQBOfsygQ5J1qJokH6lfsG/Lo4ebYw9ztbLJ/KWhxfvZyz
         FeDunqMGQ0VPBH10hq0ecjX8u1IoLghuKa3uon/J2qthPz2bigOn+GWJfIGYYmCFZMVK
         nSjCtJdSVVxK9Gpo6LFNeNF6FpRataBD8zQ8FwFuWvJRZ3G+h6M/680X1JPiqfZwe3vt
         uFOA63lBXNJAZjBLQOHZvN9t8xYfpCLv70hnAJBzdbxAC6Tx8w+9MWp+dqNv2aYWoCez
         bV2w==
X-Gm-Message-State: AOJu0Yww3kygDC0eteeBD8FxX9IKmIdMDqQRB4Lue5NOCCodKTcdrggi
	0avwNtoSMxYm10KQtRrDWCUgoTlZJjcMySzbra1PM+Sx+imovzluecbXitf9yW1mUrby/pytiZQ
	r2Lc1TC+w2QYKrdxmbVZQUomgZ4DGIdTcV5dCoAzJ8Q==
X-Gm-Gg: Acq92OGCLNAQ96T7hZHtOI2tqwcXRr81B/y+cPIX/CP/9ywJlTk8CbACfSgU2AQZ06c
	Qmog9kFyXfBHoC7LoF+ZoybssvnEsSqwPeOR2Y+ucAB+DCX7CEmUJ5cvZUC8h7DWTdOw6j7auT+
	dhfFNUl8kh8A58YeOUSAwEZigK65EnqKcjKkM+5plwnBOcv/KwoElnQUbn6+zGZKLPQEw/NPPyL
	1AzjuhbJ9HW/m7dFFS5CbxRIMw2Yp0t6O8DbLWw7INY8vi3g3HUUoByz7OSLS3faiPbb+CIbhua
	SSGpB6rK
X-Received: by 2002:a05:6102:d94:b0:633:8c42:183a with SMTP id
 ada2fe7eead31-637a745d9acmr2975369137.9.1778728643005; Wed, 13 May 2026
 20:17:23 -0700 (PDT)
MIME-Version: 1.0
References: <afzkg48dgcKJF/6E@256bit.org>
In-Reply-To: <afzkg48dgcKJF/6E@256bit.org>
From: Tianyu Chen <billchenchina2001@gmail.com>
Date: Thu, 14 May 2026 11:16:57 +0800
X-Gm-Features: AVHnY4JbWndEv1jK-k-Wr2kS8xkUQzMHcp9ABl1ZGJF0iF6A3mvJxiFatec6QJo
Message-ID: <CAG-20GToEuBW5jHN2kMj3avJn8ay7uEPqSwbnNSdx_OmnePwgA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000eb10260651be88f7"
Subject: Re: [oss-security] [vim-security] Heap Buffer Overflow in spell file
 loading affects Vim < 9.2.0450

--000000000000eb10260651be88f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

According to GHSA, this has been assigned CVE-2026-45130.

Best Regards,
Tianyu Chen


Christian Brabandt <cb@256bit.org> =E4=BA=8E2026=E5=B9=B45=E6=9C=888=E6=97=
=A5=E5=91=A8=E4=BA=94 03:14=E5=86=99=E9=81=93=EF=BC=9A

> Heap Buffer Overflow in spell file loading affects Vim < 9.2.0450
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Date: 07.05.2026
> Severity: Medium
> CVE: *requested, not yet assigned*
> CWE: Integer Overflow or Wraparound (CWE-190) leading to Heap-based Buffer
> Overflow (CWE-122)
>
> ## Summary
> A heap buffer overflow exists in `read_compound()` in `src/spellfile.c`
> when loading a crafted spell file (`.spl`) with UTF-8 encoding active.
> An attacker-controlled length field in the spell file's compound section
> overflows a 32-bit signed integer multiplication, causing a small buffer
> to be allocated for a write loop that runs many iterations, overflowing
> the heap.  Because the `'spelllang'` option can be set from a modeline,
> a text file modeline can trigger spell file loading if a malicious
> `.spl` file has been planted on the runtimepath.
>
> ## Description
> In `read_compound()` (`src/spellfile.c`), the buffer size for the regex
> pattern `pat` is computed from the attacker-controlled `sectionlen`
> field of an `SN_COMPOUND` section.  Both `todo` and the size variable
> `c` are declared as `int`:
>
>     c =3D todo * 2 + 7;
>     if (enc_utf8)
>         c +=3D todo * 2;
>     pat =3D alloc(c);
>
> When `todo` is sufficiently large (e.g. `0x40000005`), the multiplication
> `todo * 4 + 7` overflows the 32-bit signed integer and wraps to a small
> positive value (e.g. 27).  `alloc(27)` succeeds, but the subsequent loop
> iterates `todo` (~1 billion) times, writing bytes into the 27-byte
> buffer and corrupting adjacent heap memory.
>
> The overflow only manifests when UTF-8 encoding is active (`enc_utf8`).
> Without it, the intermediate value remains negative, sign-extends to a
> huge `size_t`, and `alloc()` returns NULL harmlessly.  UTF-8 is the
> default on virtually all modern Linux and macOS systems.
>
> A modeline in an unrelated text file can set `'spelllang'` and enable
> `'spell'`, causing Vim to load a spell file under the attacker's control
> if one has been planted on the runtimepath (e.g. `~/.vim/spell/`).
>
> ## Impact
> The vulnerability allows a heap buffer overflow of approximately 75
> bytes with partially attacker-controlled content when Vim loads a
> crafted spell file under UTF-8 encoding.  The practical impact is a
> crash of the Vim process (denial of service).
>
> Exploitation requires a malicious `.spl` file to be present on the
> runtimepath and the victim to either:
>
> - explicitly enable spell checking with the matching language, or
> - open any text file containing a modeline that sets `'spelllang'`
>   and enables `'spell'`, while `'modeline'` is enabled.
>
> The severity is rated Medium because exploitation requires both a
> planted spell file and a separate triggering action by the victim, and
> the practical outcome is a crash rather than code execution.
>
> ## Acknowledgements
> The Vim project would like to thank Daniel Cervera (@daniel-msft) of
> Microsoft Security Engineering for reporting and analyzing the issue and
> suggesting a fix.
>
> ## References
> The issue has been fixed as of Vim patch [v9.2.0450](
> https://github.com/vim/vim/releases/tag/v9.2.0450).
> - [Commit](
> https://github.com/vim/vim/commit/92993329178cb1f72d700fff45ca86e1c2d369f8
> )
> - [Github Security Advisory](
> https://github.com/vim/vim/security/advisories/GHSA-q4jv-r9gj-6cwv)
>
>
>
> Best,
> Christian
> --
> Man soll die Wahrheit mehr als sich selbst lieben, aber seinen
> N=C3=A4chsten mehr als die Wahrheit.
>                 -- Romain Rolland
>

--000000000000eb10260651be88f7--
