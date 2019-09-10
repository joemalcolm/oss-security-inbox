X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1029" "Tuesday" "10" "September" "2019" "15:29:21" "-0700" "Jacopo Cappellato" "jacopoc@apache.org" "<CAEvdU_1cTZYcGzH-yfZowAvhcgcD9kxFnH2TXwLHQ0ZksvDsyw@mail.gmail.com>" "37" "[oss-security] [CVE-2019-0189] Apache OFBiz remote code execution and arbitrary file delete via Java deserialization" nil nil nil "9" "2019091022:29:21" "[oss-security] [CVE-2019-0189] Apache OFBiz remote code execution and arbitrary file delete via Java deserialization" (number mark "U       jacopoc@apac Sep 10   37/1029  " thread-indent "\"[oss-security] [CVE-2019-0189] Apache OFBiz remote code execution and arbitrary file delete via Java deserialization\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0189] Apache OFBiz remote code execution and arbitrary file delete via Java deserialization" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21628 invoked by uid 550); 11 Sep 2019 05:19:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15911 invoked from network); 10 Sep 2019 22:29:44 -0000
X-Gm-Message-State: APjAAAUPvbYzCWCye+84i5l+ArXOEU6upvmxaWKC8mrQGkSX/pBL2DYl
	3iwVA0Az9UqzhXcHbyxs5wTindr9eJqFufZZ55o=
X-Google-Smtp-Source: APXvYqxkgabsbStBgXKDD1fULM3rSSwD55/h5BrG1W6aEohpSAqySDEwNpDIG2zXsaJ+5Z1Fj3HkzC+LPpd7rTp4/kU=
X-Received: by 2002:a5d:6612:: with SMTP id n18mr7297068wru.314.1568154572227;
 Tue, 10 Sep 2019 15:29:32 -0700 (PDT)
MIME-Version: 1.0
From: Jacopo Cappellato <jacopoc@apache.org>
Date: Tue, 10 Sep 2019 15:29:21 -0700
X-Gmail-Original-Message-ID: <CAEvdU_1cTZYcGzH-yfZowAvhcgcD9kxFnH2TXwLHQ0ZksvDsyw@mail.gmail.com>
Message-ID: <CAEvdU_1cTZYcGzH-yfZowAvhcgcD9kxFnH2TXwLHQ0ZksvDsyw@mail.gmail.com>
To: "user@ofbiz.apache.org ML" <user@ofbiz.apache.org>, Dev list <dev@ofbiz.apache.org>, announce@apache.org, 
	security@ofbiz.apache.org, oss-security@lists.openwall.com, 
	security-reports@semmle.com, ricterzheng@tencent.com
Content-Type: multipart/alternative; boundary="0000000000003b0e9c05923a70f8"
Subject: [oss-security] [CVE-2019-0189] Apache OFBiz remote code execution and arbitrary file
 delete via Java deserialization

--0000000000003b0e9c05923a70f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.05

Description:
The java.io.ObjectInputStream is known to cause Java serialisation issues.
This issue here is exposed by the "webtools/control/httpService" URL,
and uses Java deserialization to perform code execution.
In the HttpEngine, the value of the request parameter "serviceContext"
is passed to the "deserialize" method of "XmlSerializer".

Ofbiz is affected via two different dependencies:
"commons-beanutils" and an out-dated version of "commons-fileupload"

Mitigation:
Upgrade to 16.11.06
or manually apply the commits from
OFBIZ-10770 AND OFBIZ-10837 on branch 16
----

Credit:
Man Yue Mo of the Semmle Security Research Team
ricterzheng(=E9=83=91=E6=9D=9C=E6=B6=9B) <ricterzheng@tencent.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

--0000000000003b0e9c05923a70f8--
