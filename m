X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["460" "Wednesday" "17" "May" "2017" "02:25:52" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>" "26" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017051700:25:52" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        robert@swiec May 17   26/460   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170516220345.GA10874@openwall.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5639 invoked by uid 550); 17 May 2017 00:26:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5619 invoked from network); 17 May 2017 00:26:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=1qsG22ODwYK0EcxjDIX/Yp8yGajd3qQ9mIanTGU6U98=;
        b=eAhg4FujoT3TEPYHRwIV0hkpUU7O0+DGCb7CCMwyFGhFQc42yhutwCOLUR9c0sOj3z
         uK5uSAztMXB+bQCVimq/qirOghyPPfmVWHs6/o9lPEVWmichuCirH/oDmZF1ndL8uoV0
         xsPtr/lVqDXqONXxyKmc5GZq+yijnWL37t1z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=1qsG22ODwYK0EcxjDIX/Yp8yGajd3qQ9mIanTGU6U98=;
        b=Mj2ciToqz67pgCx7FRYS14lGmSzIc4QVsPRCtRTI/YE9miMwZpU1N+v+C4ZRNzNXs6
         pGHc33xbw82hHQrXn+7iHYu90X9BPQXSu6cj6YEUtCWAIObvd5eaa7Mg52iJXWDpoPEQ
         ELHCuQCsrOxWTb4ftZIdKlS4KQuGocMVEVqOIPx6AOcpm5rYRY5NtHTDXTWo9hRiCenQ
         oF+fE9VYy0RLD6wBx7QSNiQ/f7XkU4VDHjnRevLhYkRFio4cjl5FOMZzfAw7GrseT9rC
         FcUUjzLTVSc9SgmzOFwwpr3fLFeBPEk75uEdzAZOPJz99DqMNRKo+sIxkZM9QGFAGzGO
         CzBg==
X-Gm-Message-State: AODbwcAyKfP25X0Y5pqVFieb8mld/zfsPdXgySvgPFwYi6iComPT5ktr
	UAylJOtVYr8Yxr2yjhvUd2yYzdybp3v6gNcTLw==
X-Received: by 10.98.32.132 with SMTP id m4mr737536pfj.131.1494980753670; Tue,
 16 May 2017 17:25:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170516220345.GA10874@openwall.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com> <20170516220345.GA10874@openwall.com>
Message-ID: <CAP145pjmwx27VXaT8-njOL9DG205yjhLUrwWkbD0NthYOZQvfA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 May 2017 02:25:52 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

Hi,

2017-05-17 0:03 GMT+02:00 Solar Designer <solar@openwall.com>:
>
> Jason, Robert -
>
> On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> > A harmless example from rxvt - pushing back the new-line character:
> >
> > $ echo -ne "\eGQ;"
> > ;$ 0
> > bash: 0: command not found
>
> Does this also affect rxvt-unicode?

Yes,

Tested with rxvt-unicode-9.22

$ echo -ne "\eGQ;"
;$ 0
bash: 0: command not found
$

--=20
Robert =C5=9Awi=C4=99cki
