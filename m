X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["562" "Sunday" "14" "June" "2020" "00:30:54" "-0600" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>" "15" "[oss-security] lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" "^Date:" nil nil "6" "2020061406:30:54" "[oss-security] lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" (number mark "        Jason@zx2c4. Jun 14   15/562   " thread-indent "\"[oss-security] lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1757 invoked by uid 550); 14 Jun 2020 06:31:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1725 invoked from network); 14 Jun 2020 06:31:19 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=epE6tt
	0BAxrDEDukv/0hymXvFp4=; b=vivx5cZHTkeJmwT+xEdew+KjBSdQESUHXNcRbg
	0RntOuQrgQwUJWGVipCuGOTet0ntvWRehGINyIu6bzq7VRDVytaHKom+MzQJTpyz
	RRu2QAOVfQRyFb+yoaUQoQe0vi950bKeQNZyv57Np7tmuiqzrj0p2y7EYL2njsSc
	LAtXrgZP0UuIftuuCCP//5iuNIge71j4wDdwWeUzeRYEpxVW98tTojwM5uHLICl7
	ZzU5gjVOKKOhmDHiCr6Pgw/zQ0yn6GjaGejxZQVOQYpQgadIzmTg0xciBPPXeJ6x
	IO4V+QFW20U6Oed/aEBnf6+E+vxfN3E4S/2rGKUoba4I4/Rw==
X-Gm-Message-State: AOAM530hP1bHtEXlMGPCPdagpPs9bCumNeuAR7Q78rcxi75eIYWSc9j5
	pUjOAyNP05nTEvVw14vxk1AIKN22OkOAgqRbV1c=
X-Google-Smtp-Source: ABdhPJx0cZ3OoeYvzVjuKOYmmRRC6RWnl6/mMWc0870lzOgqlVzZFFTBqIHfnic6MLCfkt8ZyaYg7waRfMsgl4rUDK4=
X-Received: by 2002:a05:6638:1405:: with SMTP id k5mr15175578jad.108.1592116265694;
 Sat, 13 Jun 2020 23:31:05 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
Message-ID: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 14 Jun 2020 00:30:54 -0600
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules
To: oss-security <oss-security@lists.openwall.com>, 
	Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>

Hey folks,

I noticed that Ubuntu 18.04's 4.15 kernels forgot to protect
efivar_ssdt with lockdown, making that a vector for disabling lockdown
on an efi secure boot machine. I wrote a little PoC exploit to
demonstrate these types of ACPI shenanigans:

https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language.sh

The comment on the top has description of exploit strategy and such. I
haven't yet looked into other kernels and distros that might be
affected, though afaict, Canonical's kernel seems to deviate a lot
from upstream.

Jason
