Received: (qmail 13566 invoked by uid 550); 15 Jun 2024 08:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29838 invoked from network); 15 Jun 2024 01:37:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20230601.gappssmtp.com; s=20230601; t=1718415472; x=1719020272; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y9kSNN5X6/F6VzG9jYLfEfRC77+i6jTEApf/W69HOFs=;
        b=dMNEaSgjLKY2HMPLjV0wkGuG7VU/T8NXcXx5wXqNOy4mEl4Dyh2M2mBp1FdJQuxfNr
         VpkzhTCCyrebaIw1X3kvl+4PvGFbODHpk2/7jhF6KWAYn1x4nvhsEnVGS6KLoOH4H5+B
         yBAQrKImzN2AcrgFJpiNyzi9wFk4wjKdSfQ1OarhHqoGYnWx5uc/UDcihmQ7tP/TuJMb
         IRrQfktuvPWgZtQBMmQlkimlyt7oIMvOxo9Z6csedT+rdrV8RU5PKiOV27ox0KBqTylj
         XgUHzyJXBjHeaXgwPbw5gwLx74dLPxbXvx1vKz7BtO0qegY/xkMnVVXEERwAlHlkFXaX
         EJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718415472; x=1719020272;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y9kSNN5X6/F6VzG9jYLfEfRC77+i6jTEApf/W69HOFs=;
        b=NdM9MSzZl0DRciU4JRrc17apYeyOdjf7dn5Qq396HbK00FCZTOgfFTliBOyegPvw07
         D8v0gJ32xDcmllI2faCYR9/MHvyR2lLqL0KeaVrRpLQZov3XzbjSyfUXudSPmdSssFK9
         HGmgDxtnQX4pXIXvL4us6JgzJZq9IIU3Pzs1e7JdYfpZn5KWQ8FfrG3BLgG3kAU3gsQ0
         BOi4rxckLMSAvAlYJkVL3H47KekwxYNaBOeYO+y82BNk66gPA8lcjqdVzq3ZYwrFrbNw
         fHqMMf1Qxbvi5b+LlKDV+HYf0S+/2UOhfhnluSUbJsWSfPKd//wINzh57fQX0RtVWh8h
         T91w==
X-Gm-Message-State: AOJu0YzzQ1jnd3LaF5J3k7/BRYh2vKOVIEO76cvU6opKcU1yuDu5oA4A
	ss5JdhsWcPwRrD5VMb3qyeKE4h4Eeio5Pxy0yk8iHtm9eMAIoyKb6KilL8/BStlB6xKKbvlNRy5
	NMg6wX94UaG3SaQ5l7vo9o9iE261o6/hsjECVwB1YhBdSc5ZuvtlF6A==
X-Google-Smtp-Source: AGHT+IF4cxmlB/etaWAR7g6u/QSl7KFYAtogmxoP5nm4cuZLDYqrQRM1Lu9m6S5GFpH1jJ1OuWrXhrNgE3MKdnrMfVs=
X-Received: by 2002:aa7:d650:0:b0:57c:bdad:5ffe with SMTP id
 4fb4d7f45d1cf-57cbdad6030mr3228209a12.39.1718415471402; Fri, 14 Jun 2024
 18:37:51 -0700 (PDT)
MIME-Version: 1.0
From: David Leadbeater <dgl@dgl.cx>
Date: Sat, 15 Jun 2024 11:37:39 +1000
Message-ID: <CAP9KPhArz3KdnA1szCTwE9WVrepdM4f7DiPs2hmMSa74NNzdUg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: George Nachman <gnachman@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] iTerm2 3.5.x title reporting bug

Hi,

I discovered iTerm2 versions 3.5.0 and 3.5.1 (and some beta versions)
have a bug where the preference for whether title reporting is enabled
is not respected -- the result is title reporting is always enabled*.

This is fixed by iTerm2 3.5.2, available from
https://iterm2.com/downloads.html -- automatic updates should prompt
you to install this version. There is no CVE yet, this is essentially
another variant of CVE-2003-0063...

To test if you're vulnerable:
printf '\e]0;ivulnerable\a\e[21t'

If you have some of all of the string "vulnerable" (but not just "l")
in your input buffer, you're vulnerable. (You can also test via ssh
termtest.dgl.cx, which does a variant of the above test and others
over SSH, source code at https://github.com/dgl/vt-houdini.)

This is not trivially exploitable (at least in a way that works
without user interaction), as it is not possible to echoback a newline
or control characters. However as Zsh is the default shell on macOS it
may be possible to use some of the vi techniques like I used in xterm
CVE-2022-45063[1]. Some of the techniques in solid-snail's previous
iTerm2 research[2] could apply too. So treat this as potential remote
code execution.

David

*: Unless you change the advanced setting "Disable potentially
insecure escape sequences" -- which works as a mitigation too, but
disables shell integration and some other features.

[1]: https://www.openwall.com/lists/oss-security/2022/11/10/1
[2]: https://blog.solidsnail.com/posts/2023-08-28-iterm2-rce
