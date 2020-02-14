X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3179" "Friday" "14" "February" "2020" "10:47:16" "+0000" "Ibrahim el-sayed" "i.elsayed92@gmail.com" nil "88" nil "^Date:" nil nil "2" nil nil (number mark "        i.elsayed92@ Feb 14   88/3179  " thread-indent "\"Re: [oss-security] Potential regression and/or incomplete fix for CVE-2017-12762\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential regression and/or incomplete fix for CVE-2017-12762" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28610 invoked by uid 550); 14 Feb 2020 10:48:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28589 invoked from network); 14 Feb 2020 10:48:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=NoxcVXsE3UtBrjB2J+tlJc3YReIiJBTt462OCdfs8io=;
        b=oK+x/+J4Y9dAteVkhNjnzJdA0eBaXBYPjiqOV1zlqfUB4FZsDwbgyvDizoE2or5Niy
         Fp57ndF2T3FyKTJoyAMW25YvxCmGm9kzcO2JnoNAH+ZPazewKrW2AIlmSAiTW3BbBoeC
         a5cyLeM4ItjjT4idrbUL4fr0yAEU5sjW/zcv5eYNr/hrhGFkTX5wPgiMg4aaO57FOf+l
         +jOg1aBAgwYgDxt5PLH/tG6HL3L76UeOYZutOt3zMB+LWBZsSWZUJopOslK4/lh0wIGn
         b44k5/FeXCQWtLft0M69BpXL2A/C67hY+F0iIrhI33UcK9VOGvmES2aKZXZ3JRcmd70/
         evzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=NoxcVXsE3UtBrjB2J+tlJc3YReIiJBTt462OCdfs8io=;
        b=m5+C06pMx8O2CcijsMr0J/DbvnIqGxh0BlYP9tjaXx8m9fFO3Uqzrjo82ZyKKrYxb6
         6ul+KbGPFP5EyHRjBmTwrh4E1Q2oEVPyP336ac7xEOEGGOjJGGskdCJu7ble4Rbfauz7
         Yb5O7YMiV/4XbJSCjoaRS729xNNzRmQOSMzKEPXPo7Rnm7Z2UsaMA4DtfIviy8vnaONt
         x0D/FdKU8uwu/XDFfMNKOH6EaI7PMizQpdpydMVmUzeLIj2dKipgqkL5U2vM5wIaMn+L
         Olf3kcRLM6Z8DRUYXNn4xs6Vdcc51lq3XgsvfyNUK4fG30oh4281xSmqkp6pgu4o9Jvr
         eo6g==
X-Gm-Message-State: APjAAAXwfAkYzfUQLRIoJ3Lk9Z1TyI+npgtWLu+deSPrqaf1ujeKWtve
	KHK0iiPg3m/tIEkhpcco/MZ6LfeqZqNfZuAITteKUuwY
X-Google-Smtp-Source: APXvYqwkPJ3xNB7ULfYz6HMbeFC5qA1A6XPH1FbikMLZ1KNAhv/EgsTXAE7CYUHm09WR/UI3awVoE3Htvj/e4ildobU=
X-Received: by 2002:a5d:638f:: with SMTP id p15mr3403680wru.402.1581677272509;
 Fri, 14 Feb 2020 02:47:52 -0800 (PST)
MIME-Version: 1.0
References: <CAJvHH_QwWT5HBMXEH8hVgXxm8xCYzhJfRTWAijAr0LLWQn4gdg@mail.gmail.com>
 <20200211213431.GA26083@grsecurity.net>
In-Reply-To: <20200211213431.GA26083@grsecurity.net>
Message-ID: <CAJvHH_RWLt8Y4aB6fwLtHymsjp8yrbwEdJ20+jZjNYYKmt=aag@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000fa365e059e86ef34"
Date: Fri, 14 Feb 2020 10:47:16 +0000
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Potential regression and/or incomplete fix for CVE-2017-12762
To: oss-security@lists.openwall.com

--000000000000fa365e059e86ef34
Content-Type: text/plain; charset="UTF-8"

Hi Brad,
Thank you very much for your reply. This actually clarifies everything :)

Ibrahim

On Tue, Feb 11, 2020 at 9:37 PM Brad Spengler <spender@grsecurity.net>
wrote:

> Hi Ibrahim,
>
> > I think it is incomplete and can lead to reading out of bound since it
> does
> > *not* check if the src buffer (p) in this case has 10 bytes at least. The
> > fix assumes p has 10 bytes and copies that into newname. The fix
> > uses strscpy (
> >
> https://github.com/torvalds/linux/blob/cc12071ff39060fc2e47c58b43e249fe0d0061ee/lib/string.c#L180
> )
> > which
> > based on its code it starts copying from count and decrements to zero.
>
> This isn't correct.  There is a 'count' variable that decrements to zero,
> yes,
> but that's not what is used to index the strings.  'res' is used for that,
> and
> it increments from zero as you'd expect.
>
> Regarding OOB, there is the read-by-word trickery, but it's safe and won't
> trip up KASAN for the max 7 bytes it can end up reading past bounds, and
> won't
> in any instance cross a page boundary.
>
> Since 'param' is guaranteed to be NUL-terminated from the fix (the
> isdn_common.c
> change), so is 'p', so the strscpy is fine here, especially since the later
> use of the buffer (coming from the netdev netname) uses strlen as the
> length
> for the buffer copy to userland here:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/isdn/i4l/isdn_common.c?id=9f5af546e6acc30f075828cb58c7f09665033967#n1385
> So strscpy_pad() wasn't necessary in this instance, despite it often being
> needed for kernel work (and the better defensive choice, unless performance
> is critical and you can guarantee the remaining part of the buffer never
> gets
> copied to userland or used in any way).
>
> > ## Regression
> > I looked quickly into latest version for the kernel v3.16.81 and it seems
> > that the patch was probably reverted as the code matches exactly to the
> > vulnerable version to the CVE (
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/isdn/i4l/isdn_net.c?id=v3.16.81#n2646
> > )
> > Not sure if the fix was reworked but wanted to surface that issue as well
>
> This wasn't due to a revert, the fix was just never backported to 3.16.
> Happens all the time.  There's never a guarantee that just because a
> security fix is backported to some newer kernel version that it'll be
> backported to all affected versions.  If the patch doesn't apply cleanly
> and no one fixes it up, it just never gets fixed.
>
> For this instance, you can confirm it by looking at the git log for that
> tree:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/drivers/isdn/i4l/isdn_net.c?h=linux-3.16.y
>
> The 3.16 kernel has a different maintainer than others listed on
> kernel.org:
> https://www.kernel.org/category/releases.html
> so there may be different critera for what's selected for backporting
> there.
>
> Thanks,
> -Brad
>


-- 
Regards
Ibrahim M. El-Sayed
Security Engineer
Website: https://www.ibrahim-elsayed.com
@ibrahim_mosaad

--000000000000fa365e059e86ef34--
