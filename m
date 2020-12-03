X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1580" "Thursday" "3" "December" "2020" "10:41:11" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" "<CAFcO6XPbh8JSYktdb4HstBunmsUfj-28hAT=qhU+AC0Z7UxBog@mail.gmail.com>" "53" "Re: [oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1" nil nil nil "12" "2020120302:41:11" "[oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1" (number mark "U       butterflyhua Dec  3   53/1580  " thread-indent "\"Re: [oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1\"\n") "<CAFcO6XPv=KkOzk_wzNJDSv1h-X3TnbVXrZm3CR2aS+-EA9CHzg@mail.gmail.com>" ("<CAFcO6XPv=KkOzk_wzNJDSv1h-X3TnbVXrZm3CR2aS+-EA9CHzg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21726 invoked by uid 550); 3 Dec 2020 08:38:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3637 invoked from network); 3 Dec 2020 02:41:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=J2J++pXNZ4fh3ALjG9rDinWekohl+oehjvwr3mHr1Kc=;
        b=qqhikdbwcWM8bXCyZnB3D6e0YarucB99ml/8ZfPvxE5Mt/dXJ7iytxM01OO79gVoqH
         eil5m+TZCLmtW1Pfb2dtX/mOE0UheIOfT0Ydin2GFPHLx//TMvkszyel5C4Ma2KQMPN+
         oSRj9nejhylx1GXufaLMWE5Q8nWlf3JpLkRp/xZHk6pv2TgzGYU3U+AvMpeOu/NyA4fB
         Uq59yWPDElae327oRuM7UjApWqTeVlEaY1aZw0Eo8JrNuP1/VQAO6sUb56yEHiLGivbv
         esUd+XaxBIZSeaDL+CBjVFp6/zpUA+G/Vk+GYi02lxKFu8p9praVj55cb5+Dj+Mfeb+d
         0VQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=J2J++pXNZ4fh3ALjG9rDinWekohl+oehjvwr3mHr1Kc=;
        b=ErNTmxBfsedHm8E3o5pHl+jdQfp7YzJemLirsGhUNqXdEmkjeUnqhkEaE3LUqLLEO4
         aqxly8UdgSTypPTZRuYfGf0TlsPa44WtNkyuTEHRKG5f6LrG3IxZkHX/D1sM1Tf9M8UY
         Xz75CdRE0p4Qw5O83XXfWyZDu8SQTYqlm27NYPtKcA1oj2JLh15NBrW5fk4xU41pezd2
         6WYWDa9aaO08MBXG70x8pdPUUr4BcnwYxJVVeIMVsGBA2qCN3J9Az4hBQwV6uLfbZ41G
         evpoidqzXBkkQEXc1+ewRuPCAfjCXdLtX5OTFxqfHbxta5gXrCHSv/+Wx+h1JDvhTyHn
         5kjw==
X-Gm-Message-State: AOAM533gFk9X8A0tTK2P514TqDI8K1N/KhEg3mcaeaYjPvbkraampbur
	U5eZJhip1/Eb+5LcuepZ45xZfEi/SVf1qwxxKn8xvLpl
X-Google-Smtp-Source: ABdhPJw7JKAYuJRFmkkaZdclBNOHipsjfR2KQGCN+End6VqxeTWk/Vj0yLj5oWrNrdsTA7gOAnsAuuh+pv/Kiz7YzK8=
X-Received: by 2002:a25:ac92:: with SMTP id x18mr1671402ybi.484.1606963282553;
 Wed, 02 Dec 2020 18:41:22 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XPv=KkOzk_wzNJDSv1h-X3TnbVXrZm3CR2aS+-EA9CHzg@mail.gmail.com>
In-Reply-To: <CAFcO6XPv=KkOzk_wzNJDSv1h-X3TnbVXrZm3CR2aS+-EA9CHzg@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Thu, 3 Dec 2020 10:41:11 +0800
Message-ID: <CAFcO6XPbh8JSYktdb4HstBunmsUfj-28hAT=qhU+AC0Z7UxBog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1

Hi,
this was assigned CVE-2020-27786 via Red Hat.


Regards.
 butt3rflyh4ck.

 butt3rflyh4ck.




On Tue, Dec 1, 2020 at 1:51 PM butt3rflyh4ck <butterflyhuangxx@gmail.com> wrote:
>
> Hi,
> I reported a use-after-free bug in snd_rawmidi_kernel_write1 in sound/core/rawmidi.c months ago. And I reproduced it in the latest version linux-5.7.0 at that time.
>
> Description:
>
> It was found that the raw midi kernel driver does not protect
> against concurrent access which leads to a use-after-free in snd_rawmidi_kernel_read1() and snd_rawmidi_kernel_write1() in rawmidi.c file.
> A malicious local attacker could possibly use this for privilege escalation.
>
> Root Cause:
>
> The rawmidi core allows user to resize the runtime buffer via ioctl,
> and this may lead to UAF when performed during concurrent reads or writes: the read/write functions unlock the runtime lock temporarily during copying form/to user-space,
> and that's the race window.
>
> Patch for this issue:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c1f6e3c818dd734c30f6a7eeebf232ba2cf3181d
>
> CVE assigned:
>
> not assigned.
>
> Timeline:
>
> *2020/5/7  - Vulnerability reported to security@kernel.org.
> *2020/5/7  - Vulnerability confirmed and patched.
> *2020/5/18 - Request a CVE ID via https://cveform.mitre.org/
> *2020/11/18 - CVE Request responded but not assigned.
> *2020/11/18 - Reported to Red Hat.
> *2020/12/1 - Opened on oss -security@lists.openwall.com
>
> Credit:
>
> This issue was discovered by the ADLab of venustech.
>
>
> Regards.
>  butt3rflyh4ck.
