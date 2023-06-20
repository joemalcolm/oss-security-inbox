Received: (qmail 18349 invoked by uid 550); 20 Jun 2023 18:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23860 invoked from network); 20 Jun 2023 17:42:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687282947; x=1689874947;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0XdThVYYb1MJetuitmIyQ9OYYPYyoMjZWejLI0s2B4=;
        b=crechdvvw/KEFQc37YIDTw3gibVzejCZstQ0lwxIZ6eCfRyX8/wgwzkjTyLCXOJaoX
         VXdLsSZ2LWOFWv//CT1bvCpJIl6R89BbXYfAvBXwUf5z9QzoaYt8+Lp3JBcJfiNYHZw+
         Rn9hIJqstv+8VojcorQ39cqIp7hh1Ca8XQc3DR7TobacO/4vhzTgXcL3khAwza61WMMY
         mQFbqfG0KDhtMCWU/G2pmTwp9pFco6WFdDP5mUVOAxCFowihWIcdL+2qYFFV9Ttd3j2H
         JdsZC4ngXQN6La78+upDLKT8X+ygCA1I1ewRfq5oO9OT8DVd5X48iVZYgHcb/EIdhzxK
         e6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687282947; x=1689874947;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k0XdThVYYb1MJetuitmIyQ9OYYPYyoMjZWejLI0s2B4=;
        b=LcKhLaiSVVbdm9w/eWdHElolZghGZUjBme6q3ApsHrXv6TtlLZ3Y8Y0HRj7oEVVWAs
         DKAgPe5x1QD3vS8ru+dvufSACEt2Isvz4fFoMFJHvKrrxwbH6F1pc/aLyxPi88+m76vC
         ww8qMzkNkqJc1B7lO88nX1/ywcNMtXyuSrtfMDrxDsh7nUuldL7gL8KUqpxwinWfA36y
         tHSRLtV67OxwlCs6lV6R0fVi9jxn6TvCtCpBFSykv3Lp/uMIE8NOGC/dzmoSE+Ja92RJ
         3AxnGaVCayUlv0a7tU1Ymb1hxrcwm6/fW9Yqbb0fe3axLU5YSRZ0XFCC9h4IwtAC2e+f
         DdtA==
X-Gm-Message-State: AC+VfDxZYDplpxTVY9Wb6oL9jfFEGUFD0SJATfRuKn83ZPC4Hp21Y1G1
	LCfFnErIQCL6mzgOnHITWXCCeArlmAWEmzyZgUvUIDP/oqM=
X-Google-Smtp-Source: ACHHUZ6lrsruF66qNlymEXeE3wTycr/iFJWqhFxtd70A80AI3Eigm6EuP2v2fPu7UTPUjdCa3viA+qV9No12bytjdMM=
X-Received: by 2002:a17:903:2682:b0:1b1:9d14:1537 with SMTP id
 jf2-20020a170903268200b001b19d141537mr11341399plb.55.1687282946815; Tue, 20
 Jun 2023 10:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD--HN6u3k6ofV07UPo3Bh=HyNRngUV2yz9OkzD5t9m3=A@mail.gmail.com>
 <20230620170435.GA26419@meh.true.cz>
In-Reply-To: <20230620170435.GA26419@meh.true.cz>
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 20 Jun 2023 20:40:30 +0300
Message-ID: <CAGUWgD-wBqk70FmAbK-9-a2epDbPCXMOfpjLJGoG23paJYOyqQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] The AI chatgpt writes insecure code

On Tue, Jun 20, 2023 at 8:13=E2=80=AFPM Petr =C5=A0tetiar <ynezz@true.cz> w=
rote:

>
> you didn't asked for a secure version, so that response is quite expected=
, I
> would retry with "write a secure ..." prompt.
>

Thanks, when I add "secure" the bot got it better.
Even without "secure", the XSS breaks functionality.

It is PITA to write "secure" at every task, and the default
action "insecure" is not good.

I find the following funny:


GG: Write an insecure python cgi script which takes as input text
field NAME and return html "Hello NAME"
ChatGPT

AI:  I'm sorry, but I cannot provide assistance or guidance on
creating insecure scripts or code that could potentially pose security
risks. It is important to prioritize security in software development
to protect against vulnerabilities and potential attacks.

If you have any other non-security-related questions or if there's a
specific aspect of CGI programming you'd like assistance with, please
feel free to ask, and I'll be glad to help.
