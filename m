X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Tuesday" "13" "September" "2016" "10:37:33" "-0400" "Brian Demers" "bdemers@apache.org" "<CAH9eYVrC4Jj+NpEF_nM0J-+2zN21e_SS_9-Yq0TQsdnfwFZcyQ@mail.gmail.com>" "19" "[oss-security] [ANNOUNCE][CVE-2016-6802] Apache Shiro 1.3.2 released" nil nil nil "9" "2016091314:37:33" "[oss-security] [ANNOUNCE][CVE-2016-6802] Apache Shiro 1.3.2 released" (number mark "U       bdemers@apac Sep 13   19/707   " thread-indent "\"[oss-security] [ANNOUNCE][CVE-2016-6802] Apache Shiro 1.3.2 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13578 invoked by uid 550); 13 Sep 2016 14:54:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1409 invoked from network); 13 Sep 2016 14:37:49 -0000
X-Gm-Message-State: AE9vXwNAqwSoRP5FlyJwoqhNP9iMkfvNQao/wMdctk1wBs99dp277y2UjECa/CbEhftqhFVGtaZw05dWQewr2Q==
X-Received: by 10.31.61.1 with SMTP id k1mr1038929vka.149.1473777453976; Tue,
 13 Sep 2016 07:37:33 -0700 (PDT)
MIME-Version: 1.0
From: Brian Demers <bdemers@apache.org>
Date: Tue, 13 Sep 2016 10:37:33 -0400
X-Gmail-Original-Message-ID: <CAH9eYVrC4Jj+NpEF_nM0J-+2zN21e_SS_9-Yq0TQsdnfwFZcyQ@mail.gmail.com>
Message-ID: <CAH9eYVrC4Jj+NpEF_nM0J-+2zN21e_SS_9-Yq0TQsdnfwFZcyQ@mail.gmail.com>
To: announce@shiro.apache.org, "user@shiro.apache.org" <user@shiro.apache.org>, dev@shiro.apache.org, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [ANNOUNCE][CVE-2016-6802] Apache Shiro 1.3.2 released

The Shiro team is pleased to announce the release of Apache Shiro version 1.3.2.

This security release contains 1 fix since the 1.3.1 release and is
available for Download now [1].

    CVE-2016-6802:
    Apache Shiro before 1.3.2,  when using a non-root servlet context path,
    specifically crafted requests can be used to by pass some security servlet
    filters, resulting in unauthorized access.

Release binaries (.jars) are also available through Maven Central and
source bundles through Apache distribution mirrors.

For more information on Shiro, please read the documentation[2].

-The Apache Shiro Team

[1] http://shiro.apache.org/download.html
[2] http://shiro.apache.org/documentation.html
