Received: (qmail 25960 invoked by uid 550); 7 Nov 2024 16:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26594 invoked from network); 7 Nov 2024 15:49:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730994541; x=1731599341; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:to:content-language
         :references:subject:user-agent:mime-version:date:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9wNNJf8KsMd0emOWCxjhRRoc1aS2GDv4g25A0Q+05MU=;
        b=dVkHDDskXIpzeM4uCW1HkH3fpibSeO7MQZW3ZvTqJO+LfJnIh/gI44XUN4PZijmhFx
         AiREOuMbP1qVsorNqfJeo2ZoUy5XUfhzLfaB337q/pTCJkivLZw/NM64pqMMyLbz6yGE
         QnbqxCQmksThu8GztCm9NRjdP4sL0DMVzm5HZQ2d+FKOBfSau+fEQeH1jUP2ZSbgaP6o
         6E1Q6ucLjIsnmkNLSTOW0nGqyZAXbxUaIjeAxOun2mFaB5mjpsLgWE0tcmCxy2xvaBxc
         69IdWuyEmq5bFky06HaS5cj3AOpBGq2AHoU+MwTRlPIawb/E/JHJW+vNYrhF8f8R3Lux
         U0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730994541; x=1731599341;
        h=content-transfer-encoding:in-reply-to:from:to:content-language
         :references:subject:user-agent:mime-version:date:message-id:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9wNNJf8KsMd0emOWCxjhRRoc1aS2GDv4g25A0Q+05MU=;
        b=QlIyoINsPV451Twt1PDWldkNZYEr93JwFnAcbQDz5paYFI04XN9X/+W54SYpcccamt
         Au0DosLTYdvoSEnh7ysLrDIDKiKptgtpqe1RolZO4k4iQ1VgNlRCbdGXrKqjxPUeEIcu
         BO3OscCnlpCvc6QGgEotKWnB/rO1aR60hXKIjvoSp75oViFpcBprBg6xuDz2rpmKgTU8
         YQPNq430OGwH5E7bmrXGIKjmYD8dZATRxtCQK+JySAMFoirvCkJWk1EUGp6IqdIwoi5U
         TLv5a9UDQtzuL9gXww+jBCD1GhqUBzg4YL5oF+zf6Up2zncDpmVKJ5Hqczc18uAquEoz
         tzgg==
X-Gm-Message-State: AOJu0Yw8QQaTpZPtLkXSDHVhTYht24CBHuM3Uc3XzfXmoKPbLsfalahl
	tR4mtxPs1T9voNa8wsz/MjzepJ101TfNQHiAIgC8Ya2SSYrBI763UavmYA==
X-Google-Smtp-Source: AGHT+IFxTi4my2EJjIgW2Ou/xqeo2/ZQG/n00omBcDs6vbsx+b7ufhSYX2eeTFP4iYCpIVgBkjEmbA==
X-Received: by 2002:a2e:be08:0:b0:2fa:d9db:7bac with SMTP id 38308e7fff4ca-2fedb757365mr116295291fa.3.1730994540640;
        Thu, 07 Nov 2024 07:49:00 -0800 (PST)
Sender: Maxim Nikulin <m.a.nikulin@gmail.com>
Message-ID: <edf6e2e9-0ad3-4c50-b85b-7b6d6fa835ea@gmail.com>
Date: Thu, 7 Nov 2024 22:48:58 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
References: <20241106041215.GA4432@openwall.com>
Content-Language: en-US, ru-RU
To: oss-security@lists.openwall.com
From: Max Nikulin <manikulin@gmail.com>
In-Reply-To: <20241106041215.GA4432@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: shell wildcard expansion (un)safety


On 06/11/2024 11:12, Solar Designer wrote:
> The only not-too-unreasonable change I can
> think of is wildcard expansion prefixing filenames with "./", maybe only
> those that start with "-" and maybe not when used with builtin "echo".

Even this technique might have consequences unexpected by script
authors, see

<https://mywiki.wooledge.org/BashPitfalls#pf42>:
> Bash Pitfalls: 42. for file in ./* ; do if [[ $file != *.* ]]

> In the case of a pattern like *.* however, problems can arise because it
> matches a string of the form ./filename. In a simple case, you can just
> use the glob directly to generate the desired matches. If however a
> separate pattern-matching step is required (e.g. the results have been
> preprocessed and stored in an array, and need to be filtered), it could
> be solved by taking the prefix into account in the pattern:
> [[ $file != ./*.* ]], or by stripping the pattern from the match.

> # Bash
> shopt -s nullglob
> for path in ./*; do
>     [[ ${path##*/} != *.* ]] && rm "$path"
> done
> 
> # Or even better
> for file in *; do
>     [[ $file != *.* ]] && rm "./$file"
> done
> 
> # Or better still
> for file in *.*; do
>     rm "./$file"
> done

The original issue is #3 in this list:
<https://mywiki.wooledge.org/BashPitfalls#pf3>
"Filenames with leading dashes"
It is discussed in the pitfall #2 and some
<https://mywiki.wooledge.org/BashFAQ>
entries.

I am not trying to dispute that expanding leading dash to "./-" by 
default may be an improvement. However there should be a way to disable 
it in specific cases.

P.S. More and more tools are getting support of CLI options to format
output as JSON when it necessary to parse it by another program.
