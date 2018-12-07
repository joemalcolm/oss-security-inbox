X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2825" "Friday" "7" "December" "2018" "17:06:27" "+0300" "Dmitriy Pavlov" "dpavlov@apache.org" "<CALUCNEsCwE0fC2XCHi996=OdUCZZLK8WzF2KOdaLPYkZzWE_8A@mail.gmail.com>" "137" "[oss-security] [ANNOUNCE] Apache Ignite 2.7.0 Vulnerable Dependecies Updates" "^Date:" nil nil "12" "2018120714:06:27" "[oss-security] [ANNOUNCE] Apache Ignite 2.7.0 Vulnerable Dependecies Updates" (number mark "        dpavlov@apac Dec  7  137/2825  " thread-indent "\"[oss-security] [ANNOUNCE] Apache Ignite 2.7.0 Vulnerable Dependecies Updates\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30037 invoked by uid 550); 7 Dec 2018 14:23:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19956 invoked from network); 7 Dec 2018 14:06:52 -0000
X-Gm-Message-State: AA+aEWbVmYroopOBxTR6ibd1IzhMqfA+wmat0NyzmDixW7r7o0SchgZi
	UnkPgHVkTCqo2+sRHRaviAWkX1m6eElCSXU60cQ=
X-Google-Smtp-Source: AFSGD/UW6H4JEXxhG0lbm58NsCwpzIxDLYlbh4t1LOodiSKOH0G/fIg57lWLtDfuCWH7uJJ0aSfhaL3J+ZQfIUJmwkQ=
X-Received: by 2002:aca:da84:: with SMTP id r126mr1399162oig.219.1544191597767;
 Fri, 07 Dec 2018 06:06:37 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CALUCNEsCwE0fC2XCHi996=OdUCZZLK8WzF2KOdaLPYkZzWE_8A@mail.gmail.com>
Message-ID: <CALUCNEsCwE0fC2XCHi996=OdUCZZLK8WzF2KOdaLPYkZzWE_8A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a66f5d057c6f1f73"
Date: Fri, 7 Dec 2018 17:06:27 +0300
From: Dmitriy Pavlov <dpavlov@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] Apache Ignite 2.7.0 Vulnerable Dependecies Updates
To: user <user@ignite.apache.org>, dev <dev@ignite.apache.org>, 
	"security@ignite.apache.org" <security@ignite.apache.org>, announce@apache.org, 
	oss-security@lists.openwall.com

--000000000000a66f5d057c6f1f73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The Apache Ignite Community is pleased to announce that recently released
Apache Ignite 2.7.0 replaces some vulnerable dependencies to versions with
fixes.



Apache Ignite https://ignite.apache.org/  is a memory-centric distributed
database, caching, and processing platform for transactional, analytical,
and streaming workloads delivering in-memory speeds at petabyte scale.



Apache Ignite 2.7 replaced following dependencies in to avoid usage of
vulnerable 3rd party software by end users:



Apache Log4j
https://nvd.nist.gov/vuln/detail/CVE-2017-5645

FasterXML jackson-databind
https://nvd.nist.gov/vuln/detail/CVE-2017-15095 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-17485 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-7525 ,

https://nvd.nist.gov/vuln/detail/CVE-2018-5968 ,

https://nvd.nist.gov/vuln/detail/CVE-2018-7489



Scala
https://nvd.nist.gov/vuln/detail/CVE-2017-15288

Apache Commons
https://nvd.nist.gov/vuln/detail/CVE-2015-6420 ,

https://nvd.nist.gov/vuln/detail/CVE-2015-7501 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-15708



Netty Project

https://nvd.nist.gov/vuln/detail/CVE-2016-4970

JCraft

https://nvd.nist.gov/vuln/detail/CVE-2016-5725



Apache Tomcat
https://nvd.nist.gov/vuln/detail/CVE-2016-3092 ,

https://nvd.nist.gov/vuln/detail/CVE-2016-8735 ,

https://nvd.nist.gov/vuln/detail/CVE-2018-8014


Guava
https://nvd.nist.gov/vuln/detail/CVE-2018-10237

Apache Camel
https://nvd.nist.gov/vuln/detail/CVE-2015-5344 ,

https://nvd.nist.gov/vuln/detail/CVE-2015-5348 ,

https://nvd.nist.gov/vuln/detail/CVE-2016-8749 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-12633 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-12634  ,

https://nvd.nist.gov/vuln/detail/CVE-2017-3159 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-5643

Spring Framework

https://nvd.nist.gov/vuln/detail/CVE-2018-1257 ,

https://nvd.nist.gov/vuln/detail/CVE-2018-1258



Spring Data Commons

https://nvd.nist.gov/vuln/detail/CVE-2018-1259 ,

https://nvd.nist.gov/vuln/detail/CVE-2018-1273



Jetty

https://nvd.nist.gov/vuln/detail/CVE-2016-4800 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-9735 ,

https://nvd.nist.gov/vuln/detail/CVE-2016-4800 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-9735 ,

https://nvd.nist.gov/vuln/detail/CVE-2016-4800 ,

https://nvd.nist.gov/vuln/detail/CVE-2017-7658



Lucene
https://nvd.nist.gov/vuln/detail/CVE-2017-12629

Mitigation:
=E2=80=A2    Upgrade to Apache Ignite 2.7 or later version



Credit:
Segu Riluvan discovered the usage of vulnerable modules in dependencies of
Apache Ignite.


Thanks for everyone who was involved into dependencies migration.

Best Regards,

Dmitriy Pavlov on behalf of Apache Ignite community

--000000000000a66f5d057c6f1f73--
