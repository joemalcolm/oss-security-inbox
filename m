Received: (qmail 25805 invoked by uid 550); 24 Jul 2022 17:36:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7968 invoked from network); 24 Jul 2022 17:17:51 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AJIora9zV67cO+sAxvC/ZphOdhIW6YJuuzRDF6sEjSoDxle3oPdCUluu
	1GxLyKBgTW80JAvIRl2MVrguOIv0IlKLisWJhRY=
X-Google-Smtp-Source: AGRyM1t5hMz+JBUyxaQxe2m+f2+aEW3XVfuFzXNiuxwC1B3llk60PBIKqG3iCKNQQvio0Jqqa+dr86yJSmv23PNGibA=
X-Received: by 2002:a17:90a:2e0a:b0:1f2:93b6:4d22 with SMTP id
 q10-20020a17090a2e0a00b001f293b64d22mr4542779pjd.156.1658683055870; Sun, 24
 Jul 2022 10:17:35 -0700 (PDT)
MIME-Version: 1.0
From: Sheng Zha <zhasheng@apache.org>
Date: Sun, 24 Jul 2022 13:16:59 -0400
X-Gmail-Original-Message-ID: <CA+7MY97noRm+cNmUO+QPGRseAvb3vEpyMsG6mVrcVNCLC0yTzg@mail.gmail.com>
Message-ID: <CA+7MY97noRm+cNmUO+QPGRseAvb3vEpyMsG6mVrcVNCLC0yTzg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-24294: ReDoS in Apache MXNet RTC Module

Severity: low

Description:

A regular expression used in Apache MXNet (incubating) is vulnerable
to a potential denial-of-service by excessive resource consumption.
The bug could be exploited when loading a model in Apache MXNet that
has a specially crafted operator name that would cause the regular
expression evaluation to use excessive resources to attempt a match.
This issue affects Apache MXNet versions prior to 1.9.1.

Mitigation:

Users that depend on MXNet 1.x are advised to upgrade to MXNet>=1.9.1,<2

Credit:

Apache MXNet would like to thank Dwi Siswanto for reporting this issue.
