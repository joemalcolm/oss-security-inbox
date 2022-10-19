Received: (qmail 28532 invoked by uid 550); 19 Oct 2022 11:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20160 invoked from network); 19 Oct 2022 05:38:15 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf3zFSeHyl1YFjRddHTgk8e3smkYrfspq6BodAIdLhlncPeGQ6th
	WiXOwqhYzonZ5+OLXBZUHSz81+fbXt9zVUt+GwYc4Q==
X-Google-Smtp-Source: AMsMyM6hfpUw6JADxSAWiDG/0a+AyOSnayZV4sgEdKiQXbacPRsyyvgVo1q9qCZAX7sp5M6YxMJmEjwMJ8Wl11xhpXU=
X-Received: by 2002:ab0:70c6:0:b0:39e:ed14:806b with SMTP id
 r6-20020ab070c6000000b0039eed14806bmr3302162ual.82.1666157880505; Tue, 18 Oct
 2022 22:38:00 -0700 (PDT)
MIME-Version: 1.0
From: Dan Haywood <danhaywood@apache.org>
Date: Wed, 19 Oct 2022 06:37:50 +0100
X-Gmail-Original-Message-ID: <CALJOYLHLGY5xmmyNgnBWucBe8TZ49TxBhByMGUm2ViO8U9nUSw@mail.gmail.com>
Message-ID: <CALJOYLHLGY5xmmyNgnBWucBe8TZ49TxBhByMGUm2ViO8U9nUSw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] ISIS-3128: CVE-2022-42467: Apache Isis: h2 webconsole (available only
 in prototype mode) should nevertheless be disabled by default.

Severity: low

Description:

When running in prototype mode, the h2 webconsole module (accessible
from the Prototype menu) is automatically made available with the
ability to directly query the database.

It was felt that it is safer to require the developer to explicitly
enable this capability.  As of 2.0.0-M8, this can now be done using
the 'isis.prototyping.h2-console.web-allow-remote-access'
configuration property; the web console will be unavailable without
setting this configuration.

As an additional safeguard, the new
'isis.prototyping.h2-console.generate-random-web-admin-password'
configuration parameter (enabled by default) requires that the
administrator use a randomly generated password to use the console.
The password is printed to the log, as "webAdminPass: xxx" (where
"xxx") is the password.

To revert to the original behaviour, the administrator would therefore
need to set these configuration parameter:

    isis.prototyping.h2-console.web-allow-remote-access=true
    isis.prototyping.h2-console.generate-random-web-admin-password=false

Note also that the h2 webconsole is never available in production
mode, so these safeguards are only to ensure that the webconsole is
secured by default also in prototype mode.
