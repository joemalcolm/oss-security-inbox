X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2061" "Monday" "4" "November" "2019" "09:26:50" "-0800" "Tim Armstrong" "tarmstrong@apache.org" "<CAEoRBew=EvETjHzcQVbUGKmqxJ5BnghbJ-C=vejjaa0XB4Sn1g@mail.gmail.com>" "46" "[oss-security] [CVE-2019-10084] privilege escalation by authenticated Apache Impala users" nil nil nil "11" "2019110417:26:50" "[oss-security] [CVE-2019-10084] privilege escalation by authenticated Apache Impala users" (number mark "U       tarmstrong@a Nov  4   46/2061  " thread-indent "\"[oss-security] [CVE-2019-10084] privilege escalation by authenticated Apache Impala users\"\n") "<CAEoRBewNamuG_iHx=71Vwjj=kQV-Q1UioYYebG02j61ZEX0SXw@mail.gmail.com>" ("<CAEoRBewNamuG_iHx=71Vwjj=kQV-Q1UioYYebG02j61ZEX0SXw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10084] privilege escalation by authenticated Apache Impala users" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21949 invoked by uid 550); 4 Nov 2019 17:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17831 invoked from network); 4 Nov 2019 17:27:29 -0000
X-Gm-Message-State: APjAAAV8OTMg8MkhN20QcndYf6El5MBe3sacsSrFn7jR3ojfdU7zamjV
	XEJ7m52/o4YlgmyIq0phhP9tOewIxGLl2xWlMQcMWQ==
X-Google-Smtp-Source: APXvYqylNcVDjtQP3bAug6TUm90WskCEaGa/ASNsLozgKEuDIuNVPxx+4gw8Sc3v4B8mgxM6Fjr0BOnVVaJ78cNmyB0=
X-Received: by 2002:a05:6102:355:: with SMTP id e21mr12743808vsa.202.1572888436402;
 Mon, 04 Nov 2019 09:27:16 -0800 (PST)
MIME-Version: 1.0
References: <CAEoRBewNamuG_iHx=71Vwjj=kQV-Q1UioYYebG02j61ZEX0SXw@mail.gmail.com>
In-Reply-To: <CAEoRBewNamuG_iHx=71Vwjj=kQV-Q1UioYYebG02j61ZEX0SXw@mail.gmail.com>
From: Tim Armstrong <tarmstrong@apache.org>
Date: Mon, 4 Nov 2019 09:26:50 -0800
X-Gmail-Original-Message-ID: <CAEoRBew=EvETjHzcQVbUGKmqxJ5BnghbJ-C=vejjaa0XB4Sn1g@mail.gmail.com>
Message-ID: <CAEoRBew=EvETjHzcQVbUGKmqxJ5BnghbJ-C=vejjaa0XB4Sn1g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000861b8e059688a0fe"
Subject: [oss-security] [CVE-2019-10084] privilege escalation by authenticated Apache Impala users

--000000000000861b8e059688a0fe
Content-Type: text/plain; charset="UTF-8"

CVE-2019-10084: privilege escalation by authenticated Apache Impala users

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Impala 2.7.0 to Impala 3.2.0

Description: An authenticated user with access to the IDs of active Impala
queries or sessions can interact with those sessions or queries via a
specially-constructed request and thereby potentially bypass authorization
and audit mechanisms.

Session and query IDs are unique and random, but have not been documented
or consistently treated as sensitive secrets. Therefore they may be exposed
in logs or interfaces. They were also not generated with a
cryptographically secure random number generator, so are vulnerable to
random number generator attacks that predict future IDs based on past IDs.

Impala deployments with Apache Sentry or Apache Ranger authorization
enabled may be vulnerable to privilege escalation if an authenticated
attacker is able to hijack a session or query from another authenticated
user with privileges not assigned to the attacker.

Impala deployments with audit logging enabled may be vulnerable to
incorrect audit logging as a user could undertake actions that were logged
under the name of a different authenticated user.

Constructing an attack requires a high degree of technical sophistication
and access to the Impala system as an authenticated user.

Mitigation: If an Impala deployment uses Apache Sentry, Apache Ranger or
audit logging, then users should upgrade to a version of Impala with the
fix for IMPALA-8605. The Impala 3.3.0 release includes this fix. This
implements session secrets that eliminate the risk of any attack using this
mechanism.

In lieu of an upgrade, restricting access to debug pages, administrative
interfaces and logs that expose session and query IDs will reduce but not
eliminate the risk of an attack. Restricting access to the Impala
deployment to trusted users will also reduce the risk of an attack

--000000000000861b8e059688a0fe--
