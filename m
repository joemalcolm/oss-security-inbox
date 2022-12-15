Received: (qmail 11388 invoked by uid 550); 15 Dec 2022 12:26:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19898 invoked from network); 15 Dec 2022 09:14:41 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ANoB5pli6scm9Wv08135FBjT3UhD25SkTHcz7obnv1m/KB4KLu0Zo5fN
	EDYPQvF04lotOm4Csih5+qwU05JzrZuvVQggR1s=
X-Google-Smtp-Source: AA0mqf5QrWBdKyBOz5bmspyWqKVMDnVdiXPkjFcV9i4TvBYUYF5eeZzHiQ47iWyUv6vyoLf3dikgZ5Fyjjm798WLw5o=
X-Received: by 2002:ac8:703:0:b0:3a7:e270:ca3c with SMTP id
 g3-20020ac80703000000b003a7e270ca3cmr15869081qth.648.1671095666238; Thu, 15
 Dec 2022 01:14:26 -0800 (PST)
MIME-Version: 1.0
From: Enrico Olivelli <eolivelli@apache.org>
Date: Thu, 15 Dec 2022 10:14:15 +0100
X-Gmail-Original-Message-ID: <CACcefgfgnn7assSeTVLMaXDWuduiE=qxhFLx5NM_NtcKNVeYpA@mail.gmail.com>
Message-ID: <CACcefgfgnn7assSeTVLMaXDWuduiE=qxhFLx5NM_NtcKNVeYpA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-32531: Apache BookKeeper: Java Client Uses Connection to
 Host that Failed Hostname Verification

Severity: Moderate

Description:

The Apache Bookkeeper Java Client (up to 4.14.5 and also 4.15.0) does
not close the connection to the
bookkeeper server when TLS hostname verification fails. This leaves
the bookkeeper client vulnerable to a man in the middle attack.

The problem affects BookKeeper client prior to versions 4.14.6 and 4.15.1.

Solution:

Upgrade to 4.14.6 or to 4.15.1

References:

https://bookkeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-32531
