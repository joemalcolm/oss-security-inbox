X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["435" "Monday" "20" "July" "2020" "04:33:11" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>" "13" "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" "^Date:" nil nil "7" "2020072008:33:11" "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" (number mark "        noloader@gma Jul 20   13/435   " thread-indent "\"[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens\"\n") "<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>" ("<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20215 invoked by uid 550); 20 Jul 2020 08:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20184 invoked from network); 20 Jul 2020 08:33:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=obZS7UiaTqF+en9QRodwNAd3fp/30aL0ujpIRoTGaIQ=;
        b=ZCqmQJlfqbtEdoSNfKuCIUaC/jfR9K75ZMkaYpTUqAk0foDEQP9BdfhgULjADFgULX
         YeIL3LA4gCYRe5LWLeaEIjd55D/rnpBUYWutHUUz9oPNd5K3zcvb79U0pRZOu+A6U18A
         kiIIp8IyhxYxouTgvJEoC7FKceQJkP6OQRBvNwCfPH3n1jbthAQOZiGfYIti0SDaVqV9
         ww0gDbfucSI+8Dy3qi9+WGh05WtWt9OaV56Awtc6fCU8LrM56dXs+a8wq8+y1NH8br+0
         0CyyLHFDlnKwmnt9MmISPG/ZpygBRy0XyBIIgkgxItIQfmGJgnCl9VBvhpxNNexWYVxJ
         LvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=obZS7UiaTqF+en9QRodwNAd3fp/30aL0ujpIRoTGaIQ=;
        b=btfYQhfT0a6EKtCo00qJRLoEf5JZ+VColI3mDnE/uchehItFgPbjkhxlNlgFk1SbcQ
         FTXXbWop+/787831IUyUf2Qnqh/XJmI3lEVYv0JOEnpcSTXtY1VmVku32p8ROihimQN5
         jiREO5uPr3UzSApLhKhxbpf9TM1oywJvu2ocYND9wU8kTMdtI1aLdaqkkntp+zcbB3Fx
         /J4eor39oIoTv5tPFFjIsZLMtkoMLd8Ant7OhbX188f5/o3Xw2NzNzdeC0KPLWFLwZjQ
         7vACWarfckQMRLbHKJmoB7zS3VI5hwy2aBtbCPA/2aXosXGUqC8FeZaAx5jRYqSqgfmq
         aa5A==
X-Gm-Message-State: AOAM5318crBKBRTHQ5AuxF00c1YEvtfoIa1zhg4CPxhjBrrB7xsp0TIP
	zVvR5Vw26xkdMEHJcXiiRkeL4gWSwM9XgXl2JyaygZDX
X-Google-Smtp-Source: ABdhPJw9wYTnhSuOpiiWOOyhdFYSOVSGkHeu4Jekv1TLT76CA4IPvhc8KEQvONdevn/TnspZE3EmM60feq4P3oh5nhM=
X-Received: by 2002:a02:c785:: with SMTP id n5mr25182236jao.75.1595234016199;
 Mon, 20 Jul 2020 01:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>
In-Reply-To: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>
Message-ID: <CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 20 Jul 2020 04:33:11 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens
To: oss-security@lists.openwall.com

On Mon, Jul 20, 2020 at 4:21 AM Jeffrey Walton <noloader@gmail.com> wrote:
> ...
> Building on Linux or Solaris with LDFLAGS that includes a rpath or runpath:
>
>     -Wl,-R,$ORIGIN/../lib -Wl,-R,$HOME/tmp/ok2delete/lib

My bad... It does not matter how this $ORIGIN token is quoted. Perl
always expands it.

My preferred quoting is a single quote: '$ORIGIN/../lib'. But an
escaped quote does not work either: "\$ORIGIN/../lib".

Jeff
