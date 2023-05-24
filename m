Received: (qmail 11765 invoked by uid 550); 25 May 2023 08:22:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1522 invoked from network); 24 May 2023 20:41:38 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AC+VfDxZw5r9T27WcehRrA846YC9Q3vPt2H59kCasTncNZQi0j0lJyoI
	+i8YWcyEUQwZcvstqwhhsah2vGKxJaJ51F46vzY=
X-Google-Smtp-Source: ACHHUZ5QVvXqMiioxKf8NE8byxNmX/Mnl15e83UziL+F/x2/9Y4y1hDdplBZZz5qqEGkrwQSp+efnEA9mUdlxnd9TSY=
X-Received: by 2002:a05:6808:aad:b0:394:3f93:ce0e with SMTP id
 r13-20020a0568080aad00b003943f93ce0emr9192214oij.24.1684960883770; Wed, 24
 May 2023 13:41:23 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Wed, 24 May 2023 22:41:12 +0200
X-Gmail-Original-Message-ID: <CAMufup70iLuSiaCbJEajdridr0-v6suxjnCXuZYecbmvGFn2_A@mail.gmail.com>
Message-ID: <CAMufup70iLuSiaCbJEajdridr0-v6suxjnCXuZYecbmvGFn2_A@mail.gmail.com>
To: announce@apache.org, Apache Security Team <security@apache.org>, dev@jspwiki.apache.org, 
	user@jspwiki.apache.org, oss-security@lists.openwall.com, 
	"Eugene LIM (GOVTECH)" <Eugene_LIM@tech.gov.sg>, 
	"Jay Kai SNG from.TP (GOVTECH)" <Jay_Kai_SNG_from.TP@tech.gov.sg>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-46907: Apache JSPWiki Cross-site scripting on several plugins

Severity: moderate

Description:
A carefully crafted request on several JSPWiki plugins could trigger
an XSS vulnerability on Apache JSPWiki, which could allow the attacker
to execute javascript in the victim's browser and get some sensitive
information about the victim.

Mitigation:
Apache JSPWiki users should upgrade to 2.12.0 or later.

Credit:
This issue was discovered by Eugene Lim and Sng Jay Kai from
Government Technology Agency of Singapore

References:
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2022-46907
