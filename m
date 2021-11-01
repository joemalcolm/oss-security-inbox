X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["526" "Monday" "1" "November" "2021" "21:44:31" "+0100" "Emmanuel Lecharny" "elecharny@apache.org" nil "21" "[oss-security] CVE-2021-41973: Apache MINA HTTP listener DOS" nil nil nil "11" nil nil (number mark "U       elecharny@ap Nov  1   21/526   " thread-indent "\"[oss-security] CVE-2021-41973: Apache MINA HTTP listener DOS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41973: Apache MINA HTTP listener DOS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32746 invoked by uid 550); 1 Nov 2021 21:33:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5278 invoked from network); 1 Nov 2021 20:44:55 -0000
X-Gm-Message-State: AOAM532wTqFCnFHzkEvDdvrNHxGPECFfO3lXwRLBf/H3h68tJdUr3CRI
	fQgvC5jfR9YazSfMbAFpeh0t28MaDN9CMrXKMOg=
X-Google-Smtp-Source: ABdhPJywCOeX4TvcKTTU+LcUlEQyWsu8r72K14r4/NrP6W3XzkDPExpFdKA15lUuZEE3f7L+o8ZrsS33Kti0RXlvrYs=
X-Received: by 2002:a05:6512:3d25:: with SMTP id d37mr10828884lfv.35.1635799482431;
 Mon, 01 Nov 2021 13:44:42 -0700 (PDT)
MIME-Version: 1.0
From: Emmanuel Lecharny <elecharny@apache.org>
Date: Mon, 1 Nov 2021 21:44:31 +0100
X-Gmail-Original-Message-ID: <CAG8=FRj-qsUUXTt0dUPV3u67GfZUZi0kV76smZD_ZWSbkq+a+Q@mail.gmail.com>
Message-ID: <CAG8=FRj-qsUUXTt0dUPV3u67GfZUZi0kV76smZD_ZWSbkq+a+Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2021-41973: Apache MINA HTTP listener DOS

Severity: critical

Description:

In Apache MINA, a specifically crafted, malformed HTTP request may
cause the HTTP Header decoder to loop indefinitely. The decoder
assumed that the HTTP Header begins at the beginning of the buffer and
loops if there is more data than expected. Please update MINA to 2.1.5
or greater.

References:

https://lists.apache.org/thread.html/r0b907da9340d5ff4e6c1a4798ef4e79700a66=
8657f27cca8a39e9250%40%3Cdev.mina.apache.org%3E


--=20
Regards,
Cordialement,
Emmanuel L=C3=A9charny
www.iktek.com
