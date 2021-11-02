X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1768" "Tuesday" "2" "November" "2021" "07:53:45" "+0530" "Siddhesh Poyarekar" "siddhesh.poyarekar@gmail.com" nil "33" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       siddhesh.poy Nov  2   33/1768  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3691 invoked by uid 550); 2 Nov 2021 06:22:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32044 invoked from network); 2 Nov 2021 02:24:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vDrNCGajKCVJPIl4sMDLXmV15e6AyNZeFLW+iWFOct4=;
        b=lTx53BJ3neaG2ck7jeqRSShsNIPK4W87AULtCNtq2tsIMINpoO/+DM2x5ntHMLdM5X
         6Zf5M0Wd+l9PDuHf0rOIgKpaE3+BIKzymwM4xLmwp60p2bKu4M4kYXK1atE0ikotzCur
         pPJ1BSPbVHlVSUf678mCVf1lGu1mdeecQSne0qGUGf0FipjG3OwIX0WtSaWuJm7rtN/n
         Ch/GA0hCs6/nto5BKkYePzvRvRnRMazW2W3Pd6CKXvkHejTse+40ziB7yrgnOr3aDMLL
         rYhaCPwavaX72SzABZuGivciZ2LV9HNgenBXjn/arlV6BGszRkSqtqWvKFpdsea+m3NB
         ebMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vDrNCGajKCVJPIl4sMDLXmV15e6AyNZeFLW+iWFOct4=;
        b=72iuDYQRWHPWjF3J0Qg9svvhT3zHFG5KDF2WApSn73zEfrgk4kFz9rPJtBWl9y0/gH
         q99g2i3aW/292IelY3pIwYH3mdhnC1DlEbsOid+KUxpOnqnr925rkp6tzmGZjj9K88q+
         ZrSTpMe52wXhzUvXsXBwrQFjvDaMY7k097HAIcF32fmSv/pp5HxvVzzPlN1s9PIpxjLt
         7lFV/GM7OdHEH1hosETFAUnH8ZtsGyLO3yKsO9kx+74eDPhno1jOOAYDXxAt79w2YkER
         OboFtPXU87J1baqlE693IVN9Q01jScXgAeQvf9v5aoM/sXmBg0sH7hwv21AP0ESWFdWB
         5vvA==
X-Gm-Message-State: AOAM532D05IlDpH7RVVAe2EfVm1jr01GIJif95WicS0zmvXw6HGV5i1f
	JCS7k7t6tSQQyhZQaPapqfVEsJPtUB0/Noal0RtkoeWbSxw=
X-Google-Smtp-Source: ABdhPJwf6qx+QjTf8vWru8DXqchoTNh+ZsfQ4XYiS9BnhgkCvqXfltxRVr/vAWMPG6qIySGwGRbaPqFkOHWXZJkljms=
X-Received: by 2002:a05:651c:10b2:: with SMTP id k18mr13723655ljn.359.1635819836786;
 Mon, 01 Nov 2021 19:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
 <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr> <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com>
In-Reply-To: <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Tue, 2 Nov 2021 07:53:45 +0530
Message-ID: <CAAHN_R1S7Jf96Y1raEuBrJ5VmTNUJJL8bp2Qbhh_Y-42FWfp2w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Jan Engelhardt <jengelh@inai.de>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Trojan Source Attacks

On Tue, 2 Nov 2021 at 05:21, Perry E. Metzger <perry@piermont.com> wrote:
>
> On 11/1/21 16:51, Jan Engelhardt wrote:
> >> We have identified an issue affecting all compilers and interpreters that support Unicode.
> >> [...]
> >> The attached paper describes an attack paradigm -- which we believe to be novel -- discovered by security researchers at the
> >> University of Cambridge.
> > Not so novel. At one time, this picture made the rounds
> > (https://twitter.com/acronis/status/1019152990022787072 - the pic is likely
> > older than this 2018 tweet), and anyone who knew that Unicode had zero-width
> > characters already made the connection.
>
> If it was known to everyone, then why are so many language interpreters
> and compilers impacted? Surely if this was truly something that was well

That's because unicode rendering is a UI element and calling compilers
"impacted" is misunderstanding the issue.  There's scope for adding
new diagnostics to square with UI representation of unicode, but
that's at best an optional warning and it may not even be feasible in
all cases.  A comprehensive language aware CI lint check is perhaps
more suitable but if such a check devolves into "7-bit ascii only
allowed" for all cases then we've regressed.

Also, this is not just about compilers, the idea of such obfuscation
is central to any content that a human and a computer program are
required to see consistently.  A rootkit could obfuscate configuration
files in a way that's invisible to a human and evades visual or basic
syntax based audit, or example configuration files of daemon programs
could be similarly compromised at source, resulting in the compromised
files landing on various systems.  Likewise for build configuration,
makefiles, etc.

Siddhesh
