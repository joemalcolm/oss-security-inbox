Received: (qmail 16186 invoked by uid 550); 19 Oct 2023 05:23:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16010 invoked from network); 19 Oct 2023 04:33:12 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Yxf5N8LxFHwdZPDmaYXpWmYQ243Z3ECDBHWN+Gm1CTIte2gHNCb
	JUVOgjlUvFxMcP3Wk2pOO0Do33iHIDycPw4FNRI=
X-Google-Smtp-Source: AGHT+IHMbG9ll6c0KvJqQY11G99a34fspwKxtTEW35hFY1LC5fJ2848T8xBKj57KcxxSzI75yVDjnhf90w9oNYenWAU=
X-Received: by 2002:ac2:55b7:0:b0:503:261d:eab8 with SMTP id
 y23-20020ac255b7000000b00503261deab8mr544207lfg.28.1697689930662; Wed, 18 Oct
 2023 21:32:10 -0700 (PDT)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Thu, 19 Oct 2023 12:31:59 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ4o+6JaQvuZB=oL6c3U7MG9Lfnu-d9CjFP3jxN37OZQLw@mail.gmail.com>
Message-ID: <CA+ZBtZ4o+6JaQvuZB=oL6c3U7MG9Lfnu-d9CjFP3jxN37OZQLw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-25753: Server-Side Request Forgery in Apache ShenYu

Severity: low

Affected versions:

- Apache ShenYu through 2.5.1

Description:

There exists an SSRF (Server-Side Request Forgery) vulnerability
located at the /sandbox/proxyGateway endpoint. This vulnerability
allows us to manipulate arbitrary requests and retrieve corresponding
responses by inputting any URL into the requestUrl parameter.

Of particular concern is our ability to exert control over the HTTP
method, cookies, IP address, and headers. This effectively grants us
the capability to dispatch complete HTTP requests to hosts of our
choosing.

This issue affects Apache ShenYu: 2.5.1.

Upgrade to Apache ShenYu 2.6.0 or apply patch
https://github.com/apache/shenyu/pull/4776  .

Credit:

by3 (finder)

References:

https://shenyu.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-25753

--

Zhang Yonglun
Apache ShenYu & ShardingSphere
