X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["683" "Monday" "15" "June" "2020" "15:45:55" "+0800" "Sheng Wu" "wusheng@apache.org" "<CANh7qnT+p-gxLVQLTSNxQAX2KQL1A9iTCD7bVPqXW1QfOkfRAw@mail.gmail.com>" "20" "[oss-security] [CVE-2020-9483] Apache SkyWalking SQL injection vulnerability" "^Date:" nil nil "6" "2020061507:45:55" "[oss-security] [CVE-2020-9483] Apache SkyWalking SQL injection vulnerability" (number mark "U       wusheng@apac Jun 15   20/683   " thread-indent "\"[oss-security] [CVE-2020-9483] Apache SkyWalking SQL injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9483] Apache SkyWalking SQL injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32365 invoked by uid 550); 15 Jun 2020 09:37:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3658 invoked from network); 15 Jun 2020 07:50:36 -0000
X-Gm-Message-State: AOAM533poFhQbtFJPdhxvkNXD4W7CVAEI64Q8HZnObChQgAkG3sOPM/e
	UBu86EbK0LdXAzGWSXWAG4gVr69iuldTb4JVAg==
X-Google-Smtp-Source: ABdhPJxEp/ktpVbzjH4SUfD9qwJfuNxa+4PdjSOntspNjOoSOsRpLlYIlwRWIzgXxcWDZ8h3fj6qyZaUwYx6629TWxA=
X-Received: by 2002:ac8:2a8a:: with SMTP id b10mr14611028qta.347.1592207168005;
 Mon, 15 Jun 2020 00:46:08 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CANh7qnT+p-gxLVQLTSNxQAX2KQL1A9iTCD7bVPqXW1QfOkfRAw@mail.gmail.com>
Message-ID: <CANh7qnT+p-gxLVQLTSNxQAX2KQL1A9iTCD7bVPqXW1QfOkfRAw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a86b1505a81a9e26"
Date: Mon, 15 Jun 2020 15:45:55 +0800
From: Sheng Wu <wusheng@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2020-9483] Apache SkyWalking SQL injection vulnerability
To: oss-security@lists.openwall.com

--000000000000a86b1505a81a9e26
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[CVEID]:CVE-2020-9483
[PRODUCT]:Apache SkyWalking
[VERSION]:Apache SkyWalking 6.0.0 to 6.6.0, 7.0.0
[PROBLEMTYPE]:SQL Injection
[DESCRIPTION]: When use H2/MySQL/TiDB as Apache SkyWalking storage, the
metadata query through GraphQL protocol, there is a SQL injection
vulnerability,
               which allows to access unpexcted data. Apache SkyWalking
6.0.0 to 6.6.0, 7.0.0 H2/MySQL/TiDB storage implementations don't use the
appropriate
               way to set SQL parameters.

Sheng Wu =E5=90=B4=E6=99=9F
Twitter, wusheng1108

--000000000000a86b1505a81a9e26--
