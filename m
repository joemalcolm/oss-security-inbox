X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["316" "Tuesday" "30" "March" "2021" "08:19:51" "-0400" "Tim Allison" "tallison@apache.org" nil "13" "[oss-security] CVE-2021-28657: Infinite loop in Apache Tika's MP3 parser" nil nil nil "3" nil nil (number mark "U       tallison@apa Mar 30   13/316   " thread-indent "\"[oss-security] CVE-2021-28657: Infinite loop in Apache Tika's MP3 parser\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-28657: Infinite loop in Apache Tika's MP3 parser" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1499 invoked by uid 550); 30 Mar 2021 12:20:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1478 invoked from network); 30 Mar 2021 12:20:15 -0000
X-Gm-Message-State: AOAM53023LnkyPAIJQwE9LQF0MgPQ1su+qbC3GAyK+kNuQarV8DLUPyy
	R50i3kAjAxts39b9/xVXPDF9I8EAhJjbhjhXOtc=
X-Google-Smtp-Source: ABdhPJxf2PEdO42icB1pSnTvsNocpTM/6lQ1wKc6XJ765y5RZO0129izzyCkdZnjA6P8WSCspvyb5aehFbB+MAc4zwM=
X-Received: by 2002:a05:6402:278d:: with SMTP id b13mr20512548ede.34.1617106802888;
 Tue, 30 Mar 2021 05:20:02 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Tue, 30 Mar 2021 08:19:51 -0400
X-Gmail-Original-Message-ID: <CAC1dCwVtygiqzeRNDE9PRivbNEcrrKcLb0pWGzpHmp743gQ==Q@mail.gmail.com>
Message-ID: <CAC1dCwVtygiqzeRNDE9PRivbNEcrrKcLb0pWGzpHmp743gQ==Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-28657: Infinite loop in Apache Tika's MP3 parser

Description:

A carefully crafted or corrupt file may trigger an infinite loop in
Tika's MP3Parser up to and including Tika 1.25. Apache Tika users
should upgrade to 1.26 or later.

Mitigation:

Users should upgrade to 1.26 or later.

Credit:

Apache Tika would like to thank Khaled Nassar for reporting this issue.
