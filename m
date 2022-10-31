Received: (qmail 7807 invoked by uid 550); 31 Oct 2022 16:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5162 invoked from network); 31 Oct 2022 16:35:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nMJn6YaAEyT6Vhgvc9FsRncTwThoWP6B3gvVZ9l5t8A=;
        b=J+zDNrMZYoP6NJUNI5wOTdwioHkgA7lgw3lXrCRVZdXfDoNqHkjgn/PpL9c8N9uBuK
         5aKuisCOz/gN9PmF3b0LIEfR5X5G2wFnbLtkiMAUt/f5lyyskjOTx4Av30AK4LW/4q+l
         I05Xo/13t/FeQI2uEhR1rZUm7UzCdLE0qDOf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMJn6YaAEyT6Vhgvc9FsRncTwThoWP6B3gvVZ9l5t8A=;
        b=ZLgPuiBU7YB2D0uWShd5VsJz6qMCwXS9p0V7US3fVY359BOFal9+EV+ZvaGL0qp0JQ
         Fl7iLjPN6eGAYIhkjBpUvddSH8eFBg4Xets+RcL7fnFc8T7D6j84wOOD79C2nPaK0mdo
         FXVOdA1DHL92Rqd2lu4L+5a4LbdAXOliZ1tzespJtXrdMrthZydRpeVrG6llTBUFn0nm
         pwQ5Kt2hdk7tt9Aa92PFjcyeNaLz5WoCDt6C7zAGDL6zNrYqCvfMGRgyA7XK8YK7rrNt
         ft8OUu5ApIpyaa5/XLZlhA07w1YFwsAAF3esfJmpGoERrYHa6AvJo+3V461VkZAk+yCO
         mufg==
X-Gm-Message-State: ACrzQf288wOjw7je2oGfAsNZtm3iIozH0+/wJxAZwTCL9T4DRxVhEPFY
	ybImQG6mzF6zV3d6Bjluo+O1Kp5svemgYbyv0U+xhA==
X-Google-Smtp-Source: AMsMyM7CQVeu24xlO/rL6DUanpkVwiu/4d18E0jsCHAzVhpWs8nE1sJ6IiSCHnLzh0uDF5h750X/qobqyxClwadFeTA=
X-Received: by 2002:a17:90a:e60a:b0:213:e299:b8e8 with SMTP id
 j10-20020a17090ae60a00b00213e299b8e8mr6136421pjy.85.1667234099142; Mon, 31
 Oct 2022 09:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <Y12K5FxvbPe4gpkU@itl-email> <994FA313-2A6F-48DA-9A59-BC3B69E51C7F@obtuse.com>
In-Reply-To: <994FA313-2A6F-48DA-9A59-BC3B69E51C7F@obtuse.com>
From: Bob Beck <bbe@chromium.org>
Date: Mon, 31 Oct 2022 10:34:48 -0600
Message-ID: <CADkPfriF-FoX0Ywxi8Z8v8LjHkrCW_jXdXNgNuSeh6sNLvkGNA@mail.gmail.com>
To: demi@invisiblethingslab.com
Cc: Roxana Bradescu <roxabee@chromium.org>, oss-security@lists.openwall.com, 
	libressl-security@openbsd.org
Content-Type: multipart/alternative; boundary="0000000000003cbb8005ec5730f1"
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

--0000000000003cbb8005ec5730f1
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 31, 2022 at 10:31 AM Bob Beck <beck@obtuse.com> wrote:

>
>
> Begin forwarded message:
>
> *From: *Demi Marie Obenour <demi@invisiblethingslab.com>
> *Subject: **Re: [oss-security] Forthcoming OpenSSL Releases*
> *Date: *October 29, 2022 at 2:19:41 PM MDT
> *To: *oss-security@lists.openwall.com, Roxana Bradescu <
> roxabee@chromium.org>
> *Cc: *libressl-security@openbsd.org
>
> On Sat, Oct 29, 2022 at 08:43:08AM -0400, Bob Beck wrote:
>
> Libressl is not vulnerable to the upcoming issue.
>
>
> Is the same true for BoringSSL?
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab
>
>
BoringSSL is not based on OpenSSL 3.0, so it is not affected.

--0000000000003cbb8005ec5730f1--
