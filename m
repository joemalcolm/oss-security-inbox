Received: (qmail 3440 invoked by uid 550); 15 Jan 2025 15:29:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13971 invoked from network); 15 Jan 2025 06:21:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736922091; x=1737526891; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AoGZaZRkZnpwxuE0hsj+i5C45xO9zWpobLNHmo93H3o=;
        b=PO2Q5BKFsshlAfx2RIGpt/F43Bp4orikunuo//A8goxB5GdNPbRKhG6T45qWaa2+/3
         A5M75Lry6i9I8hk+cipCeFjMUnQjH1exiHaVjnQXKMpGsuszq+Za320dEusSnAf/UDsm
         wU5PG42QwNWPaqmvQ+og3JL+DABr6cyZSaxAUtCQ4AVDk7QWpDgErMwDSyy+rqyIjTtS
         lhcSL3SSL3A9skMmdPesEZdjctEIsqkXXhMER4UAjynbXGHjqQgkk6zqVc0hyMWDsgkl
         Hh7BM5ax8LzhdevXYvnPTSfkTPM+b1BJ3BWGbP5T8NqpnbKXUUon7hphP1Fwfl6BPm0I
         FECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736922091; x=1737526891;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AoGZaZRkZnpwxuE0hsj+i5C45xO9zWpobLNHmo93H3o=;
        b=AmzIuLiZ2T8YqhhgAl282k58L1EAFBy8clZ7QoFh3hfioxiM7s/zY9rMLZiYaiipUX
         V+8tBMxGYJYQeb8ohs2tB516/H69HUdImkqB9eyqaB4kj1A2kjPj/yIVH26xcJlmplkW
         nBbZ9/uuP4JA++8CiRM4ptmsISrj9AI/mOz9+Mou2PlWxGKGF+RSzbblNda1A2p73wXT
         qbk9Gdr438ykePdPhF4C8wt+a2hghpmmKI+V2EHN2nJisF+ABONOnb6Fs3azpiGuxflX
         69TORhFenWSNOvMPzJx3VyrdhtrdUUu9TZeEPIhIMAcNPW3jaah/DRJ5Tx4caNo7mHWq
         roBA==
X-Gm-Message-State: AOJu0Yz5L3HjYVh3134jgO1S6y8isNr8/SRLye7is8R/S1q2C5l21u/e
	nNY/1HseOygAfJ1Tc3xoZRyLwQXkf1Do/m+yF7ER4K0I96LhXhkqLmrDk1wzIbJZO1gp+SpqvBU
	80ygHD8xXm25LX/PVs+51sw0zrv+ZV8uK5XU=
X-Gm-Gg: ASbGncv1AeMG1ywHfaDpr0OP1xVbq++p9eR8XILPezKo2XyQ5kEooUSoaL/x9x2C3tb
	LBL37MhaAmp91xcDi05AQASdofrDos2n26Q7BNhF2vDwFjkpqswSP/vgc/ZC/lRN533lD
X-Google-Smtp-Source: AGHT+IH1yJF4BMYTDnetZMTJPlOYb0Ae+LhRHiFy3AIXU69x+AlJ59WzBS30tRN7YBWgeYwSxl1AFXEnDOJIwKgDwT4=
X-Received: by 2002:a05:6871:6216:b0:296:e4bb:80f5 with SMTP id
 586e51a60fabf-2aa069844ccmr16611550fac.36.1736922090964; Tue, 14 Jan 2025
 22:21:30 -0800 (PST)
MIME-Version: 1.0
From: Soatok Dreamseeker <soatok.dhole@gmail.com>
Date: Wed, 15 Jan 2025 01:21:20 -0500
X-Gm-Features: AbW1kvbBasGq7_2EN0OB3wbTWS2Yd2hktulEV7zpF-WNRi_cNC5pyOCYkP6V8-8
Message-ID: <CAOvwWh2tea8QjHf63Efhxh7-ESa2zoDv-e1Cwf2T=WRVuWZRmw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003c1328062bb8b02e"
Subject: [oss-security] Session (a fork of the Signal private messaging app) is sus

--0000000000003c1328062bb8b02e
Content-Type: text/plain; charset="UTF-8"

Full details here:
https://soatok.blog/2025/01/14/dont-use-session-signal-fork/

At a glance, what I found is the following:

   1. Session only uses 128 bits of entropy for Ed25519 keys. This means
   their ECDLP is at most 64 bits, which is pretty reasonably in the realm of
   possibility for nation state attackers to exploit.
   2. Session has an Ed25519 verification algorithm that verifies a
   signature for a message against a public key provided by the message. This
   is amateur hour.
   3. Session uses an X25519 public key as the symmetric key for AES-GCM as
   part of their encryption for onion routing.

Additional gripes about their source code were also included in the blog
post.

Happy hacking!
Soatok

--0000000000003c1328062bb8b02e--
