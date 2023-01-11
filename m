Received: (qmail 17678 invoked by uid 550); 11 Jan 2023 13:14:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9673 invoked from network); 11 Jan 2023 06:15:01 -0000
Date: Wed, 11 Jan 2023 06:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1673417688; x=1673676888;
	bh=IDrTok84BzWdck10RbkzQEVVCdxESw69JWqsQ2gVcyI=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=D7qsUZGT8F2KZLSGR6mfofk290ritfWqgx/GDZZijXVqzF6VU0VYmROMsPJXGbtYk
	 dgi9fW+y0+l9LKBNO0YoJojYCFgLDIZKoepEUteaeikxzFOOgqQx2zfNz75YrN3rll
	 72mt68HmRPjMzhcTsoITi3LYxgOuqyN3koo703ZJAvxdXwfUEsVX01Orn7L12nYkde
	 YYjNKA5NBeFnRyB6yhALSzLiixI9+uACvTJOicqbSBgWGhbRzLXBGD1VUyplMBzmZR
	 KW8QySKzAWao/c2+jxjURqR7F9EQg1HF6MsdKsvKL5uoNbyGXppZ97tAtPzxdGgu2G
	 uK4HRILUez13A==
To: oss-security@lists.openwall.com
From: Will <willsroot@protonmail.com>
Message-ID: <jdzFyT-yMNf1Xi2J0avvAzYAa2Gs9xizA5V75N5baWiik_LhXUZ6jqQ2EP8VSHU3OQ5koXZ0OO_w-bNWLK0JzS_6uyi2TNdQ3oD9Ujs02PU=@protonmail.com>
In-Reply-To: <CAGakKvz79Ey501w4LwNsMv4zj6LyYdagNyXWOrEt5Kus9xUmuQ@mail.gmail.com>
References: <CAGakKvz79Ey501w4LwNsMv4zj6LyYdagNyXWOrEt5Kus9xUmuQ@mail.gmail.com>
Feedback-ID: 25491499:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux kernel: Unauthenticated remote DOS in ksmbd NTLMv2 authentication

This is now tracked under CVE-2023-0210.

Best,
Will
