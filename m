Received: (qmail 30351 invoked by uid 550); 15 May 2025 17:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26198 invoked from network); 15 May 2025 07:27:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=varnish-software.com; s=google; t=1747294056; x=1747898856; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wcQF5wBZg8VLzsj17wfu21n9hxsLztq07xwJ/VPj3sc=;
        b=WmhLBTHBHvKBuOprTbU4F1WnVKFcEho3biLAgD2bjuVSIdXHq3owYcvTocLT+UJ22g
         Pak7Dxsh63LE0zuMlH+tAS6sgWhfXjhAIIs2UtRPcN3YPl1nhSUC4JEFVg38BnGydScH
         qQHe8iGlPaGTPz8ZH8djgGSviO5SvGzUrrxwheKcMxkHWPv95bxj3EjnxDQe96TW8Ajj
         5Co3IUVHny2qODVe3es2EGxZwDX/AV8Hnu4nryOOSIFC+99P33ALqTIFsduYVLfwS/t2
         iEjB4RgZy11RB+X2XlPsgib84CY3ESPwwW9Kovs97biqQjrfvwlmVY9XLBT2+NbR2u8v
         xXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747294056; x=1747898856;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wcQF5wBZg8VLzsj17wfu21n9hxsLztq07xwJ/VPj3sc=;
        b=Ny8g6uKJ1tn3BE8udbG9eq+kliNsdg6/ZAY70Is2hoXW9oxOkysYRlJVl+PFxdlBOu
         Yobc/BLMvLq3CcNPJQlXzvatclGxskhtnF/ntYou6F/BwgaG0uHOnvr7jhl3jdlmq4Om
         Ss6DeM2yqI5ljjI7M0ULmDis6zxXoFORpNGzN9tQWpFvWGZChMBTbEJVR7/u9ktSO1KA
         mFHHSCMrCDEDmPNVdCmxWQvZ3jgubtDI0ZR5JAalUzktMaQ6Sa5RTiRZAwQNKeEbLntw
         mVGxZ8pQ65gns17x77cAkR0V1a3h/01WXkRBF/roovs90IEQLng3YfDrEuo3R8YnMph2
         tW6Q==
X-Gm-Message-State: AOJu0Yx2m1Yfec6FA+0qBStjQw36Vtbr2WkVHtSuadKKS+lO712jP3NW
	yHoqLn3sJPgZX2mY+SrpF/Ttvn0/dfgVROPh0lTC12D7TT5CDme8K4HW4w0LunW80RkRTcWcYSY
	0dAG46KeAWkngleqeqix+BfcOJTBMJ2V2Vpkduf8xcd9gN0McK5vEpw==
X-Gm-Gg: ASbGncumUyn/e1Ct2NCn40QNd6n9xTftqkPPD/H0PRKie/xzHzuDFTCmARQi1VwMW9c
	AWzAsLsH64iu+L/q8DdoFG9DTGPFVJw1IZSi0Ixgxh0VDYBg8L9bL2l6S20/6TzqNS376Uxl3N0
	Fj8y+Rl0wFFDACZztxJa5Bic51mQlInutPwGA=
X-Google-Smtp-Source: AGHT+IGbkk3OHDRSKrR7WvCByL9vqyrcuvpYM2AdIwHQrqYGpFWR1kmfRq6JA/wJ0ZrfT6DqDV0m2iWt8SK9LkbeAdo=
X-Received: by 2002:a2e:a584:0:b0:30b:f138:1b9f with SMTP id
 38308e7fff4ca-327ed1195b9mr28842301fa.17.1747294055406; Thu, 15 May 2025
 00:27:35 -0700 (PDT)
MIME-Version: 1.0
References: <CA+NO1zTqeNPvwupEFgcr6T4NgU3V93vtJ8eEpmAHYMGjvpR6YQ@mail.gmail.com>
In-Reply-To: <CA+NO1zTqeNPvwupEFgcr6T4NgU3V93vtJ8eEpmAHYMGjvpR6YQ@mail.gmail.com>
From: Asad Ahmed <asadsa@varnish-software.com>
Date: Thu, 15 May 2025 09:26:59 +0200
X-Gm-Features: AX0GCFtFj7Oqc_rUzFYaOrniKfbZ5ieVIwKVBy8BNNnim21P6JgvOFRYYxwAFTc
Message-ID: <CA+NO1zRy_UT2sEHK9-8Xy9W24Ci9AEg6XwEn5RkOpsYi0T23uA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007db263063527992b"
Subject: [oss-security] Re: VSV00016: Varnish Cache 6.0, 7.6, 7.7 - Request Smuggling Attack

--0000000000007db263063527992b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello again,

On Tue, May 13, 2025 at 4:57=E2=80=AFPM Asad Ahmed <asadsa@varnish-software=
.com>
wrote:

> *CVE*: Not assigned yet, expect a follow-up here.
>
CVE-2025-47905 <https://www.cve.org/CVERecord?id=3DCVE-2025-47905>

References:
>
> - https://varnish-cache.org/security/VSV00016.html#vsv00016
> - https://varnish-cache.org/security/index.html
> -
> https://varnish-cache.org/lists/pipermail/varnish-announce/2025-May/00076=
7.html
> - https://github.com/varnishcache/varnish-cache
> - https://varnish-cache.org/releases/rel7.7.1.html#rel7-7-1
> - https://varnish-cache.org/releases/rel7.6.3.html#rel7-6-3
> - https://varnish-cache.org/releases/rel6.0.14.html#rel6-0-14
>

A follow-up announcement to share an update to the release notes:
-
https://varnish-cache.org/lists/pipermail/varnish-announce/2025-May/000768.=
html

--=20
Asad

--0000000000007db263063527992b--
