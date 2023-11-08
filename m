Received: (qmail 9545 invoked by uid 550); 8 Nov 2023 18:07:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6035 invoked from network); 8 Nov 2023 18:05:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699466702; x=1700071502; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3V+Tshgeq/EsIwMP/xMJunf6yNt/VXv2j9QUHXbm29M=;
        b=RoZFoI5QTuijvW+MwKzx/dex5TWTesBNoZ4jDFh0nf94NoH56wjiCqlCq7G/aNemTp
         wVWpogLvSjEic6m0LUfGEb2rDn5fC5G9nyhK6saoceKTn/ikHsKGVKpK/OOM9tgUo2ri
         wg8ubeFHZcFYIuI6RH7BXETh9x1NP2gkgVtnFut5rN+qu8TSTp34e3tNLhpwMP4G6pAG
         t8M1UltSy/e5db1/btf+VmZ/q50e4MEpgAlEiE4ohjrEr2aJ3LmSQqleWiViRYObesDp
         Auta+/7qkgd0SM2lcA8nXc9vRdf/YmBWXED4jHEVG3ZpRWvmTrr7qaRM2EC251t5kmWa
         YQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699466702; x=1700071502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3V+Tshgeq/EsIwMP/xMJunf6yNt/VXv2j9QUHXbm29M=;
        b=oaBFnApFnjekrg5WKk956HEezouejOUbFufI+sMzbSlyBUUesdz2Zg8h473TC9y2Kr
         twLzMaL2tPn8wZ8qvasTVCbjH/Trc8IKsg+rwxkF1xm9zFUQYEMDtG9Rx+yIWa4NOKnF
         pJ1h1qgVhGX705Jg4pO1AVGjvOVqdBQyQbrLaewewa7rDNe18iG2l396Obofo1NKJ9fa
         DHGbqDZ0ANLbfHkH3ZR8jkDgdJpw8vEmzcOofLFoNsFktitH4Ifc1fnKH/miuRVOebgh
         SdT0FjDuMxq7BpxeHblxrwiPkGQ+QE106ioaINRntN3iWifwiNPl8PAGDdCFDP7Ndmi2
         CBbg==
X-Gm-Message-State: AOJu0YxQOC0zI17YfHj3BVmkORpMTL/s5x43omxOS/j7JIQu/7sOGkrK
	aYAohLlvOrN3aitYxUaW9clqvI7uHVfb6CKhJJs=
X-Google-Smtp-Source: AGHT+IFE+8hJjDsQ9ee8ESqJYQvd6XGPUfrPPohGa5S0ZTH2i9zySPgx2oJ3zZLU9wH/6HP6lt9+U/M2NKqeZ6oaww4=
X-Received: by 2002:a05:6000:ce:b0:32d:a35d:bd1c with SMTP id
 q14-20020a05600000ce00b0032da35dbd1cmr2210690wrx.39.1699466702272; Wed, 08
 Nov 2023 10:05:02 -0800 (PST)
MIME-Version: 1.0
References: <20231105224340.GA25140@openwall.com>
In-Reply-To: <20231105224340.GA25140@openwall.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 8 Nov 2023 10:04:51 -0800
Message-ID: <CAADnVQKaqKJA_PPLNggzt=BY6jqsCbgpA4MM9ikkP+qY4f8zSQ@mail.gmail.com>
To: Solar Designer <solar@openwall.com>, Daniel Borkmann <daniel@iogearbox.net>
Cc: oss-security@lists.openwall.com, Hsin-Wei Hung <hsinweih@uci.edu>, 
	Alexei Starovoitov <ast@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: Linux: BPF: issues with copy_from_user_nofault()

On Sun, Nov 5, 2023 at 2:43=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:
>
> Hi,
>
> Looks like the below wasn't brought to oss-security yet.
>
> As I understand from what was posted to the linux-distros thread, the
> issue was being fixed in:
>
> https://lore.kernel.org/bpf/20230118051443.78988-1-alexei.starovoitov@gma=
il.com/
>
> and actually fixed in:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/commit/?=
id=3Dd319f344561d
>
> and it should have been merged to stable "tomorrow or so" after June 27,
> at which point Hsin-Wei Hung was supposed to finally make the
> oss-security posting, but apparently that never happened.
>
> Of course, the delay from January 2 to June 28 was way in excess of the
> supposed maximum, and it is even more ridiculous we didn't post in here
> for even longer.
>
> This is what happens when no one in particular keeps tracking issues
> after they fall out of the attention span.  This is also why we need to
> take care of the distros list statistics task in real time, not only
> retroactively like I'm doing for 2023 now.

As I tried to explain, the fix addresses two things:
- the WARN. By itself it's harmless and the severity is low.
- lockup with CONFIG_HARDENED_USERCOPY from bpf. That is a real bug
and backports are necessary.

But the 2nd part of the fix:
https://lore.kernel.org/bpf/20230118051443.78988-2-alexei.starovoitov@gmail=
.com/

was never merged.
Essentially perf (without any bpf) is broken on arm64 and others.
arch_perf_out_copy_user() might deadlock with CONFIG_HARDENED_USERCOPY.
