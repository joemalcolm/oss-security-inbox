X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["773" "Monday" "15" "June" "2020" "17:02:05" "-0600" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>" "24" "[oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" "^Date:" nil nil "6" "2020061523:02:05" "[oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" (number mark "        Jason@zx2c4. Jun 15   24/773   " thread-indent "\"[oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules\"\n") "<CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>" ("<CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22367 invoked by uid 550); 15 Jun 2020 23:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22337 invoked from network); 15 Jun 2020 23:02:29 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:references:in-reply-to:from:date:message-id:subject:to
	:content-type; s=mail; bh=NslSTqatLXz40BFWmA5eKcjpjfY=; b=UTq4SH
	MVkerDn7zQebwoH1/3bzXZqbadNWCfDpoCYvAPNMGi6XsF7p34yMBsegwXTVIw3W
	vQqJYTfecl1L0hOd4PUMFZ0UhEgHpNxvXSDU7MdVbqc6rBO6GhzVYI4A5CEyXKjZ
	Ik1tnJrMIn7gZZ/pldhFIhUuMR6M4WwuqXJgCJ1OQqgytDrhan7IFYLdq0lJ7veO
	Bqroi3/bOFNpegq/baOosFS1/+x+SGV3OrkPpr+aq04uqB1Ee91UVEi6ddNLb2Ok
	xz0lexBjrFOVdkPfWv+2H8c9CwdQT2j2pHCfr8wGUqOqw0kt/+o8wfzCuDTqsC7i
	EWttfqyer3SoEkSg==
X-Gm-Message-State: AOAM531T/7Xr8LkrEQ6paiQtiE9nyYGWBhea17pbZ87KSe4kSvb2Q0g8
	s+tPhcA8lXg/meJ0aGiwHm3WToiERFN0lYf/Pq8=
X-Google-Smtp-Source: ABdhPJy58I5QvyDUTQIJRoo3dMvj/7SFUJHbEXUnoAOxt5A7R0nKelxogVXcVG0lroT2KujLwHaNA441eWPq5eiVDt8=
X-Received: by 2002:a05:6638:1405:: with SMTP id k5mr22789851jad.108.1592262136648;
 Mon, 15 Jun 2020 16:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
In-Reply-To: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
X-Gmail-Original-Message-ID: <CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>
Message-ID: <CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 15 Jun 2020 17:02:05 -0600
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading
 unsigned modules
To: oss-security <oss-security@lists.openwall.com>, cve-assign@mitre.org

Hi Mitre,

People are requesting a CVE to track this and are poking me to poke
you to assign one.

Jason

On Sun, Jun 14, 2020 at 12:30 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hey folks,
>
> I noticed that Ubuntu 18.04's 4.15 kernels forgot to protect
> efivar_ssdt with lockdown, making that a vector for disabling lockdown
> on an efi secure boot machine. I wrote a little PoC exploit to
> demonstrate these types of ACPI shenanigans:
>
> https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language.sh
>
> The comment on the top has description of exploit strategy and such. I
> haven't yet looked into other kernels and distros that might be
> affected, though afaict, Canonical's kernel seems to deviate a lot
> from upstream.
>
> Jason
