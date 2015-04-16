X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["617" "Thursday" "16" "April" "2015" "11:41:12" "-0700" "Kees Cook" "keescook@chromium.org" "<CAGXu5jK2m4qZ0Qmhr9zUFjCxNPza6bRsAaAxDaxM9oUi+b=99Q@mail.gmail.com>" "19" "[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation" nil nil nil "4" "2015041618:41:12" "[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation" (number mark "        keescook@chr Apr 16   19/617   " thread-indent "\"[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation\"\n") "<552FAE4F.6070300@redhat.com>" ("<552FAE4F.6070300@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1948 invoked by uid 550); 16 Apr 2015 18:41:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1881 invoked from network); 16 Apr 2015 18:41:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=rhbOGy6kMxD/AFOjclNMwfZyBqVWOiTYmb23Hh7Bh88=;
        b=nDrlY/3NFiU+P6cKqX11m5ni4kielEaskLnm6iolfN80kBUNimYewXBlLZjL+4hTho
         FctsqCq9zoUr9YMjWfBMO4I3W9t7MDqk0G/2v6DkEhWBx3GsFI6AKek7xwcUahHTl2qK
         6Z3MGfeqvlFYwkM9XOUB0FqgyZoEJJ310Wfo8Zk+KqYdpKzRcsEmGMJI5xQGVynJPNhL
         QMH1qdu1UHgiRjrrpPF6spUvYJyv8J9tKRNW6L8P4X14Nhje5UZ0na5qjlNq+glgMiAz
         GhbuXcC2+U8j8WEwT9iMhBWbUjfGr8N0TGWlpvCNbHpywea1qZOdoipjundp7PMUBWA+
         axbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=rhbOGy6kMxD/AFOjclNMwfZyBqVWOiTYmb23Hh7Bh88=;
        b=eJx4lR4qllnRSrHq/twry2ybIInv0Lb+6phNK2vII/ZjA6sTE7P8a4M9b4KKQIGI/M
         7YHjwowfzeVvQJo4AZb24Wy2fuiPJPyUl5XsuMvqdCG7ZdohhYCQjnTQwxz16adXJUvB
         vjWYlwFlo1QEIrTinhd5/QeesGHWCX6weWpt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=rhbOGy6kMxD/AFOjclNMwfZyBqVWOiTYmb23Hh7Bh88=;
        b=McIAlovbHFjWovukCScQD6AXPJu4ozxE7QFMEJzmbrdFsAyGcaY8+PrmIlRyoESu0j
         SHX9csOO/NtmyrtOSFplSrz8nElcy8bi0AO1OwT+YgOiQgvxXl0ZU2wnfI1k1i102dOa
         +u3BFjJYC94Un1Mi/QBzHPBEHcUZJNOO34w0eAbs3bj91ZSKklQrIlisTKgDSt32Ysd8
         Wlr1fj7JoU0wPiJMd+5xoKFsN/pfJwdwjJEIUJz7HkDwnzwQZbdBl47nJa1JKowf9eHt
         CrlgqBEFHiag/LEKNQzWa22MnpumqC5C9mu6gHZOQdvU4bd2/sQTRA0DQZn/leNERh0s
         9KCw==
X-Gm-Message-State: ALoCoQkKkPxXfjzrV7pMJBOUHpoxxmQ/ia/yuzIsLsUoDVJwhGMJWthD7l4588RhxOinklJBV9c0
MIME-Version: 1.0
X-Received: by 10.52.4.34 with SMTP id h2mr29309478vdh.47.1429209672624; Thu,
 16 Apr 2015 11:41:12 -0700 (PDT)
In-Reply-To: <552FAE4F.6070300@redhat.com>
References: <552FAE4F.6070300@redhat.com>
X-Google-Sender-Auth: J7rTjLashENKULTqpdCV7SdwHJw
Message-ID: <CAGXu5jK2m4qZ0Qmhr9zUFjCxNPza6bRsAaAxDaxM9oUi+b=99Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 11:41:12 -0700
From: Kees Cook <keescook@chromium.org>
Reply-To: oss-security@lists.openwall.com
Sender: keescook@google.com
Subject: [oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation
To: Florian Weimer <fweimer@redhat.com>

On Thu, Apr 16, 2015 at 5:42 AM, Florian Weimer <fweimer@redhat.com> wrote:
> Should this be treated as a security vulnerability?
>
> =E2=80=9Cfs: make dumpable=3D2 require fully qualified path=E2=80=9D
> <http://lwn.net/Articles/503682/>
>
> Some widely-used cronie versions still do not have hardening and parse
> commands in core dumps.

I didn't seek a CVE for this at the time since it requires a pretty
specific combination of configurations. Namely: setting dumpable=3D2
without a dump handler, which I couldn't find any distro doing. I have
no objection, of course.

-Kees

--=20
Kees Cook
Chrome OS Security
