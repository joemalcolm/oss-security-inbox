X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1412" "Thursday" "19" "July" "2018" "10:04:16" "-0700" "Denis Magda" "dmagda@apache.org" "<CAK0qHnqzfzmCDFFi6c5Jok19zNkVCz5Xb4sU=0f2J_1i4p46zQ@mail.gmail.com>" "46" "[oss-security] [CVE-2018-1273] Apache Ignite impacted by security vulnerability in Spring Data Commons" nil nil nil "7" "2018071917:04:16" "[oss-security] [CVE-2018-1273] Apache Ignite impacted by security vulnerability in Spring Data Commons" (number mark "U       dmagda@apach Jul 19   46/1412  " thread-indent "\"[oss-security] [CVE-2018-1273] Apache Ignite impacted by security vulnerability in Spring Data Commons\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3257 invoked by uid 550); 19 Jul 2018 17:32:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18045 invoked from network); 19 Jul 2018 17:04:59 -0000
X-Gm-Message-State: AOUpUlFLhi1jdjMIs6H9N9mYLIelWRr44+argbVa6gWk7rDK4ao4yICJ
	mQQzfLKevz+0yvH0akZ60MfZTuSTiQ00n81Fv1jhww==
X-Google-Smtp-Source: AAOMgpcUvNfKezL/PvYE0C86qEddZMB6qiR4yYOhPdRL1PAqFUzNsyZ4RmpMmls2T8D+8bzDItcDHicitp/2qim9XvA=
X-Received: by 2002:a2e:8185:: with SMTP id e5-v6mr8778089ljg.93.1532019882767;
 Thu, 19 Jul 2018 10:04:42 -0700 (PDT)
MIME-Version: 1.0
From: Denis Magda <dmagda@apache.org>
Date: Thu, 19 Jul 2018 10:04:16 -0700
X-Gmail-Original-Message-ID: <CAK0qHnqzfzmCDFFi6c5Jok19zNkVCz5Xb4sU=0f2J_1i4p46zQ@mail.gmail.com>
Message-ID: <CAK0qHnqzfzmCDFFi6c5Jok19zNkVCz5Xb4sU=0f2J_1i4p46zQ@mail.gmail.com>
To: announce@apache.org, security@ignite.apache.org, 
	Apache Security Team <security@apache.org>, "Rai, Harendra" <harendra.rai@ncr.com>, 
	oss-security@lists.openwall.com
Cc: user@ignite.apache.org, dev <dev@ignite.apache.org>
Content-Type: multipart/alternative; boundary="000000000000e6cf8b05715d2ccb"
Subject: [oss-security] [CVE-2018-1273] Apache Ignite impacted by security vulnerability in
 Spring Data Commons

--000000000000e6cf8b05715d2ccb
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:

* Apache Ignite 1.0.0-RC3 to 2.5

Impact:

An unauthenticated remote malicious user (or attacker) can issue requests
against Spring Data REST or Spring Data

Description:

Apache Ignite utilizes Spring Data Common library for some of its
components. The vulnerability affects Apache Ignite users who us Spring
Data REST for
access an Ignite cluster via HTTP and Spring Data. Spring Data Commons,
versions prior to 1.13 to 1.13.10, 2.0 to 2.0.5, and older unsupported
versions, contain a property binder vulnerability caused by improper
neutralization of special elements. An unauthenticated remote malicious
user (or attacker) can supply specially crafted request parameters against
Spring Data REST backed HTTP resources or using Spring Data's
projection-based request payload binding hat can lead to a remote code
execution attack.

Mitigation:

* Upgrade to Apache Ignite 2.6 or later that include Spring Data Commons
versions not vulnerable to the disclosed issue.

Credit:
* Harendra Rai of NCR Corporation discovered the impact of the existing
vulnerability on Apache Ignite.


References:

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-1273
* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-1274

--000000000000e6cf8b05715d2ccb--
