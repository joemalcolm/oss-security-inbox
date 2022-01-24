X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["887" "Monday" "24" "January" "2022" "18:42:01" "+0530" "Mukul Gandhi" "mukulg@apache.org" nil "36" "[oss-security] CVE-2022-23437: Infinite loop within Apache XercesJ xml parser" nil nil nil "1" nil nil (number mark "U       mukulg@apach Jan 24   36/887   " thread-indent "\"[oss-security] CVE-2022-23437: Infinite loop within Apache XercesJ xml parser\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23437: Infinite loop within Apache XercesJ xml parser" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3942 invoked by uid 550); 24 Jan 2022 13:14:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3507 invoked from network); 24 Jan 2022 13:12:41 -0000
X-Gm-Message-State: AOAM531UEnoImcPvIzW2yh/RmsUjeG7FjjjZT3e6dbOUhs5DcltnfAUY
	FZDhmY+b6Vqi7dqJuZFbdoZVCWBwXzfO5pjZqzo=
X-Google-Smtp-Source: ABdhPJyvE6DpYiiu2zBfYLxBqu2pylzJVUS739dlCFSp1mDBvpHJZAiKr04BBEKtaOXfK07uL8L95x/47CR2BTagFx0=
X-Received: by 2002:ac2:5a59:: with SMTP id r25mr13288619lfn.34.1643029937773;
 Mon, 24 Jan 2022 05:12:17 -0800 (PST)
MIME-Version: 1.0
From: Mukul Gandhi <mukulg@apache.org>
Date: Mon, 24 Jan 2022 18:42:01 +0530
X-Gmail-Original-Message-ID: <CABuuzNOonKYSY0afJ0BZyt8+fqY6LUKv8eU6F+t0BJJPTsvymw@mail.gmail.com>
Message-ID: <CABuuzNOonKYSY0afJ0BZyt8+fqY6LUKv8eU6F+t0BJJPTsvymw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000cbe25e05d653b778"
Subject: [oss-security] CVE-2022-23437: Infinite loop within Apache XercesJ xml parser

--000000000000cbe25e05d653b778
Content-Type: text/plain; charset="UTF-8"

To: oss-security@lists.openwall.com
Reply-To: j-dev@xerces.apache.org
Subject: CVE-2022-23437: Infinite loop within Apache XercesJ xml parser

Severity: high

Description:

There's a vulnerability within the Apache Xerces Java (XercesJ) XML
parser when handling specially crafted XML document payloads. This
causes, the XercesJ XML parser to wait in an infinite loop, which may
sometimes consume system resources for prolonged duration. This
vulnerability is present within XercesJ version 2.12.1 and the
previous versions.

Mitigation:

Apache XercesJ users, should migrate to version 2.12.2

Credit:

This issue was discovered by Sergey Temnikov and Ziyi Luo, from Amazon
Corretto/JDK Team

References:
https://markmail.org/message/vcmhwbuorfgcdr6l


-- 
Regards,
Mukul Gandhi

--000000000000cbe25e05d653b778--
