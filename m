X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Saturday" "18" "December" "2021" "18:02:02" "-0600" "Matt Sicker" "mattsicker@apache.org" nil "43" "[oss-security] CVE-2021-45105: Apache Log4j2 does not always protect from infinite recursion in lookup evaluation" nil nil nil "12" nil nil (number mark "U       mattsicker@a Dec 18   43/1330  " thread-indent "\"[oss-security] CVE-2021-45105: Apache Log4j2 does not always protect from infinite recursion in lookup evaluation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45105: Apache Log4j2 does not always protect from infinite recursion in lookup evaluation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9946 invoked by uid 550); 19 Dec 2021 00:34:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26603 invoked from network); 19 Dec 2021 00:02:26 -0000
X-Gm-Message-State: AOAM533dxzQ69QFFuaI+sGGF+k2uyAOrKqa2UYYKzwB17fpkCN39yvLP
	8QNNUCLA4f03EZ5CbqBaTZsfaDHSoGOU88WfxOw=
X-Google-Smtp-Source: ABdhPJz5/OsY+dwHM6hihxNYW5S0LQws1mShDb48Jm2m18e9clNr7QkQESdX5XPK9y3m7clLy6XmZxcNt/WCw4Yg9f8=
X-Received: by 2002:a5d:590e:: with SMTP id v14mr1070584wrd.208.1639872133165;
 Sat, 18 Dec 2021 16:02:13 -0800 (PST)
MIME-Version: 1.0
From: Matt Sicker <mattsicker@apache.org>
Date: Sat, 18 Dec 2021 18:02:02 -0600
X-Gmail-Original-Message-ID: <CACmp6kqFOo0+SsDk-xEuBTvwz6zDRSEpsKobu=dcjVza=TN1pA@mail.gmail.com>
Message-ID: <CACmp6kqFOo0+SsDk-xEuBTvwz6zDRSEpsKobu=dcjVza=TN1pA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2021-45105: Apache Log4j2 does not always protect from infinite
 recursion in lookup evaluation

Severity: high

Description:

Apache Log4j2 versions 2.0-alpha1 through 2.16.0 (excluding 2.12.3)
did not protect from uncontrolled recursion from self-referential
lookups. This allows an attacker with control over Thread Context Map
data to cause a denial of service when a crafted string is
interpreted. This issue was fixed in Log4j 2.17.0 and 2.12.3.

This issue is being tracked as LOG4J2-3230

Mitigation:

Implement one of the following mitigation techniques:

* Java 8 (or later) users should upgrade to release 2.17.0.

Alternatively, this can be mitigated in configuration:

* In PatternLayout in the logging configuration, replace Context
Lookups like `${ctx:loginId}` or `$${ctx:loginId}` with Thread Context
Map patterns (%X, %mdc, or %MDC).
* Otherwise, in the configuration, remove references to Context
Lookups like `${ctx:loginId}` or `$${ctx:loginId}` where they
originate
from sources external to the application such as HTTP headers or user input.

Credit:

Independently discovered by Hideki Okamoto of Akamai Technologies, Guy
Lederfein of Trend Micro Research working with Trend Micro=E2=80=99s Zero D=
ay
Initiative, and another anonymous vulnerability researcher

References:

https://logging.apache.org/log4j/2.x/security.html


--=20
Matt Sicker
PMC Member, Logging Services, Apache Software Foundation
