Received: (qmail 16143 invoked by uid 550); 8 Apr 2024 17:01:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22182 invoked from network); 8 Apr 2024 16:55:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712595337; x=1713200137; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=DkQ1iwgzS33JwJy5PJMn4qAk7a1+FRawmCAlpYjswY4=;
        b=T48DqTcboG5PRNczfPfYe+fRUTAJyh+TUCXokuTYoUHqQM/E4YugpxnfOM8hdvsf8C
         hkP8WZrjSk6ojchxKbWVm7VOv3yMhdz+N8rMf9AGfw34mbByoH4aYQJpDnoZfWlhHtsb
         E6vnOPszZLs35rnltv3jUsSYdbdWQ0AmZuF57+a9iFXlc4MeRkA7e7NdFxTwABNDD+Rc
         HHIF2iW9ihlvdQFyqHjiYXE/jzhuzm7RDahe0eFylE5FCevcfuefzADHXmMXuOjTyALh
         wZorCKbiX25vMACcwUeagjC/ezIgtaG8fE/S+olGIqwMV5Mp6cYl67+83UawexEFHskK
         NHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712595337; x=1713200137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DkQ1iwgzS33JwJy5PJMn4qAk7a1+FRawmCAlpYjswY4=;
        b=JFsDFOWKm8oX3Q4nfYSCEvinrKch8ixowk3yqi2XgWNJtVEvGpWxeECMpcUaThqQVG
         2uaThny/Wd0sazW4nfB+knnBtv6cLLSsvTbyrbd8hIpyHl4RcVcDyIO5JMDHOSMmECFg
         +hqkRQc6avWdZQYJ84PMN8Rrvzae6licsKoPG/6VMen4oQ0yUfGdyG5kEayUMIAZZ//6
         5QODjuer5MhKYaU5d71N6+eJj/FZiXOksq64Hnd9IPMpQyB3puOz2rTCANV1EOCrPJPi
         90HBdvV6JJwjnspzwp752j1dn/AuOYvAEnPKSVIdumhS4CVXkyAt6vQNwNUlUJuIATWW
         7Gmw==
X-Forwarded-Encrypted: i=1; AJvYcCVYsxENGrYau3H4b2qTVgnDrF/ncFGpUy+dHf8mLRSy8rqacB2ztfzUZ/4OR5vRuvfDzUIQbWvo0McWJkORF2PWxcuTx8xYLyLMEgGw2fxC
X-Gm-Message-State: AOJu0YzIDXeIaQ+KM36bzADL31bLT1WPH4TNzFI/jaAuUPcuKsDA8RmC
	FqZmDaocBywxMLrkSFLsGY8015o4mFgazAq3mqVbue8z20gCrYXz
X-Google-Smtp-Source: AGHT+IHGyIZtwFH2LNAC9M0SR6vXEvKKl9nOZFcbAk+A/PrZGtmzA3avSShS46NuXhzKh/v/BIhTSg==
X-Received: by 2002:ac2:5e91:0:b0:513:13eb:c99b with SMTP id b17-20020ac25e91000000b0051313ebc99bmr7315583lfq.62.1712595337055;
        Mon, 08 Apr 2024 09:55:37 -0700 (PDT)
Sender: Maxim Nikulin <m.a.nikulin@gmail.com>
Message-ID: <26cd87ab-a547-4070-b20f-f7fd7ed1a04e@gmail.com>
Date: Mon, 8 Apr 2024 23:55:35 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Eli Zaretskii <eliz@gnu.org>, Sean Whitton <spwhitton@spwhitton.name>
Cc: yantar92@posteo.net, emacs@packages.debian.org, emacs-devel@gnu.org,
 oss-security@lists.openwall.com
References: <874jccjpvy.fsf@melete.silentflame.com> <865xwsythg.fsf@gnu.org>
Content-Language: en-US, ru-RU
From: Max Nikulin <manikulin@gmail.com>
In-Reply-To: <865xwsythg.fsf@gnu.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

On 08/04/2024 18:38, Eli Zaretskii wrote:
>> From: Sean Whitton Date: Mon, 08 Apr 2024 15:05:21 +0800
>>
>> - CVE-2024-30203 is just bogus, based on a misunderstanding by the CVEs
>>    assigner of exactly what the vulnerabilities were
>>
>> - CVE-2024-30203 is legitimate, and we have only fixed one possible way
>>    in which Gnus treats inline MIME content as trusted.
>>
>> I think it's the first one -- can you confirm?
> 
> I'm not Ihor, but I cannot agree with you.  Those changes fixed two
> problems, not one: both the fact that by default MIME attachments are
> treated in a way that can execute arbitrary code, and the fact that
> maliciously-constructed LaTeX attachment could exhaust all free space
> on your disk.

Arbitrary code execution bug is neither CVE-2024-30203 nor 
CVE-2024-30204, it is

CVE-2024-30202 "In Emacs before 29.3, arbitrary Lisp code is evaluated 
as part of turning on Org mode. This affects Org Mode before 9.6.23."

and it is fixed by

- 
https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=befa9fcaae29a6c9a283ba371c3c5234c7f644eb
- 
https://git.savannah.gnu.org/cgit/emacs/org-mode.git/commit/?id=003ddacf1c8d869b1858181c29ea21b731a8d8d9
2024-02-20 12:19:46 +0300 Ihor Radchenko: org-macro--set-templates: 
Prevent code evaluation

This commit fully covers both scenarios:
- inline preview for attachments in Gnus,
- a text file (not necessary having .org suffix) opened in Emacs directly.

I hope, rare users have Org mode or TeX engine configuration allowing 
execution of arbitrary shell commands during generation of LaTeX preview.

The commits mentioned by Sean suppress a kind of DoS (attempt to exhaust 
disk space or inodes allocated for /tmp) through LaTeX preview for email 
attachments. (There is no reasonable way to address the case when a 
malicious file is opened in Emacs.)
