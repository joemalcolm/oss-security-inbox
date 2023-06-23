Received: (qmail 3252 invoked by uid 550); 23 Jun 2023 09:49:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17908 invoked from network); 23 Jun 2023 08:36:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687509386; x=1690101386;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fhvyO0YMCnHcqkw1VOMb3IbXQiOHwelTd5A3TkWWXGY=;
        b=mWS2f8Ky3StITos0B6vPjs9Y0UKr4KWzwJllrZ0Q5Y5pj/HmZlJEFI3baldal9u5wg
         HDkuCCZhemXo651DeiweivD6824HzzAu/zy9d08WVA+gTpQ7E5StEGrshbMKmDnnDFvr
         erlXNrJGPAy/IxjqJn51+0pIPrhqzYxBZfkoK6YWBt9WRGvUf3XFZ3B96NJxpYZZUexv
         8gJaVZbExcerzWQjckZAnHcLpjMlvRszm+k0z3/XyySgIQ3c6LxcmNLNipCFXlu5b2ye
         Hj+g6Hn8ASM5Y3n32F9EuUr4zCCRuEmrnjJGI3/k/bpg7seffGbiQekQS4Mwa4JUHCJj
         5X7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687509386; x=1690101386;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fhvyO0YMCnHcqkw1VOMb3IbXQiOHwelTd5A3TkWWXGY=;
        b=dZdpC9/XbU0y6+8i/iYq0elpxLAzK8H7OkgFjTf+N9E7Cq8RNKbn7uQ16M3AmAPMFd
         1ZQ9mbuh2MmgK4871cAeP/QlUxErkf8seIZ5tsJeUPlE3JLEecVmQG74tvuzzAW7gr1x
         uxoA18oi1DmRjJzudKzUivn2epc7PZq8slvVvWjZ7zYV5tWsP3sBzZqMeE96DUCbNqJ4
         1EMxjo0a7vgRFSWtDo2O1mwPJYjdFXeqVKhKhhu1iQrKKCxyszGWp5AtzYFDBVJOsxKf
         l1uLbD3EffQt9wlPzfoi8PqzS+RoGEU5XJyyvXcNlGXX56u6C1C3/mAaQnGk54qSTZ1P
         2FoQ==
X-Gm-Message-State: AC+VfDwSIa4LsoeLi6IRxL1DZWwIWbNdIXyHdXvsJuJut0x3RX++VoPT
	isOSTPfxE+eEPgd+AIsFmD9ain2/Fl9uPlQILJVkHAUF7qs=
X-Google-Smtp-Source: ACHHUZ48XsMXovGX8xHnVDbUxmljo/J6NrR6zFFhfg7xW3YZegWUUsutUxcIczpGKKZQkeg3TT9IOuNH2Cs2Cs3JAuM=
X-Received: by 2002:a05:6a20:8f19:b0:121:8c15:8c04 with SMTP id
 b25-20020a056a208f1900b001218c158c04mr12584436pzk.27.1687509385972; Fri, 23
 Jun 2023 01:36:25 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Fri, 23 Jun 2023 11:34:28 +0300
Message-ID: <CAGUWgD83Q_Sce+Zcwni33yjcx9bzFv=XUhKPJK1_v226Odj1ZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Opinion: Governments don't want IT security, they want to have cyber weapons

Some time ago i posted this on my blog [1] and on linkedin [2]

What the security community thinks about it?

Inline:

Tue Aug 17 14:35:14 EEST 2021
Opinion: Governments don't want IT security, they want to have cyber weapons


Support for the above claim:

    In 2015 exploits of NSA were leaked by Shadow crew. Search terms:
nsa leak shadow crew. E.g. see NSA Hacked? 'Shadow Brokers' Crew
Claims Compromise Of Surveillance Op
    From 2015 search terms "hacking team" leak, E.g. Hacking Team Leak
Shows How Secretive Zero-Day Exploit Sales Work

    It provides both the exploits and RCS to government intelligence
and law enforcement agencies around the world, and has come under
attack for selling to repressive regimes, who've used them to target
political activists and dissidents. But more interesting than the fact
that the company possessed zero days---this was already known---is the
correspondence around how Hacking Team acquired these valuable tools,
prized equally by criminal hackers and government intelligence
agencies.

    From 2021: Search terms pegasus spying scandal. The allegations
that spy software known as Pegasus may have been used to carry out
surveillance on journalists, activists - and even perhaps political
leaders - highlights that surveillance is now for sale.

If governments wanted security, they would report the bugs to the vendors.

Like in traditional warfare, cyber warfare requires weapons. It is
very hard to construct physical nuclear bomb, but to construct cyber
nuclear bomb requires just skills and zero budget. Some drunk skilled
kid may do a lot of damage in the real world.

Who watches the watchers?


[1]:  https://j.ludost.net/blog/archives/2021/08/17/opinion_governments_dont_want_it_security_they_want_to_have_cyber_weapons/index.html
[2] https://www.linkedin.com/pulse/opinion-governments-dont-want-security-have-cyber-weapons-guninski

-- 
guninski https://j.ludost.net/resumegg.pdf
