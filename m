X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2522" "Monday" "9" "September" "2019" "23:16:37" "+0400" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>" "61" "[oss-security] Telegram privacy fails again." "^Date:" nil nil "9" "2019090919:16:37" "[oss-security] Telegram privacy fails again." (number mark "        mishra.dhira Sep  9   61/2522  " thread-indent "\"[oss-security] Telegram privacy fails again.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Telegram privacy fails again." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25818 invoked by uid 550); 9 Sep 2019 19:53:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17812 invoked from network); 9 Sep 2019 19:17:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=jSyAYdvPqnEg/GU0JDHKR48im/xfZe89yraJIko3UYY=;
        b=aqPVX0Uuj/nWikwvtRb4EK2Bp2zskmgUTx6RD1/4UejekdV8CGGEnDeGSFUlCgWuVl
         crsUX1POzzrX9JaFIPB3znQNcusIJ85CqTK0oQQI/7ezsllWsNtxJpxvdS7aNW2w7kps
         VVkm5Q2CzrE71XF7YHN2qcp8aa6q/dEZZhg0GHrxNd0XweYLMpoxPoVGBINpsdo6dpAc
         Km3h3H0HY4uGuT3LRrJGunOBd64QVv85VtsGgs37+dVflUoyjiiy2C+3O+AuDn3VLV3d
         un/YZNQViwIFk87krPdhOBHdJIsODVgHBrvijvc6gZasfCs77YZimOreZNFiDEwESUkz
         3F1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jSyAYdvPqnEg/GU0JDHKR48im/xfZe89yraJIko3UYY=;
        b=llcL6Xfap3mazvn/C3Pou1SVl8akuOg72SUb6Cqxrv0NUgLpzTqZV12c0zuqEcvlzt
         M5SRqAC9ezI2oPMzyLUFzOo0EEjuHQJazkKOZWf2O53JJ3414S8EFOTPDYzP4+zDSC+n
         3J0hg7tC7xg/Qt1dB9OJ9qiwM5iuYNkUqUytzGtEvNQtLLukQmyrSVgZYr1ETOT7VGuv
         jITZnpiIJMEAQ+zH/rtwzFPaBxg1iFPjGJ0mAJEbgY6aIrguPxF/d3KxTBGPI2+09Xal
         V9bDeBlyDbjxwKVHLRhW+NxPZ7GPMBg5I5amdLzFmS7h/ylRZR2tb3nHH9mgqCYUoFWM
         C8pA==
X-Gm-Message-State: APjAAAWSh/xW8nWo9QIAkBslK7+kXKBoBxnbtEobNvv9T2wwdHJ2VKM5
	uHhdx8uV2wf09n1viB9cNED9OA/1MP/HZ1S2ivBgZeN38qZL0A==
X-Google-Smtp-Source: APXvYqy1bDuAtNvRrw21pHyh09YDVo+YWwSzKNvXHkqzqvDZ91IrdvVyjhhW7kxJ9qpYRDFew+1k4wLy/b3agvCxvFk=
X-Received: by 2002:a9d:12e7:: with SMTP id g94mr19123958otg.6.1568056609120;
 Mon, 09 Sep 2019 12:16:49 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002ca5e2059223a121"
Date: Mon, 9 Sep 2019 23:16:37 +0400
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Telegram privacy fails again.
To: oss-security@lists.openwall.com

--0000000000002ca5e2059223a121
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

TL; DR


This is not a security vulnerability it=E2=80=99s a privacy issue.


As I understand Telegram a messaging app focuses on privacy which has over
10,00,00,000+ downloads in Playstore. In this case, we are abusing a
well-known feature of deleting messages, which allows users to delete
messages sent by mistake or genuinely to any recipient. It was observed
that once the message (image) is sent to the recipient, it still remains in
the internal storage of the user which is located at `/Telegram/Telegram
Images/`path.

I found this bug when I was researching about Telegram and MTProto
protocol. To demonstrate this bug let's assume two people here, Bob and
Alice.


Assume a scenario where Bob sends a message which is a confidential image
and was mistakenly sent to Alice, Bob proceeds to utilize a feature of
Telegram known as "*Also delete for Alice*" which would essentially delete
the message for Alice. Apparently, this feature does not work as intended,
as Alice would still be able to see the image stored under `*/Telegram/Tele=
gram
Images/` *folder, concluding that the feature only deletes the image from
the chat window.

The highlighted issue is valid when we talk about Telegram "supergroups" as
well, assume a case wherein you're a part of a group with 2,000,00 members
and you accidentally share a media file not meant to be shared in that
particular group and proceed to delete, by checking "delete for all
members" present in the group.

You're relying on a functionality that is broken since your file would
still be present in storage for all users. Aside from this, I found that
since Telegram takes `read/write/modify` permission of the USB storage
which technically means the confidential photo should have been deleted
from Alice's device or storage.


A compete, app for Telegram which is WhatsApp also has the same
feature to "*Delete
for everyone*". If you perform the following steps mentioned above in
WhatsApp it deletes the confidential photo from Alice's `*/Whatsapp/Whatsapp
Media/Whatsapp Images/*` folder and maintains the privacy however Telegram
fails. WhatsApp takes the same permission when it comes to storage which is
`read/write/modify`.


I submitted this to Telegram sec-team via security[at]telegram[dot]org and
a fix was pushed for same.


Blog: https://www.inputzero.io/2019/09/telegram-privacy-fails-again.html

--0000000000002ca5e2059223a121--
