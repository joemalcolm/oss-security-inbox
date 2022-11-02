Received: (qmail 9433 invoked by uid 550); 2 Nov 2022 11:58:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17548 invoked from network); 2 Nov 2022 11:50:57 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf07IzFN5dksGrnHpORbyiJ/PHv7xkOdZ3pLQbKzGgtdCUZ+3gkq
	QwIh9VsodCo6yHceT/RT1waLRGljD1jEjIz+rms=
X-Google-Smtp-Source: AMsMyM7Sj7kdstQmitDQzIQbqhC5EYEYUEjtoRCXPCsUYGcmmcNzjUosL4vh7oZ5vOvVQfs16iYvwPvobZEbDoU0fls=
X-Received: by 2002:a17:906:8a6f:b0:780:96b4:d19e with SMTP id
 hy15-20020a1709068a6f00b0078096b4d19emr23104759ejc.624.1667389837312; Wed, 02
 Nov 2022 04:50:37 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Klco <dklco@apache.org>
Date: Wed, 2 Nov 2022 07:50:26 -0400
X-Gmail-Original-Message-ID: <CAHbpyFagAeVLCJW+E8RdgY3jb74fBwPiD7mC3oMrNFKz7A5uNg@mail.gmail.com>
Message-ID: <CAHbpyFagAeVLCJW+E8RdgY3jb74fBwPiD7mC3oMrNFKz7A5uNg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-43670: Apache Sling App CMS: XSS in Sling CMS Reference App
 Taxonomy Path

Severity: low

Description:

An improper neutralization of input during web page generation
('Cross-site Scripting') [CWE-79] vulnerability in Sling App CMS
version 1.1.0 and prior may allow an authenticated remote attacker to
perform a reflected cross site scripting (XSS) attack in the taxonomy
management feature.

This issue is being tracked as SLING-11622

Mitigation:

Upgrade to Apache Sling App CMS >= 1.1.2

Credit:

Apache Sling would like to thank QSec-Team for reporting this issue
