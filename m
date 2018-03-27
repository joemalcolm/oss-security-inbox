X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["581" "Tuesday" "27" "March" "2018" "12:16:58" "+0200" "Lukasz Lenart" "lukaszlenart@apache.org" "<CAMopvkNZoHH3qx+9brdRdAoZ7zy9w6QPotjohVwqsopGEk=sgw@mail.gmail.com>" "16" "[oss-security] [ANN] A crafted XML request can be used to perform a DoS attack when using the Struts REST plugin" nil nil nil "3" "2018032710:16:58" "[oss-security] [ANN] A crafted XML request can be used to perform a DoS attack when using the Struts REST plugin" (number mark "U       lukaszlenart Mar 27   16/581   " thread-indent "\"[oss-security] [ANN] A crafted XML request can be used to perform a DoS attack when using the Struts REST plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5980 invoked by uid 550); 27 Mar 2018 10:30:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21964 invoked from network); 27 Mar 2018 10:17:36 -0000
X-Gm-Message-State: AElRT7FiMJimSFR55I8Z9Ol4tlIF4FcJe4KklK8ATwfpUGHOYW0vKedc
	0jAn4o13lWiW79BOlGOygbk0IAK/1aZOFll/ZGw=
X-Google-Smtp-Source: AIpwx4/dsjpM6ZPm/d1hZKKgLiAtVb3h7ys2PR+zWxQeKbQNn+k4f4Nqgr09PV2fv5pI19MaHa9cTx6wGEf0zOjXlpg=
X-Received: by 2002:a19:d202:: with SMTP id j2-v6mr1519070lfg.68.1522145838923;
 Tue, 27 Mar 2018 03:17:18 -0700 (PDT)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Tue, 27 Mar 2018 12:16:58 +0200
X-Gmail-Original-Message-ID: <CAMopvkNZoHH3qx+9brdRdAoZ7zy9w6QPotjohVwqsopGEk=sgw@mail.gmail.com>
Message-ID: <CAMopvkNZoHH3qx+9brdRdAoZ7zy9w6QPotjohVwqsopGEk=sgw@mail.gmail.com>
To: Struts Users Mailing List <user@struts.apache.org>
Cc: announce@apache.org, announcements@struts.apache.org, 
	oss-security@lists.openwall.com, 
	"Munoz, Alvaro" <alvaro.munoz@microfocus.com>, "Grushka, Yevgeniy" <grushka@microfocus.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANN] A crafted XML request can be used to perform a DoS attack when
 using the Struts REST plugin

The Apache Security Struts Team recommends to immediately upgrade your
Struts 2 based projects to use the latest released version of the
Apache Struts. This is necessary to prevent your publicly accessible
web site, which is using the Struts REST plugin and performing XML
serialisation, from being exposed to possible DoS attack.

You can find more details in a Security Bulletin S2-056 -
https://cwiki.apache.org/confluence/display/WW/S2-056

All developers are strongly advised to perform this action.


Kind regards
--=20
=C5=81ukasz
+ 48 606 323 122 http://www.lenart.org.pl/
