X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["782" "Tuesday" "10" "April" "2018" "03:53:17" "-0400" "Gordo Lowrey" "gordo@zeneval.com" "<1523346797.16686.6@smtp.gmail.com>" "25" "Re: [oss-security] Terminal Control Chars" nil nil nil "4" "2018041007:53:17" "[oss-security] Terminal Control Chars" (number mark "U       gordo@zeneva Apr 10   25/782   " thread-indent "\"Re: [oss-security] Terminal Control Chars\"\n") "<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12154 invoked by uid 550); 10 Apr 2018 08:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32370 invoked from network); 10 Apr 2018 07:53:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=zeneval.com; s=google;
        h=date:from:subject:to:message-id:in-reply-to:references:mime-version;
        bh=lOGesZ1UzahhpCTnLxK7UIKE0lwhH3lgWjKr08MkBjA=;
        b=RnejGeUSyieXUxqKLKt/8pHCv/KMyBvuxUknNA5tmrkfmWxMjR/mPDIy6jrIEsL6YS
         EhMaLixFUpmUvz7592SckXEvv81UMuMMWTi8/N6uP8I4O4UtoECkQWVUI6RN2fqhzz3K
         ehfkeJWWLrr8Og9T3FPXd8cP21wvoxu1oCikc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:message-id:in-reply-to
         :references:mime-version;
        bh=lOGesZ1UzahhpCTnLxK7UIKE0lwhH3lgWjKr08MkBjA=;
        b=tGL1c7MT/x8NKcAKFq4ulEgoF03gT0NA3TQNxYZGEEJtm8BJc1QsA/Zl57crAqGiy1
         1Bb95pRO0wdF5coloecKL4PP4r/4ybOshKATsxUrFF9uBNJRP70q8V1QYs4e9Sv4Qpzx
         xm5LPxFjWHavFZpAhrKx8I2zj8W7Z6t6NGUhvxGqvfhKIT9q8wC4rbZSR10GqJy05HIu
         vugUA7KzEMdnpZpv3HCMzj0cEfwbrGwsZm5v9qiMBKMiU5J4+Ll12tmjguHKSngmd6k+
         qA/psV/VgmGbnARv08MwzmP2Q1bsxF9dWX2poyWxmOhCrnXwEE02Ur5k0xuRUlJb0S6m
         99rg==
X-Gm-Message-State: ALQs6tD/Jxt6kXu1WxpDVfawYuIG40In3hDk2zGFHbgwQ9OfghOe63TG
	jmmHRodUXqDPDN/Pptp4Kl9fsBfYijo=
X-Google-Smtp-Source: AIpwx49XMRDFEOnTOP0SI212GtJ47bQcq+SIOD1WDTq8NmrWyYzOy6ax1yrICRpKO3sCKLpntUXiVw==
X-Received: by 10.200.51.215 with SMTP id d23mr56275252qtb.338.1523346799608;
        Tue, 10 Apr 2018 00:53:19 -0700 (PDT)
Date: Tue, 10 Apr 2018 03:53:17 -0400
From: Gordo Lowrey <gordo@zeneval.com>
To: oss-security@lists.openwall.com
Message-Id: <1523346797.16686.6@smtp.gmail.com>
In-Reply-To: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
X-Mailer: geary/0.12.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-azwmSd7U1WtT4u7o4s/i"
Subject: Re: [oss-security] Terminal Control Chars

--=-azwmSd7U1WtT4u7o4s/i
Content-Type: text/plain; charset=us-ascii; format=flowed

On Mon, Mar 5, 2018 at 11:50 AM, up201407890@alunos.dcc.fc.up.pt wrote:
> The correct solution would be to disallow the pasting of certain 
> control characters.

I'm just gonna go out on a limb here, and say this is an unfounded 
assertion.

Perhaps the correct solution would be to prevent the browser from 
copying invisible characters.

If you're going to break some basic mechanic of human computer 
interaction, at least don't break my damn terminal (not that I use VTE, 
it doesn't support OSC 52, among others), but the principle stands... 
Instead of worrying about sanitizing what is pasted, why not worry 
about sanitizing what is copied instead?

Thanks.



--=-azwmSd7U1WtT4u7o4s/i--

