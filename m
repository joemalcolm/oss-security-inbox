X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3853" "Sunday" "14" "January" "2018" "11:21:57" "+0530" "Isuru Udana" "isudana@apache.org" "<CAJxmC72H6Ubub7-jStEP-yoHv+hFbM2KUfNYwviZn0OpopeYFg@mail.gmail.com>" "100" "[oss-security] Re: [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability" nil nil nil "1" "2018011405:51:57" "[oss-security] Re: [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability" (number mark "U       isudana@apac Jan 14  100/3853  " thread-indent "\"[oss-security] Re: [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability\"\n") "<CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>" ("<CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8071 invoked by uid 550); 14 Jan 2018 12:40:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12078 invoked from network); 14 Jan 2018 05:52:36 -0000
X-Gm-Message-State: AKwxyteQbqy/79x8aUzz2kvKZgmtndjgZgYx777WGQLHpQBGUBzU63it
	9GPXDQ6iEtCDLvcAr1yvHGf+8h29qrzVzGpdejE=
X-Google-Smtp-Source: ACJfBotBA4uNVRT0Q05MuEtaQI7hdYBJo8ALlvNqnc8Ifn5df30mXfWJmGVwbSTVPG0SKTxDgxQh706x5e77m9xpOms=
X-Received: by 10.36.178.29 with SMTP id u29mr9448529ite.62.1515909138073;
 Sat, 13 Jan 2018 21:52:18 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>
References: <CAJxmC71oB_uSqrZ0RJXqsWRa9qXUMHqHzbezUZCOR_SAfgOCcA@mail.gmail.com>
From: Isuru Udana <isudana@apache.org>
Date: Sun, 14 Jan 2018 11:21:57 +0530
X-Gmail-Original-Message-ID: <CAJxmC72H6Ubub7-jStEP-yoHv+hFbM2KUfNYwviZn0OpopeYFg@mail.gmail.com>
Message-ID: <CAJxmC72H6Ubub7-jStEP-yoHv+hFbM2KUfNYwviZn0OpopeYFg@mail.gmail.com>
To: security <security@apache.org>, dev@synapse.apache.org, user@synapse.apache.org, 
	jianan huang <sevcks@gmail.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [CVE-2017-15708] Apache Synapse Remote Code Execution Vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Update on this vulnerability

In Apache Synapse, by default no authentication is required for Java
Remote Method Invocation (RMI).
So Apache Synapse 3.0.1 or all previous releases (3.0.0, 2.1.0, 2.0.0,
1.2, 1.1.2, 1.1.1) allows remote code execution attacks that can be
performed by injecting specially crafted serialized objects.
And the presence of Apache Commons Collections 3.2.1
(commons-collections-3.2.1.jar) or previous versions in Synapse
distribution makes this exploitable.

To mitigate the issue, we need to limit RMI access to trusted users only.
To enforce authentication of users, we can configure a username and a
password by setting following two parameters in synapse.properties
file.

synapse.jmx.username
synapse.jmx.password

Further upgrading to 3.0.1 version will eliminate the risk of having
said Commons Collection version.
In Synapse 3.0.1, Commons Collection has been updated to 3.2.2 version.

-----BEGIN PGP SIGNATURE-----
Comment: MacGPG2 - http://www.gpgtools.org/macgpg2.html

iQIzBAEBCgAdFiEE3kfhRbRVsOy2YlAnVEJWkuNs5sMFAlpa70AACgkQVEJWkuNs
5sM3+hAArF09ZnJnAb7iHhaacmV83NiJc0htg/Eal0ZwE6JVZD8qbFHFhuAgB5be
+lvryDqAwQiPaXdS/wDoG9GyYQQX2YJVngKas4MJdCjelYFICkXeEtFbqam4cutY
2kixB1Gn+q3lcqjxIGVL8TPKgImZ6Mg4bu3w7L24KXVujChvUFWmuFHj4EDOe3OG
StGQcHaGgQoL9HQUH8ciibT7HtjDd2gzkkdvhmxshOY51uEBQxwUzCP+UhagcA1/
xEZNfZ/PeVi34ipoc206Uw7ZRGiCpBoabMTtCpkrvzal+edsQdXMdXUumkwOs7bd
b85jVWPO02NsDb9fjJTfNvqsEu9iTUdMNRKLOENL3mT33yYF35UaLaxclVO26D4K
ma6EJv1ss50T7mEXr1JbbEe0FOZqY6BsR4U0HPDIgynV3NMqN5/KzsKAc+Jy6Wp0
uMAakbXepZW1zRbS+UFo5Ex67MAQDnp25xiwrwputTel13lAwz0gWQISxmSCRNV/
qL9c+dB20wbQMGeSvMhfqtgQprCE55MoCvb8FEI52zROfLpVtM1DtQzhG4vKYnvo
kXrTdvpIeFn9S80RoqZfTHJ8u2rW+AJqw7nbvfEXtMhp117yVAJQKtRyGls2tAFj
utuqPtSazQZvf6nZnjK4Um/VkWEnwxajLrFl9cnODJa9zu629/k=
=/Vec
-----END PGP SIGNATURE-----

On Sun, Dec 10, 2017 at 7:31 PM, Isuru Udana <isudana@apache.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA512
>
> CVE-2017-15708: Apache Synapse Remote Code Execution Vulnerability
>
> Severity: Important
>
> Vendor:
> The Apache Software Foundation
>
> Versions Affected:
> 3.0.0, 2.1.0, 2.0.0, 1.2, 1.1.2, 1.1.1
>
> Description:
>
> Due to the presence of Apache Commons Collections 3.2.1
> (commons-collections-3.2.1.jar) or previous versions,
> Apache Synapse 3.0.0 or all previous releases allows remote code
> execution attacks that can be performed by
> injecting specially crafted serialized objects.
>
> Mitigation:
> Upgrade to 3.0.1 version.
>     In Synapse 3.0.1 version, Commons Collection has been updated to
> 3.2.2 version which contains
>     the fix for the above mentioned vulnerability.
>
> Credit:
> This issue was discovered by QingTeng cloud Security of Minded Security
> Researcher jianan.huang
>
>
> References:
> https://commons.apache.org/proper/commons-collections/security-reports.html
>
> Isuru Udana
> VP, Apache Synapse
>
> -----BEGIN PGP SIGNATURE-----
> Comment: MacGPG2 - http://www.gpgtools.org/macgpg2.html
>
> iQIzBAEBCgAdFiEE3kfhRbRVsOy2YlAnVEJWkuNs5sMFAlotO40ACgkQVEJWkuNs
> 5sN+xg/+P/iHhK3JAULQy6JlLt7T2oUmd9EjEfpp6VimVTARPzywAzH39ZdeNEnq
> dd7eCjadE2CCR5QVcLNgTxyKIL6KDqOtBrJFksiZi5Q2kx0rMzbs1cz48POUd0NK
> DNFWngbLqMvY9kkkm7ioS3aXpZ99pdIpr9e11tqMj6ds2OOqUn5KpbEJvlBi3Htr
> QpD+Rp42myuHE6kHl5g9CR9fo42WyUvihuutpBv1+aWwR6CJaBSuN+H6tkrJQUqj
> StFk7nNG/RfsNHmlwCFORk3JYsaao8p1f4o4YTQAsaAu6u3frj29kt2RnSDyjt6m
> uQEkuRlmlb82xDh/3WxNbjoAIYGjrlEKEJxJtW6x0pZ9w3Hl7ccLRglclFmrenjx
> T0+aBF4S5DaYixaMZAS3OMFe86e+9MXLtdCUopWmq9Je+dDeLovfYvzTL6j4vyEF
> NsAfSpz9yJQ/e/3uYAyyaR31XoS5kmtQSDclGijR4YhPIc25P5/yVjwc63CNO2sv
> kb/wAecK+zVPJOIXYloW+IrLwUxmgz/UTd3Ogqg6xP+ClCTIIz4z9fsght0aULBV
> 0YR6bmzigYthMFWdFiQDsDvWYFXVyJjeyVFfyyxOUlUjIY5pqZq+moWYQJ90dV+B
> J3Bi10tFhyZBNzyAe1R4unBISx6WOE+wCdkoexTpmx6XGce63iU=
> =Z+d2
> -----END PGP SIGNATURE-----
