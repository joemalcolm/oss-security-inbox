X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Thursday" "19" "July" "2018" "10:14:16" "-0700" "Denis Magda" "dmagda@apache.org" "<CAK0qHnrpBcaDc65bjdX1jEqr6L9a+OWcouC9P6JwEY1vh9gbhQ@mail.gmail.com>" "40" "[oss-security] [CVE-2018-8018] Possible Execution of Arbitrary Code via Apache Ignite GridClientJdkMarshaller" nil nil nil "7" "2018071917:14:16" "[oss-security] [CVE-2018-8018] Possible Execution of Arbitrary Code via Apache Ignite GridClientJdkMarshaller" (number mark "U       dmagda@apach Jul 19   40/1444  " thread-indent "\"[oss-security] [CVE-2018-8018] Possible Execution of Arbitrary Code via Apache Ignite GridClientJdkMarshaller\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3451 invoked by uid 550); 19 Jul 2018 17:32:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23987 invoked from network); 19 Jul 2018 17:14:57 -0000
X-Gm-Message-State: AOUpUlH94ntJIsg6pbs/90qWVuSm5rWjOIOYYSEJO4KCVLnyKsJxub1c
	yr/IdKD7/eIh8bIi8AVWwMUK2a4XNyJ2VNCZYCLvog==
X-Google-Smtp-Source: AAOMgpdgA72S559hsWZnLFUmrLfxGz9w+pYmjScMgb+5JQm5bZpJcj1VcGDogpVyCBr0g8Z1H9dXaE6YZFR9dJXAiTo=
X-Received: by 2002:a2e:3c1a:: with SMTP id j26-v6mr8187144lja.149.1532020482489;
 Thu, 19 Jul 2018 10:14:42 -0700 (PDT)
MIME-Version: 1.0
From: Denis Magda <dmagda@apache.org>
Date: Thu, 19 Jul 2018 10:14:16 -0700
X-Gmail-Original-Message-ID: <CAK0qHnrpBcaDc65bjdX1jEqr6L9a+OWcouC9P6JwEY1vh9gbhQ@mail.gmail.com>
Message-ID: <CAK0qHnrpBcaDc65bjdX1jEqr6L9a+OWcouC9P6JwEY1vh9gbhQ@mail.gmail.com>
To: announce@apache.org, security@ignite.apache.org, 
	Apache Security Team <security@apache.org>, Man Yue Mo <mmo@semmle.com>, oss-security@lists.openwall.com
Cc: user@ignite.apache.org, dev <dev@ignite.apache.org>
Content-Type: multipart/alternative; boundary="000000000000a5d43505715d50d2"
Subject: [oss-security] [CVE-2018-8018] Possible Execution of Arbitrary Code via Apache
 Ignite GridClientJdkMarshaller

--000000000000a5d43505715d50d2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Ignite 2.5 and earlier

Impact:
An attacker can execute arbitrary code on Ignite nodes via
GridClientJdkMarshaller deserialization endpoint in the case when Ignite
classpath contains arbitrary vulnerable classes.

Description:
Apache Ignite serialization mechanism does not have a list of classes
allowed for serialization/deserialization, which makes it possible to run
arbitrary code when 3-rd party vulnerable classes are present in Ignite
classpath. The vulnerability can be exploited if the one sends a specially
prepared form of a serialized object to GridClientJdkMarshaller
deserialization endpoint.

Mitigation:
=E2=80=A2    All Ignite versions: make sure there are no vulnerable classes=
 among
your custom code used in Apache Ignite.
=E2=80=A2    Ignite 2.5 or earlier users: upgrade to Ignite 2.6 and use
IGNITE_MARSHALLER_WHITELIST and/or IGNITE_MARSHALLER_BLACKLIST system
properties to define classes allowed for deserialization. Refer to this
documentation for more details:
https://apacheignite.readme.io/docs/securing-data-deserialization

Credit:
* The vulnerability was discovered by Man Yue Mo of lgtm.com.

References:
* http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-8018

--000000000000a5d43505715d50d2--
