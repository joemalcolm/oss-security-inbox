X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1822" "Sunday" "10" "December" "2017" "19:31:41" "+0530" "Isuru Udana" "isudana@apache.org" "<CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>" "55" "[oss-security] [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability" nil nil nil "12" "2017121014:01:41" "[oss-security] [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability" (number mark "U       isudana@apac Dec 10   55/1822  " thread-indent "\"[oss-security] [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7204 invoked by uid 550); 10 Dec 2017 14:40:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13376 invoked from network); 10 Dec 2017 14:02:18 -0000
X-Gm-Message-State: AKGB3mJCklDl/F99/rqcygs4Y1GfTeODPAbiYktCh8cJtlPQ4wU09alQ
	WvKrnSrSSOME/T3CyjndLhMPf5AWZrdLn4p+40U=
X-Google-Smtp-Source: AGs4zMZ5S6x5GC5VwHPgMuzGs+SghpC0D2Ia60/b/We2crYVMHfUTUMkF0tM5X7qyPfkb5wNFZAaZV8JJkNcgZ9Tz2Y=
X-Received: by 10.200.40.66 with SMTP id 2mr23344925qtr.177.1512914522064;
 Sun, 10 Dec 2017 06:02:02 -0800 (PST)
MIME-Version: 1.0
From: Isuru Udana <isudana@apache.org>
Date: Sun, 10 Dec 2017 19:31:41 +0530
X-Gmail-Original-Message-ID: <CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>
Message-ID: <CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>
To: security <security@apache.org>, dev@synapse.apache.org, user@synapse.apache.org, 
	jianan huang <sevcks@gmail.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

CVE-2017-15708: Apache Synapse Remote Code Execution Vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
3.0.0, 2.1.0, 2.0.0, 1.2, 1.1.2, 1.1.1

Description:

Due to the presence of Apache Commons Collections 3.2.1
(commons-collections-3.2.1.jar) or previous versions,
Apache Synapse 3.0.0 or all previous releases allows remote code
execution attacks that can be performed by
injecting specially crafted serialized objects.

Mitigation:
Upgrade to 3.0.1 version.
    In Synapse 3.0.1 version, Commons Collection has been updated to
3.2.2 version which contains
    the fix for the above mentioned vulnerability.

Credit:
This issue was discovered by QingTeng cloud Security of Minded Security
Researcher jianan.huang


References:
https://commons.apache.org/proper/commons-collections/security-reports.html

Isuru Udana
VP, Apache Synapse

-----BEGIN PGP SIGNATURE-----
Comment: MacGPG2 - http://www.gpgtools.org/macgpg2.html

iQIzBAEBCgAdFiEE3kfhRbRVsOy2YlAnVEJWkuNs5sMFAlotO40ACgkQVEJWkuNs
5sN+xg/+P/iHhK3JAULQy6JlLt7T2oUmd9EjEfpp6VimVTARPzywAzH39ZdeNEnq
dd7eCjadE2CCR5QVcLNgTxyKIL6KDqOtBrJFksiZi5Q2kx0rMzbs1cz48POUd0NK
DNFWngbLqMvY9kkkm7ioS3aXpZ99pdIpr9e11tqMj6ds2OOqUn5KpbEJvlBi3Htr
QpD+Rp42myuHE6kHl5g9CR9fo42WyUvihuutpBv1+aWwR6CJaBSuN+H6tkrJQUqj
StFk7nNG/RfsNHmlwCFORk3JYsaao8p1f4o4YTQAsaAu6u3frj29kt2RnSDyjt6m
uQEkuRlmlb82xDh/3WxNbjoAIYGjrlEKEJxJtW6x0pZ9w3Hl7ccLRglclFmrenjx
T0+aBF4S5DaYixaMZAS3OMFe86e+9MXLtdCUopWmq9Je+dDeLovfYvzTL6j4vyEF
NsAfSpz9yJQ/e/3uYAyyaR31XoS5kmtQSDclGijR4YhPIc25P5/yVjwc63CNO2sv
kb/wAecK+zVPJOIXYloW+IrLwUxmgz/UTd3Ogqg6xP+ClCTIIz4z9fsght0aULBV
0YR6bmzigYthMFWdFiQDsDvWYFXVyJjeyVFfyyxOUlUjIY5pqZq+moWYQJ90dV+B
J3Bi10tFhyZBNzyAe1R4unBISx6WOE+wCdkoexTpmx6XGce63iU=
=Z+d2
-----END PGP SIGNATURE-----
