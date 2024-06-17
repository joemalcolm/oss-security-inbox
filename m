Received: (qmail 10236 invoked by uid 550); 17 Jun 2024 13:13:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3409 invoked from network); 17 Jun 2024 01:49:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20230601.gappssmtp.com; s=20230601; t=1718588950; x=1719193750; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=av5jukglbRL4WuyZJ1M9iudaYX7STaglyOiU3c+x6Ig=;
        b=O/azwBycCDjFakRE/1n2MB6DkwWUkM7+6Xm8hvaJZIx04zjY+BIZCYpTXylCg5PFEL
         OD0jLFgG+waH1aChLi1VaWCsm6U0Hbhbxoph6eU+LV1yq+uZkvLwgWNt+KXZH4+9WokQ
         AuO6V6VzAxvrX745rMmK/oUeds4uYRgRCTpPnOUFJ1Zi3GBB+d4VmfaTLV0UXnukRtLv
         P8q4F13g3XtxNkieIRwYG74XAvX7MAG8uZMY76b8csB/3JMl2Y/FsmMbTjdJHEX+FWwH
         ijzrWMi/zgPTNHNGUY7ud7Q5KrObWb84QZN1fXSVQATsjpEpvRgJcH0jwbbYpgwEgwW+
         Hfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718588950; x=1719193750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=av5jukglbRL4WuyZJ1M9iudaYX7STaglyOiU3c+x6Ig=;
        b=YfK+i443IIlP4WEilX2NeCj0dCd9OzxwNej9kbg58DJHHK6lbQWa4J3D7AfxKfQwOK
         Y6aN0ujuy5vZwfUSEJzdnq4wxsNuvcRiAmb6M5rcRpapAASH8tREryUGu1/AbeMXPUfN
         11FPBFY04Y6fMTk/cK5qVBIf2MSusd0URMWW1dsWF1wSN+eNc9cx26F4MAMndt999g1B
         KJTVRyLeQP8/B0p7YfF2F0xlq5gNT258jFKV7AHNl0FPeHx1uX/pgX4Vz71W410c3unH
         8YiO9R5f02GbwU2ZAOVIUcO8AhnOuW31NtAi6B4hK/I9ZC3sCkh4iyx3wpiVCrj4QnUe
         jIow==
X-Gm-Message-State: AOJu0YwPVYpAKXqSLK3WvGPA3yKPxvEGk/XuMWEtVdanmrIJroSOyivy
	OqhhntoFbAsrh6tGzc91Ve7lWN+/7qyt+Jqoao9iLZ+A4o3uEDVw66uLDSUx8uNeJrZvCDg+ZP/
	ecv8gjLi8UeAqL072+38HW7L2nKi/aJ8jtrqg7gM8zEbt1FJEMKk=
X-Google-Smtp-Source: AGHT+IFNFumcMno71lwICHOTV3P76U5U0+/JGlA1M9ut4v7QE4vM9BnvvK9UKlm7cGEmrsDyWYhn0VIQ+G0kOEhNvuQ=
X-Received: by 2002:a17:906:58f:b0:a6e:f997:7d8e with SMTP id
 a640c23a62f3a-a6f60d42237mr569326066b.36.1718588950567; Sun, 16 Jun 2024
 18:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAP9KPhArz3KdnA1szCTwE9WVrepdM4f7DiPs2hmMSa74NNzdUg@mail.gmail.com>
In-Reply-To: <CAP9KPhArz3KdnA1szCTwE9WVrepdM4f7DiPs2hmMSa74NNzdUg@mail.gmail.com>
From: David Leadbeater <dgl@dgl.cx>
Date: Mon, 17 Jun 2024 11:48:59 +1000
Message-ID: <CAP9KPhBoGPeqbjyVaEp84kBFMg09do0YEf_Le2vFOO3faS7oJQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: George Nachman <gnachman@gmail.com>, Vinci <vinci@protonmail.ch>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: iTerm2 3.5.x title reporting bug

Hi,

On Sat, 15 Jun 2024 at 11:37, David Leadbeater <dgl@dgl.cx> wrote:
[...]
> This is not trivially exploitable (at least in a way that works
> without user interaction), as it is not possible to echoback a newline
> or control characters. However as Zsh is the default shell on macOS it
> may be possible to use some of the vi techniques like I used in xterm
> CVE-2022-45063[1]. Some of the techniques in solid-snail's previous
> iTerm2 research[2] could apply too. So treat this as potential remote
> code execution.

I spoke too soon, this was independently discovered by Vin01 -- along
with a tmux integration issue. The additional finding by Vin01 allows
for remote code execution via the tmux escape sequence (as it allows a
newline to be inserted).

Their write up is available from
https://vin01.github.io/piptagole/escape-sequences/iterm2/rce/2024/06/16/iterm2-rce-window-title-tmux-integration.html

There are now two CVEs assigned:
- CVE-2024-38395 (title reporting, the original issue reported)
- CVE-2024-38396 (tmux integration, combined with title reporting)

The second commit (fc60236a) mentioned in the post is not yet part of
an iTerm2 release. Fixing the title reporting makes this harder to
exploit but fc60236a can be considered additional hardening for the
Tmux integration.

David

---
Copy of the above blog post for the archives, with minor reformatting,
all credit to Vin01:

# Abusing title reporting and tmux integration in iTerm2 for code execution
Jun 16, 2024

## Regression turned into RCE

I am skipping an introduction to escape sequences here as I recently
wrote more about them in my previous post[1]. From a security
perspective, they are to terminal emulators what XSS is to browsers.

This post is about a new bug which affects only iTerm2 3.5.0 and 3.5.1
(released on May 20 and June 11 respectively) because of a regression.

In versions prior to 3.5.0, window title reporting was disabled. So
you could not just use following to retrieve the title of terminal
window and put it in stdin.

$ echo -e "\e]21t"

Note: David Leadbeater also independently noticed this regression and
reported it here [this thread]

## What is wrong with window title reporting?

Ps 2[2] escape sequence allows setting the window title.

An example:

$ echo -e "\033]0;This is the window title\a"

CSI Ps 21 t can be used to retrieve that title and put it in stdin as
shown above. This makes exploitation very easy as at this point, all
that is required is for the user to hit Enter and arbitrary code
present in that title will happily execute itself.

Patch that disables title reporting by default: f1e89f78[4]

## Tmux integration made it worse

Native tmux integration (enabled by default) in iTerm2 had a weakness
which allowed sneaking in the reported title and also provided a way
to send newlines after the title was reported.

Patch: fc60236a[5]

## Can I haz that sweet PoC plz?

try this out yourself:

docker run --rm  vin01/escape-seq-test:cve-2024-38396

or

cat poc-iterm2-rce.txt

Download poc-iterm2-rce.txt[6]

The file contains this payload \033]2;s&open -aCalculator&\a\033[21t
\x1bP1000p%session-changed s which sets s&open -aCalculator& as window
title and then retrieves it back to execute and pop a calculator.

Source code: https://github.com/vin01/poc-cve-2024-38396

## A fix released within 2 days of reporting

Upgrade to iTerm2 3.5.2: https://iterm2.com/downloads.html

Please think twice before you enable Terminal may report window title
setting in iTerm2. It might not be worth the security risk as it
allows arbitrary text to end up in stdin which is never a good idea.

[1]: https://vin01.github.io/piptagole/escape-sequences/iterm2/hyper/url-handlers/code-execution/2024/05/21/arbitrary-url-schemes-terminal-emulators.html
[2]: https://www.x.org/docs/xterm/ctlseqs.pdf [blog links to the pdf;
https://invisible-island.net/xterm/ctlseqs/ctlseqs.html is a newer
HTML version of the xterm control sequence documentation]
[3]: https://gist.github.com/halcyon/334da650816876d7be4d1bee8a157f25#file-gistfile1-txt-L872
[4]: https://gitlab.com/gnachman/iterm2/-/commit/f1e89f78dd72dcac3ba66d3d6f93db3f7f649219
[5]: https://gitlab.com/gnachman/iterm2/-/commit/fc60236a914d63fb70a5c632e211203a4f1bd4dd
[6]: https://vin01.github.io/piptagole/assets/poc-iterm2-rce.txt
