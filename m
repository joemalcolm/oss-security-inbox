Received: (qmail 5892 invoked by uid 550); 13 Dec 2022 15:17:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15809 invoked from network); 13 Dec 2022 14:38:26 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ANoB5plFPdrHIDXWHD2rLMZqhBYqFg/NMobFp4p2kyPH6ThF5CHmT6ZX
	IUcAF5GtSM41PVAewF8RL42Cr7x/twA6S7Ea+nU=
X-Google-Smtp-Source: AA0mqf4w0mcfGGFmHuO6XHAFAmE/1Zev/zstg4sxqoGiwzdywKAap14V2bwZTljVJ3tV8XNvnAP1IxmrsVnH5IJUp78=
X-Received: by 2002:a2e:be04:0:b0:267:9d30:5ba with SMTP id
 z4-20020a2ebe04000000b002679d3005bamr30129684ljq.284.1670942292028; Tue, 13
 Dec 2022 06:38:12 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Tue, 13 Dec 2022 14:38:00 +0000
X-Gmail-Original-Message-ID: <CAB8XdGDk7xbis9aOcDM3w+b6CepMBKNhWwweKH9ZW2a0TQXZ6Q@mail.gmail.com>
Message-ID: <CAB8XdGDk7xbis9aOcDM3w+b6CepMBKNhWwweKH9ZW2a0TQXZ6Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-46363: Apache CXF directory listing / code exfiltration

Severity: moderate

Description:

A vulnerability in Apache CXF before versions 3.5.5 and 3.4.10 allows
an attacker to perform a remote directory listing or code
exfiltration. The vulnerability only applies when the CXFServlet is
configured with both the static-resources-list and
redirect-query-check attributes. These attributes are not supposed to
be used together, and so the vulnerability can only arise if the CXF
service is misconfigured.

Credit:

thanat0s from Beijin Qihoo 360 adlab (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-46363
