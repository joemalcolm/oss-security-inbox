Received: (qmail 17508 invoked by uid 550); 10 Apr 2024 15:38:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3978 invoked from network); 10 Apr 2024 15:07:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712761624; x=1713366424; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kvMdjO5994N9JVffWOlZoOn2asg/cwqM10L+1BlJYEE=;
        b=gPMszSbW3x2NTNtxJ2kok8m9Ol6R3KTjktgPu1ALsJM15GlsRjOhvTKJLpOI4u1O/V
         gOgW33E+nWIkORUh8SKJzWI1d6JVgeYt8jdxcsns5IBlNIDG+ftzdLJHdj6PZmYQ6sly
         zPDjRiQvB1IGn/KSX+E/RrHawZpHpCAfePzJ0OfD35IEgv5nwU0zPt16XJWJC6jl0W64
         Z6FLlDMU+0c2kbxPlK1e0GsiqBXKem9vL6RS3kVzGCbPNmVVVLB/JlIOeCXqxnqh3WLe
         j9gi7Xi6brs5tLzZ4urMiWVHci3zRZ+6oB0ADPIymNkI9osJi4MNbgpaHh8vFeCinCr1
         Y8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712761624; x=1713366424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kvMdjO5994N9JVffWOlZoOn2asg/cwqM10L+1BlJYEE=;
        b=Z4xaqvb+t2T/NWpRl6tkH3NoYqP1qJQxxDrEjJ7GUKfR5Bj2XDLpJRqRSSX1nek5hs
         DtKeaRz55Dx1RLBMJKNKV6E56D1iUJoD8obI/DIp5feyPJqJUcV7RnAejeFty8iIejv2
         1tZahmwvfB2YLA+Bg1heAI+CX7iz094h84ahAHWiJCuZF1qk6ZmYoqFNp8LNqLyimjNf
         1E+kT03fwjB/wgOcGZys3x64r+4MTT5lHMfO41kCdjjBniHBK6+/0SZiblhNND6RuKaM
         yDteJ2XYHZSLH5Nx80s8pFxYmTzofRKc/1eF2oZEZvjCkIqpC/DCvD/xTgQVdHR2ph+s
         DuhQ==
X-Gm-Message-State: AOJu0YwfYTnRRtPzA3WtL/a2MR2vbjPmLJgVJjRwulyxahyihTmw3uM+
	hAzujq5vIKtIDvMfM/huQt/MYJyMOu83BSu2RRD4c1hBdinyvZVyDc/bI1Caquk=
X-Google-Smtp-Source: AGHT+IHL/Wscnq3dnz8WVqJolJ3U8UAr+AdshMTgJ60KkBW7ah+sw6Q5lUIpuiWGxIeQz9CklZ8UFQ==
X-Received: by 2002:ac2:5dce:0:b0:516:cf23:588 with SMTP id x14-20020ac25dce000000b00516cf230588mr2019515lfq.27.1712761624253;
        Wed, 10 Apr 2024 08:07:04 -0700 (PDT)
Sender: Maxim Nikulin <m.a.nikulin@gmail.com>
Message-ID: <fb09b3ff-6187-46b3-b544-182e7dd76412@gmail.com>
Date: Wed, 10 Apr 2024 22:07:02 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Cc: Sean Whitton <spwhitton@spwhitton.name>, emacs@packages.debian.org,
 emacs-devel@gnu.org, Ihor Radchenko <yantar92@posteo.net>
References: <874jccjpvy.fsf@melete.silentflame.com> <87y19nu22i.fsf@localhost>
 <87bk6he8h4.fsf_-_@melete.silentflame.com> <87o7ahe85l.fsf@localhost>
 <Zhafa3wcZONJX-_k@eldamar.lan>
Content-Language: en-US, ru-RU
From: Max Nikulin <manikulin@gmail.com>
In-Reply-To: <Zhafa3wcZONJX-_k@eldamar.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

On 10/04/2024 21:17, Salvatore Bonaccorso wrote:
> On Wed, Apr 10, 2024 at 12:04:06PM +0000, Ihor Radchenko wrote:
>>
>> Yes, CVE-2024-30203 title is superfluous.
>> And CVE-2024-30204 title is not accurate - it only applies to
>> certain attachments with specific (text/x-org) mime type.
[...]
> If you think the CVE assignment is not valid, then you might ask for a
> REJECT on https://cveform.mitre.org/ .

Do 2 CVE numbers make sense to track fixes in Emacs and Org mode? 
Various versions of Org mode may be loaded to different versions of 
Emacs and both parties must have fixes to avoid the issue.

