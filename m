X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Monday" "11" "March" "2019" "15:49:26" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq7SubiwXMZFGwetLJ11CH4VuQAuX0x7YSZ+1zaU36oMmA@mail.gmail.com>" "19" "[oss-security] CVE-2018-11767: Apache Hadoop KMS ACL regression" "^Date:" nil nil "3" "2019031106:49:26" "[oss-security] CVE-2018-11767: Apache Hadoop KMS ACL regression" (number mark "U       aajisaka@apa Mar 11   19/593   " thread-indent "\"[oss-security] CVE-2018-11767: Apache Hadoop KMS ACL regression\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-11767: Apache Hadoop KMS ACL regression" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8113 invoked by uid 550); 11 Mar 2019 10:44:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25659 invoked from network); 11 Mar 2019 06:49:52 -0000
X-Gm-Message-State: APjAAAXGbiZQJorUGS+eKAe2Jq1huqW11+0hQQZxjl199gju+K/8+mVp
	cl9Vq58kDLtKZxJar62YSHr6GC5rnDDdgqpR6zU=
X-Google-Smtp-Source: APXvYqyeTssLJjaREK91oEtuzPUWOl+pkkhh0QVJWmgEw4UpjYg/kMeV82Ipp21vXQgCcCHleOyOVXUwV4OhXeZrq1Y=
X-Received: by 2002:a2e:20cf:: with SMTP id g76mr15416979lji.36.1552286977174;
 Sun, 10 Mar 2019 23:49:37 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAP+3qq7SubiwXMZFGwetLJ11CH4VuQAuX0x7YSZ+1zaU36oMmA@mail.gmail.com>
Message-ID: <CAP+3qq7SubiwXMZFGwetLJ11CH4VuQAuX0x7YSZ+1zaU36oMmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 11 Mar 2019 15:49:26 +0900
From: Akira Ajisaka <aajisaka@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-11767: Apache Hadoop KMS ACL regression
To: general@hadoop.apache.org, user@hadoop.apache.org, 
	oss-security@lists.openwall.com, 
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>, Wei-Chiu Chuang <weichiu@cloudera.com>

CVE-2018-11767: Apache Hadoop KMS ACL regression

Severity: Severe

Vendor: The Apache Hadoop Software Foundation

Versions affected: 2.9.0 to 2.9.1, 2.8.3 to 2.8.4, 2.7.5 to 2.7.6.

Description:
After the security fix for CVE-2017-15713, KMS has an access control regression,
blocking users or granting access to users incorrectly, if the system
uses non-default groups mapping mechanisms such as LdapGroupsMapping,
CompositeGroupsMapping, or NullGroupsMapping.

Mitigation:
Users should upgrade to Apache Hadoop 2.7.7, 2.8.5, or 2.9.2.

Credit:
This issue was discovered by Wei-Chiu Chuang.
