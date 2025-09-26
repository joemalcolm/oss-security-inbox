Received: (qmail 30532 invoked by uid 550); 26 Sep 2025 01:48:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32762 invoked from network); 26 Sep 2025 01:46:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758851174; x=1759455974; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=c5TNCRAMIbrXzUOLuXKo6yT/6ksnJ2kkDgDtHm2EYKo=;
        b=TCOwzIw2Yi5N5mnUGKbhXa36nNb0D7bbmeRojzKYMkPgM+qBlMht+y5d5sPLh4mZBp
         cgPfznU3aWOl1GaIK+dnVVxRYlrqcIWBzlWQ/R9YtHk7PuYS/l5DOQSxN1ACHb9nfkZx
         rnJuDY2XEaRq5qxD+DVKPk8ZkdGAYDChDc8x57OdRygg/aeVipllv5zO3E+IJLrYfJ/H
         eUKhWlXxA2z+vulVwjoUp490VAbkf7TSSSkeBewgnqs/SG56ghrKlND5FvJJpiFbp321
         l8DyAdAtJMjIvWnKAILgMBxdiTr8fnbLJtdpLd5PL0ABOiBPxqaV9FbYQ0ibY00tpfB+
         OvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758851174; x=1759455974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c5TNCRAMIbrXzUOLuXKo6yT/6ksnJ2kkDgDtHm2EYKo=;
        b=w0YHsjzUqLM/Fe2B3IjtJmUE+F8qCfpqBTIOkCMUW4SoBM+gqNOTCHjCgoBBeG75I/
         Z7kQ41CGNHmilCINVA+XK3iteIFT7Sljgi+ILMYt/ZTu8Iuxdj1ZnohLkl8VH20bUcX7
         h5FL3vjOqvkTo1mcIiKyXKiHsFhtsxCDYQqInvG/0eY7lHTcAgHO/KT64POq8FxwUB2D
         unJ7oAjWri0KzqK4rSAjq7IESmGO7TGCYRx/WrK7rIz9ZOAd9etQWZfO6Z3qPvWg9q0F
         ssWdJl5A89RqxI5+3EYAuGs3kcMr0iwdQziZVUIk7sbjW/lKhH8YtioFYOR8jyjUMhA1
         te8g==
X-Gm-Message-State: AOJu0Ywu2+EEJq/jZJATaUBQu+tswEMJfrl/RKhFQJT9956RyOATDEVC
	7XOlB4Nlq+8NlOH/OMc0lIk/zTqkLooHdezr1WQQdLkyqm2Y59lM0YXLvYJqyg==
X-Gm-Gg: ASbGncsa8PlkffahOG4/2esu31zltwjU0VWmrBk1oDAiiMg+uQRj0IGCI1crzthfRVw
	x0twka9UsuAYTl1o0QOzdnM5IVjIlSY+zuqHQ4HmBLeYHnbk14i3EnIZH51Ztv2W0VB9Iwlx1zG
	mM6lWbW4IlZ9j+8AYp0MZ5pLyQsl5B1+5TOn6mkkU5M5/kHpo/gSbsfUcpNswZdMr0zA/O/huRI
	W1iMtm8HGgDsKqKy75+vtXk5zXhqcbLBFmSdJ7MNw89eNWJcj33ykcEFsEq2LArgXGbIOLa+Bo+
	N9f2+uJ4SkfcKZJdcf5+NF/5MwURlWIUicAkYcqzDuwEdd2IjQAriX9mQQ43Wus58o3a97rKsik
	kyjE2j2TDxA5c42MjYXKSTvObCCN3jg==
X-Google-Smtp-Source: AGHT+IHUPdRa0rzlUrfqHw3BHdoeKVYGUKnbyN2q9iJF08C/iJCRa6zMzMrjyF3QihDK+EkvkA43Jg==
X-Received: by 2002:a05:690c:6c93:b0:726:5fdb:3464 with SMTP id 00721157ae682-763fc6b4662mr61289107b3.17.1758851174065;
        Thu, 25 Sep 2025 18:46:14 -0700 (PDT)
Message-ID: <21947218-b146-45f3-a2c1-90863e9e90b5@gmail.com>
Date: Thu, 25 Sep 2025 20:45:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, VMware PSIRT
 <vmware.psirt@broadcom.com>, Solar Designer <solar@openwall.com>
Cc: John Wolfe <john.wolfe@broadcom.com>
References: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com>
 <20250513015957.GA29601@openwall.com> <20250924023739.GA21012@openwall.com>
 <CAL2zhBTvrV3kpq9u-RaF87CtsD+SCtERcjNWwah8EW1wNPEwng@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAL2zhBTvrV3kpq9u-RaF87CtsD+SCtERcjNWwah8EW1wNPEwng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-22247 - Insecure file handling
 vulnerability in open-vm-tools

On 9/25/25 01:38, VMware PSIRT wrote:
> [...]
>
> [...] However, as you can see we are performing
> realpath() check after we completed the open() but before we read
> anything from the file. So, there is no use of pathname after realpath()
> call here.

That does not close the race window.

An attacker can rename() a directory out of the way, plant a symlink 
while you open() the file, then rename() the directory back into place 
between your open() and realpath() calls.

While double-checking the man page to be sure that rename(2) will do 
that, I found the renameat2(2) call with the RENAME_EXCHANGE flag, with 
an example of swapping a symlink and a non-empty directory... this 
appears to be a supported use...


-- Jacob


