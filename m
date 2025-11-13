Received: (qmail 1239 invoked by uid 550); 13 Nov 2025 09:31:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1218 invoked from network); 13 Nov 2025 09:31:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763026293; x=1763631093; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yo9/LjWs07NNWDXMZcpA+2YRt7WCxbNTRP/lYUD84vw=;
        b=FQHX7kq/4W2BeKIg2gb7hVG6Kl+7S+JFbX2Aj/QUUpauzJwTxD98/s+Hme6hQsZYpA
         laL/PIHqGDw6f4fMKhkT192mBSvead8NRFExP73R11M0NIWMQtL7L61lsvsyCS8rKgEk
         onaPgsD7m0Z6tm7uWEpr1ffcU/hENym+jGAyPLWyCQfRprHunwATfgFyiHZk/cQmjH07
         FrQ7qrEeIXmfhmUZkH28oD9/TxIikikc9FsdD66foK+XzcDt2XTYfkRGZ5pUCaaFbSKx
         D8DUljaBxAK69mpOikIcmky/oYiJPWN0q+oeCZdCI6rQdy9IljCBoRyJdVQazOwVfHW9
         lsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763026293; x=1763631093;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Yo9/LjWs07NNWDXMZcpA+2YRt7WCxbNTRP/lYUD84vw=;
        b=HPecehsf72EZ+zMVN2Nk3PCxJ1Ue6nSdf0l2+zRG4cAfRn2pGuQsrBaomevY4J/tGK
         fD4MX/av41kxjIeFiwnXefg3fATG24HifyeJy2hi6Bhg7XFw5ykXfGltEBv8+O8nLpwX
         W4+dUeCMrFeTL5H45DQm5gT2N7wx3C0dM/7b4ZXGNI1gS03qgthBZhALET3hsTDnwx4/
         GhqGNXgvJ6Xz9sEu2o4lGvFedx2E/r7YqmizB9TECUZzbynpEyaDTST8nyW0Q38t9+oo
         b0DZ32r5vdQX+DbeI4bRwHxr8V72x1joyFkjh28qcYw4yuHa0Ikvi79zNaM9/G4TrEr7
         pyKA==
X-Gm-Message-State: AOJu0YzhuC63aDx8DnlSjqNxu1Dol4TR+DTziuC/sReuyHnz3d1vEFNB
	+Bxu6OT9EkKh7WGtjeuv0+c4Kda09ELQHpA5cx8VwiBqlBBqCY9mljhSkTp4KcU+QN1cozN1zw5
	n63Sv4oqZLD9RYoxuplK2J9oAwtllzMkEOA==
X-Gm-Gg: ASbGncsFxfHheK+932PKvOf84KHBBDfbv6u3XF8I+fbJINQrfD4fMG3YV8zn4NzsquJ
	fNxvwCU6ShoQO3aMYnrorxy7jayn1ED37yv7eoXqliOQVs1xxPTWxwHteshhBigvc60lOrL15uC
	cfvrk1dv8B/16o3grk+6ikrEf2V7r1r3zZ+iGHpZLuhK8Ye/ZhrylHFIwKXigstBxG6TKTwEj4t
	XyFNzzuJdHsdou0mIdnKS8P2cgw80XumJTQZFq7UQYRouJiWuFSl1k15HGbZsjTvYlZv/6ty/Mo
	/7sDZB6zp1uVdq4m
X-Google-Smtp-Source: AGHT+IH/iN1FUnxlJat580HrS7CGiSojGwwS6YpYt6a4Ws7eRf6iaPg0TTwZ/FrtPtb1x62t9uYG0th9atr97KNsNJU=
X-Received: by 2002:a05:6214:27e3:b0:882:401c:e382 with SMTP id
 6a1803df08f44-88271a51aabmr101648826d6.65.1763026292623; Thu, 13 Nov 2025
 01:31:32 -0800 (PST)
MIME-Version: 1.0
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
 <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <87fravyp43.fsf@hope.eyrie.org> <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
In-Reply-To: <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
From: Alexander Patrakov <patrakov@gmail.com>
Date: Thu, 13 Nov 2025 17:31:04 +0800
X-Gm-Features: AWmQ_bkBqBpFFwCeJFkziydQYR9BS6h7eDJNiIxtrYGQZv5BX4o_CgIKmXgjkjw
Message-ID: <CAN_LGv12B3xWuFeCacV91-wvd30UVabfLfHPwcPQ4BoH--1BdQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Russ Allbery <eagle@eyrie.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Thu, Nov 13, 2025 at 10:34=E2=80=AFAM Peter Gutmann
<pgut001@cs.auckland.ac.nz> wrote:

> [0] For example modify the code/operating environment to introduce a secu=
rity
>     vulnerability, I'll let you decide whether this qualifies as impracti=
cal,
>     unrealistic, stupid, or several of the above.

In a different context, it's practical, realistic, and sometimes a
smart choice. Many custom Android ROMs now have a switch in the
settings that ignores the window secure flag, and yet another one
which prevents them from knowing that a screencast is in progress.

=46rom the app developers' viewpoint (I mean, apps that display
something sensitive), it is an intentionally introduced vulnerability
in the OS. From the user's viewpoint, it's a useful feature.

--=20
Alexander Patrakov
