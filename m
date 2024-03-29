Received: (qmail 19611 invoked by uid 550); 29 Mar 2024 19:53:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22523 invoked from network); 29 Mar 2024 19:51:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711741865; x=1712346665; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=41j5wKdGiFQQlKIaMCPZG1FtRis1uiF+hG1I4P1IcRc=;
        b=Or5Lrg6b51w9vuwNenB92qWmMqIeJ6RKixdtuX91OG98H3BjENgFeEW5bQK6haJfJj
         rhqcnsQHE4gnQChgiX9y6ODsctZ653StSTCNhhL+BAjR67tLXtbXiItLyYIVAU0A6VuR
         4ZWldF//X9TGKXxh4MdIi9ymR7U+uEd1XVG2lSNOfAkvaytUoZqf89RduX0oPG2KM/YL
         oU3lmDymE1MZQZrTNnzZHomqA59eApzwClqGVgl5OBWf7cb6T+9VVfFUdJXjr5elE5S5
         fmM8b0ho2gtFg8sx3d1HPkdf+iYNBMGJb4vJ2viQsspT3Uri5A+MwNb6N91lFUuUd89o
         ZJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711741865; x=1712346665;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=41j5wKdGiFQQlKIaMCPZG1FtRis1uiF+hG1I4P1IcRc=;
        b=aPYqjASF/23CbzEa7D6AGx194J4KUhlxFXOZW2EAEpEvt2AGQ+XybxUgtfh6Zu5UO3
         /re36++Ie5azNDT3dErB6NqRkcipo7abnDIaFGe9g6uhPsvwFe1X6TU+Na2dzdDdeRfh
         SkNC/8A4lsI1EesO/GDWElP0MAmjIrftDaO2k5NPhktjTyx3jEiiJ+1gEMe3ba2SHfOS
         hgrzioThXqbLxS8/lBeneyBG0+cgtgittDNUanbvdyW7ytG9/mnyqs0Q2zJ09irDWSjw
         87hwPo/U9Bs5vPoYvcHz2YqcZ3Hbo/RUardinTBX/MM/rvun+b17VkE3NTO4jAOGd0qf
         aDUA==
X-Gm-Message-State: AOJu0YyOYQ7B/nY4SDw6XgbI2thLCtuI41oWuWLHlB8Xp7YOolUwsHPg
	t7uusvUGFVujS8Jva8NsKuCICcvP7GWYT8W7R7T6kY+s3/YFAcyLK8v4IXkZiiFVVG1ezlz/SL4
	87yTcWuwHh+LLNMJTw6rIK9NGlrNVZzMQ3ho=
X-Google-Smtp-Source: AGHT+IGgiZZuD0Q/qhUz9K5v3i7cv6GlZreV8yKxQoa30epr1qn6CvQGkD4830h/Up0OjE0EqxT1cNn+btRzZ4r1xRI=
X-Received: by 2002:a2e:a40e:0:b0:2d4:ad34:85a7 with SMTP id
 p14-20020a2ea40e000000b002d4ad3485a7mr2087932ljn.29.1711741865107; Fri, 29
 Mar 2024 12:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcL9VUx6CQ5Wx/W@weckbecker.name> <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
In-Reply-To: <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Fri, 29 Mar 2024 23:50:53 +0400
Message-ID: <CAOp4FwTBrrDwUD4sbXXJ_Yk2KQFuCzVBLteO8Y6mS+Ax3RrT8A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d1260b0614d1f540"
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--000000000000d1260b0614d1f540
Content-Type: text/plain; charset="UTF-8"

I think that distros should be very careful when they start patching
openssh in general.








On Fri, Mar 29, 2024, 23:20 Andres Freund <andres@anarazel.de> wrote:

> Hi,
>
> On 2024-03-29 19:44:05 +0100, Matthias Weckbecker wrote:
> > I've attached a yara rule to detect the *.o droplet you attached in the
> > email (liblzma_la-crc64-fast.o.gz).
>
> Unfortunately xz 5.61 added further obfuscations, making it harder to
> detect. Should have made it clearer that the attached .o was from 5.60.
> Among
> others 5.61 removed the two symbols you're checking against here.  That's
> why
> Vegard's script looks for a specific instructions sequence, but obviously
> is
> also more obscure :/
>
> Regards,
>
> Andres
>

--000000000000d1260b0614d1f540--
