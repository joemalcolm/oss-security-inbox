Received: (qmail 14242 invoked by uid 550); 15 Apr 2023 12:07:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7528 invoked from network); 15 Apr 2023 06:34:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681540467; x=1684132467;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pSK07dI6/MkeTXFzbZyIyXA3freZ8XD9oxJwJCsj4es=;
        b=la0v9ibkMegbTFvex/f3lOO0pjWVKWP/oq45wJL9A3uPVqXA1fU5ISMbnACHGIumex
         u6wgZt4KmUwl5aN4E3kVGZPzN6PwiEN4pYprH9HZqiy8q+cEURwXltAY64EShmV46DL8
         UW5MxFOlT6rXmAtUQEFuS6pgQUyT57T+vZhw1EOe/LhQTeEFgP/0IrI4u8utkEEtY/A2
         MzNQPEu7pZiU8bVWAR6qoKAot9EILb7vL5Qsbx+RFBPUcnlrDK8dLY7l7yZV1lm7Pofc
         I/shl0d3Ke1LilE9TZ9T4bgf5H5aVTjt4dCGFazDchXHXyEQuXaVsqQ9/BL3HPa3bjqR
         ka8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681540467; x=1684132467;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pSK07dI6/MkeTXFzbZyIyXA3freZ8XD9oxJwJCsj4es=;
        b=QvTMOygbZNzhdyaOelnEgrmHxMCYFOcPK6EPIshwmgKQEg+4s9DlgYyRVBIoFnV+qS
         hP6/igd6UBROEXj86NaMRoFAnQFrETuD2RrkLVZihmrzQaMWtQHauJw4MiYU5vSNKS0b
         yNf2L/2JNlK2bdKaaH4LZMS4kE2USmajc3uN+oCxvBF3UBg0ihfKfjad0qbT8i1gXIqv
         KOZg47DyUXfpJUwssO0ybsIML6KMvSmYITQyvHK1firT6yCrKs75/34S/mxmxgjir77C
         gCAaFN+j8QStU5MhdWSYlA8z+Z9jzQTgQiwv0Nv6u9QkqZOTwdmoitmM2sQQQVbvuyDX
         0ygQ==
X-Gm-Message-State: AAQBX9dl3NWk8wfWPputfmduzxwtTv4yQfB5Lj14vLfqmUjjFUE0Vj8x
	OGpzWurn/f89fv6K4fYRp7Hl3U3ryZQuThtePeTxWw3sh2c=
X-Google-Smtp-Source: AKy350bF3dI89erbhLXkhA1Z7yuPsVc4qqvFwfp/1EOcBOjo7SAczY4lWkb3QNI7tzFb7wM8oZqoSrMA7q0MqaBdtMQ=
X-Received: by 2002:a17:90a:7c0f:b0:23f:83de:7e4a with SMTP id
 v15-20020a17090a7c0f00b0023f83de7e4amr8190435pjf.7.1681540466887; Fri, 14 Apr
 2023 23:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
 <87y1mwd1xm.fsf@gentoo.org>
In-Reply-To: <87y1mwd1xm.fsf@gentoo.org>
From: Georgi Guninski <gguninski@gmail.com>
Date: Sat, 15 Apr 2023 09:33:24 +0300
Message-ID: <CAGUWgD8297SAEoSS_hXGzk+VKQ_bE_K5CQeGrA26x0P=xouApQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] ncurses fixes upstream

On Thu, Apr 13, 2023 at 3:54=E2=80=AFPM Sam James <sam@gentoo.org> wrote:
>
>
> "Jonathan Bar Or (JBO)" <jobaror@microsoft.com> writes:
>

> > How can we ensure those fixes get deployed upstream, in major Linux dis=
tributions?
>

Isn't MicroSoft member of linux distros mailing list [0], which
purpose is exactly quietly trading 0days [1]?

Does the OP with m$ email address realize this?

[0] https://oss-security.openwall.org/wiki/mailing-lists/distros
[1] https://seclists.org/oss-sec/2019/q3/19
Re: linux-distros membership application - Microsoft
