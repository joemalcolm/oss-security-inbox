X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["34" "Wednesday" "5" "August" "2020" "09:34:23" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>" "1" "[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository" nil nil nil "8" "2020080507:34:23" "[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository" (number mark "U       Jason@zx2c4. Aug  5    1/34    " thread-indent "\"[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository\"\n") "<CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>" ("<CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16230 invoked by uid 550); 5 Aug 2020 07:34:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16198 invoked from network); 5 Aug 2020 07:34:47 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:references:in-reply-to:from:date:message-id:subject:to
	:content-type; s=mail; bh=ZRn3gQM767mWGmbu+mO2fWmXl3o=; b=19IYmz
	5Lk6Fz85CfWKJNTf40FM2ihX6Ehr6gTX/QgmnxRnVAu6dwux/+k3TE9ZcOEhycvW
	AkCHbkS4detRkkzbjL/2fyQW7r1Ki69zM3VoR7FRFWXsUOFaVckL7jKxlcoTZL4W
	ceTvlHoL5HCa3gjFllUthPp11tHGSWMO88cIyC0pPtIWiVeVHvIPXJw2oXE2EJ/d
	sPqnhdza1t1fR9mKaULc5oAEQkIExlgg8bPft39OUmQH7uaawDLpTqHJKvUSdcvI
	ZhnVu3+Ls3ef0szVgKc3cYp74CJ46nYjgkc+Su8iUVJbZqqNOT/gMr2tZ9/ih16m
	ynaCrbZlrDoQrvjA==
X-Gm-Message-State: AOAM533jLhAq8+BmamED3SPzcdYT1alrGJuvZHv2l4B/6Fim2yNa0WIn
	f2+lrNNpgzyuMHwPGywrRiDZ9R8uyL1SR2hkkb4=
X-Google-Smtp-Source: ABdhPJzUwj6a26y21qHNWNExYGZiyaa5k3OKEtZoiKS9c+IvJyk5kF+YCnilFU7haVJEZSxTMsUskcfgHMqAjJzuNQ8=
X-Received: by 2002:a92:ce12:: with SMTP id b18mr2646556ilo.207.1596612873957;
 Wed, 05 Aug 2020 00:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>
In-Reply-To: <CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 5 Aug 2020 09:34:23 +0200
X-Gmail-Original-Message-ID: <CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>
Message-ID: <CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>
To: security@ubuntu.com, oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository

This was assigned CVE-2020-15709.
