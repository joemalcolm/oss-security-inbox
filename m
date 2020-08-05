X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["97" "Wednesday" "5" "August" "2020" "09:35:32" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9qsMk3YL83OsFB2mebkP6LXhXZ7n1FXzT52cZheevB5Ww@mail.gmail.com>" "2" "[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository" nil nil nil "8" "2020080507:35:32" "[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository" (number mark "U       Jason@zx2c4. Aug  5    2/97    " thread-indent "\"[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository\"\n") "<CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>" ("<CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>" "<CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23985 invoked by uid 550); 5 Aug 2020 07:35:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23931 invoked from network); 5 Aug 2020 07:35:55 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:references:in-reply-to:from:date:message-id:subject:to
	:content-type; s=mail; bh=tV17cpRtXBliZIf06waMEvxFsss=; b=S+3tXD
	D0piodoNXjViJ4bZ8wDeQJyDyeehh7sNhD9ouT1LY8nnzj2ZGZcPzUQS4zrrR5SW
	/HZCAHBBfuNGXuJAwttE7s2lDmZEz+dh6SLg+kQO2aNVkjQh2EFOWocR5VvjqgLq
	5P4KUKPLdYPX+sNquel5rBtsCo4i/ybPjOtVnmNCwuBagLNw2tKdorbWUG8eNrqR
	I/e+Yx7BPD0G2ynLOG/++VL56r5AN8A1ln5hGPxAsTggSHMiRSQ775rrtBx0utOv
	JY4n/7GT290wU0jue0P6eKEQY0wUIrga0wMZGM9A04tqmkoN4X/4LcpWBggmAcQF
	Wg0wXcDh0qo5MDPw==
X-Gm-Message-State: AOAM532zJ+Y5qfALLUnHfiu9R483PRbc5gc8+yxCHcuBjIou2BhRqKxs
	aVvMlLhOY8+pqjD9nD90mGB43QYi10mP7NnM9mY=
X-Google-Smtp-Source: ABdhPJzYeYmKV4R+O01iojsiAoFdT9guH/WA5ONwhj1h4PtxBjoZ1BxUYMYwqR/31DCkKrhMnGkR6+pbCY4BRpM1B88=
X-Received: by 2002:a92:d392:: with SMTP id o18mr2797334ilo.224.1596612942838;
 Wed, 05 Aug 2020 00:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>
 <CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>
In-Reply-To: <CAHmME9rC_D9U3ju_a-W5tsybNN3ZMsxGxXNeqE0g+QjKcxKXUQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 5 Aug 2020 09:35:32 +0200
X-Gmail-Original-Message-ID: <CAHmME9qsMk3YL83OsFB2mebkP6LXhXZ7n1FXzT52cZheevB5Ww@mail.gmail.com>
Message-ID: <CAHmME9qsMk3YL83OsFB2mebkP6LXhXZ7n1FXzT52cZheevB5Ww@mail.gmail.com>
To: security@ubuntu.com, oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: ansi escape sequence injection into ubuntu's add-apt-repository

Upstream tracker bug:
https://bugs.launchpad.net/ubuntu/+source/software-properties/+bug/1890286
