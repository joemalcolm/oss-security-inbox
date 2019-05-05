X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Sunday" "5" "May" "2019" "15:21:45" "+0530" "Pramod Rana" "varchashva@gmail.com" nil "30" nil nil nil nil "5" nil nil (number mark "U       varchashva@g May  5   30/1496  " thread-indent "\"[oss-security] Open source tool | Lets Map Your Network\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Open source tool | Lets Map Your Network" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30185 invoked by uid 550); 5 May 2019 10:33:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23613 invoked from network); 5 May 2019 09:52:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=fNzrw0DChC7tLvBIadlL7ErfukjexeDesoQZ5UjDdB0=;
        b=aDdzQ5wO3nlvzI4tlA2aS6af0fm/ZERuqGqeZZFrg4FDawWTVHFQVpZYDqVzri36Ew
         4DiqnPxLtUWsnF26GcPAI02//XrpPyv3+zMQD47RnU9ADfqWxXXSgq6jlloAl5Hum0wq
         im0rnkI7fnOegNuUTMrnagy64MiDgpTzH0sAZ2aJU1pBNxE6JbsGTOQGneYUwvPX6bBb
         NpFHQRUubUgILZp77rtFpSPDFVl1XX42zIbHn1mKZLKibIYQamOiXuRj9D6SUWlcQiBz
         ROwUfJn1P0lXIm4XKnQAMHkOg+SBxF53+qm/+oNl0/b+2Uy9OaQXun1to+YDwXwS6DlL
         J8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=fNzrw0DChC7tLvBIadlL7ErfukjexeDesoQZ5UjDdB0=;
        b=o+5CANMcOoPXoqGZ9X0R+wbeE2tCOY4pk5IkS3YIPIq2ZCmxMSZutI1ex/qtfSaoa0
         ptNHfCeIO8TDhLNiHtmRmvUcHVmwJePPdCLOpmSu6k1R4CTOxre2G90iZu76mcL1QjaO
         KIcVEaxQG3aVv1k9i+kYiFcZCkDoiNzIzz7MaMOwFwJ5TqJX6o+1XB4wtHU8HjphqL1E
         29aUZ+Bkn3yQJu15YD7ZIhz7jaYUmTd0/H9pZ4A7JWCvVN1bI3Qv9ZCqBUlYqg3aNh06
         dX7XGkl0BWUwSJgXW7p9kXTvjuu8d2Kull54PmT6dL4FaiYqOUe2T2ODKKLVjMFd2alm
         mYVA==
X-Gm-Message-State: APjAAAVc4BO1Za2IKBguj+vu8kg0du7BjtDsoLUkHiLf8pLn101Hw1sE
	/jhpMjOy3WVsN7LMWLwLiOY9+u4yoSYf8txhHLg0fV4=
X-Google-Smtp-Source: APXvYqw2IbMT9mf8q6ekIG0M8L+6QFSDhCaMB6SCsYJR8fIbu0T8JIOseLJIROnQuAYKqMhj+6Oe0T9uTN7MMDBElh8=
X-Received: by 2002:ae9:df03:: with SMTP id t3mr15297769qkf.346.1557049916573;
 Sun, 05 May 2019 02:51:56 -0700 (PDT)
MIME-Version: 1.0
From: Pramod Rana <varchashva@gmail.com>
Date: Sun, 5 May 2019 15:21:45 +0530
Message-ID: <CALv8orF3HiuDe=GFm_wK_6Q-JVYo3BJZFOWu57hf7-yfkW5Gng@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Open source tool | Lets Map Your Network

Let=E2=80=99s Map Your Network (LMYN) aims to provide an easy to use interf=
ace
to security engineer and network administrator to have their network
in graphical form with zero manual error, where a node represents a
system and relationship between nodes represent the connection.

It is utmost important for any security engineer to understand their
network first before securing it and it becomes a daunting task to
have a =E2=80=98true=E2=80=99 understanding of a widespread network. In a m=
id to large
level organisation=E2=80=99s network having a network architecture diagram
doesn=E2=80=99t provide the complete understanding and manual verification =
is
a nightmare. Hence in order to secure entire network it is important
to have a complete picture of all the systems which are connected to
your network, irrespective of their type, function, technology etc.

BOTTOM LINE - YOU CAN'T SECURE WHAT YOU ARE NOT AWARE OF.

LMYN does it in two phases:
1. Learning: In this phase LMYN 'learns' the network by performing the
network commands and querying the APIs and then builds graph database
leveraging the responses. User can perform any of the learning
activities at any point of time and LMYN will incorporate the results
in existing database.
2. Monitoring: This is a continuous process, where LMYN monitors the
'in-scope' network for any changes, compare it with existing
information and update the graph database accordingly.

GitHub: https://github.com/varchashva/LetsMapYourNetwork
