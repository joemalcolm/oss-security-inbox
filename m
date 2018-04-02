X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Sunday" "1" "April" "2018" "21:11:12" "-0700" "Denis Magda" "dmagda@apache.org" "<CAK0qHnqF7Ls+FfxfO=kdnaAWDrLcRSE8PUUyp20SKht1Ko+sWQ@mail.gmail.com>" "41" "[oss-security] [CVE-2018-1295]: Possible Execution of Arbitrary Code Within Deserialization Endpoints of Apache Ignite" nil nil nil "4" "2018040204:11:12" "[oss-security] [CVE-2018-1295]: Possible Execution of Arbitrary Code Within Deserialization Endpoints of Apache Ignite" (number mark "U       dmagda@apach Apr  1   41/1470  " thread-indent "\"[oss-security] [CVE-2018-1295]: Possible Execution of Arbitrary Code Within Deserialization Endpoints of Apache Ignite\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13362 invoked by uid 550); 2 Apr 2018 10:23:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26443 invoked from network); 2 Apr 2018 04:11:57 -0000
X-Gm-Message-State: AElRT7FTpCVniSiVRIXSTBHvUwkskt1eggqCxQif1AYMxeKTxlUb1O9/
	aC6vTmD83vjJsRu7o94sRu/utj1WMfPIPKrNkPCTbQ==
X-Google-Smtp-Source: AIpwx4823LA09cwBr70iKclH/5OLI3XlWez0eMuJqTWwDe9vQjxaHjH36dDCOXkKluZvESrV7uD9vaiLGi+vqyc2FH4=
X-Received: by 10.55.25.134 with SMTP id 6mr10638819qkz.52.1522642303049; Sun,
 01 Apr 2018 21:11:43 -0700 (PDT)
MIME-Version: 1.0
From: Denis Magda <dmagda@apache.org>
Date: Sun, 1 Apr 2018 21:11:12 -0700
X-Gmail-Original-Message-ID: <CAK0qHnqF7Ls+FfxfO=kdnaAWDrLcRSE8PUUyp20SKht1Ko+sWQ@mail.gmail.com>
Message-ID: <CAK0qHnqF7Ls+FfxfO=kdnaAWDrLcRSE8PUUyp20SKht1Ko+sWQ@mail.gmail.com>
To: dev <dev@ignite.apache.org>, user@ignite.apache.org, 
	Man Yue Mo <mmo@semmle.com>, security@apache.org, security@ignite.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a114738bc97fe4f0568d5c955"
Subject: [oss-security] [CVE-2018-1295]: Possible Execution of Arbitrary Code Within
 Deserialization Endpoints of Apache Ignite

--001a114738bc97fe4f0568d5c955
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-1295: Possible Execution of Arbitrary Code Within Deserialization
Endpoints of Apache Ignite

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Ignite 2.3 or earlier

Impact:
An attacker can execute arbitrary code on Ignite nodes in the case when
Ignite classpath contains arbitrary vulnerable classes.

Description:
Apache Ignite serialization mechanism does not have a list of classes
allowed for serialization/deserialization, which makes it possible to run
arbitrary code when 3-rd party vulnerable classes are present in Ignite
classpath. The vulnerability can be exploited if the one sends a specially
prepared form of a serialized object to one of the deserialization
endpoints of some Ignite components -   discovery SPI, Ignite persistence,
Memcached endpoint, socket steamer.

Mitigation:
=E2=80=A2    All Ignite versions: make sure there are no vulnerable classes=
 among
your custom code used in Apache Ignite.
=E2=80=A2    Ignite 2.3 or earlier users: upgrade to Ignite 2.4 and use
IGNITE_MARSHALLER_WHITELIST and/or IGNITE_MARSHALLER_BLACKLIST system
properties to define classes allowed for deserialization

Credit:
The vulnerability was discovered by Man Yue Mo of lgtm.com.

References:
* http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-1295

--001a114738bc97fe4f0568d5c955--
