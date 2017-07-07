X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1311" "Friday" "7" "July" "2017" "19:14:02" "+0530" "Shalin Shekhar Mangar" "shalin@apache.org" "<CAOOKt53EgrybaD+iSn-nBbvFdse-szhg=hMoDZuvUvyMme-Z=g@mail.gmail.com>" "40" "[oss-security] [ANNOUNCE] [SECURITY] CVE-2017-7660: Security Vulnerability in secure inter-node communication in Apache Solr" nil nil nil "7" "2017070713:44:02" "[oss-security] [ANNOUNCE] [SECURITY] CVE-2017-7660: Security Vulnerability in secure inter-node communication in Apache Solr" (number mark "U       shalin@apach Jul  7   40/1311  " thread-indent "\"[oss-security] [ANNOUNCE] [SECURITY] CVE-2017-7660: Security Vulnerability in secure inter-node communication in Apache Solr\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1521 invoked by uid 550); 7 Jul 2017 13:47:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31990 invoked from network); 7 Jul 2017 13:44:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to:cc;
        bh=spNWrm0SHasdU7ttamrP332W24mZftWI0mhIEEE96Xs=;
        b=MmkVqVYwx3ApKZ8O4S/GraBXzOF9482rhCa4AmOkxfWRdYjuBxETERJDP5NaPHXM3w
         MLPGg3zOgJ0ELhEobCLEWWlnmENvioAq+xhnGDQ0HEIVoBZbuVMmx51gmP6ogn/SX8tl
         4dkNQKBmpqlwV/fRt6/FgjO2YllsWBI6SY1RL+6chxMO9YE1jIlJT/TPFI9YHMl2tBUc
         rVd2LG3D7UqbGfewsmfMWjt7FWOmJM0+aeSh943v66FYxw3gEu+hDnBhthfaXqNosdnc
         By5Mqq80FVu7Nve+OA3nO/wMpOngqLpWOKfRckK/YJcjlS8MjpTo+mCqSzuF+D/hnrsL
         xezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:cc;
        bh=spNWrm0SHasdU7ttamrP332W24mZftWI0mhIEEE96Xs=;
        b=ZV3glYBbcX4iL/lGR68JEYf4msjyjDC6T63lQ9mOxMeeryKfiSvj1xvhmp1toXkezA
         vZbiRS6Q2qItcEIdTE0BvLTvhxK9kKTC5smtPCuljIBwt2AOf75xoDh15EAt9M5Kx0x2
         WjiRHJuHRgpV9uKeN44jCtI7nFu+DnMlg5upFR3LtU0XtdxbZ/ulJxuaxtwB3pSyXgxV
         5NecdVm+z4K19S1VoIt395Fm48cMO7Xgv/0Sa6D8Jjw68HaYMmcoVjqqSw9NfUf3NSWC
         xAl/6xzS0lgKyVsvSJIlx/lN95iqFMkmuqJnYBNcJZTJhTvKzTkUM+pcRyAgIp4qib5p
         PNrQ==
X-Gm-Message-State: AIVw113nrS6hQpm4s1Xsnpn5UmXQR/vwspzuYQ7/Eq7hXRLDTI45AHFU
	NoM48fOKJxXO7sQlkLx6Ows/NgFRyQ==
X-Received: by 10.36.224.141 with SMTP id c135mr3258022ith.106.1499435043403;
 Fri, 07 Jul 2017 06:44:03 -0700 (PDT)
MIME-Version: 1.0
Sender: shalinmangar@gmail.com
From: Shalin Shekhar Mangar <shalin@apache.org>
Date: Fri, 7 Jul 2017 19:14:02 +0530
X-Google-Sender-Auth: Q3pi4zVlH_bmGwphAPtJrvxCYtM
Message-ID: <CAOOKt53EgrybaD+iSn-nBbvFdse-szhg=hMoDZuvUvyMme-Z=g@mail.gmail.com>
To: Lucene mailing list <general@lucene.apache.org>, 
	"dev@lucene.apache.org" <dev@lucene.apache.org>, java-user@lucene.apache.org, 
	solr-user@lucene.apache.org, announce@apache.org, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Cc: =?UTF-8?B?Tm9ibGUgUGF1bCDgtKjgtYvgtKzgtL/gtLPgtY0g4KSo4KWL4KSs4KWN4KSz4KWN?= <noble.paul@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ANNOUNCE] [SECURITY] CVE-2017-7660: Security Vulnerability in secure
 inter-node communication in Apache Solr

CVE-2017-7660: Security Vulnerability in secure inter-node
communication in Apache Solr

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Solr 5.3 to 5.5.4
Solr 6.0 to 6.5.1

Description:

Solr uses a PKI based mechanism to secure inter-node communication
when security is enabled. It is possible to create a specially crafted
node name that does not exist as part of the cluster and point it to a
malicious node. This can trick the nodes in cluster to believe that
the malicious node is a member of the cluster. So, if Solr users have
enabled BasicAuth authentication mechanism using the BasicAuthPlugin
or if the user has implemented a custom Authentication plugin, which
does not implement either "HttpClientInterceptorPlugin" or
"HttpClientBuilderPlugin", his/her servers are vulnerable to this
attack. Users who only use SSL without basic authentication or those
who use Kerberos are not affected.

Mitigation:
6.x users should upgrade to 6.6
5.x users should obtain the latest source from git and apply this patch:
http://git-wip-us.apache.org/repos/asf/lucene-solr/commit/2f5ecbcf

Credit:
This issue was discovered by Noble Paul of Lucidworks Inc.

References:
https://issues.apache.org/jira/browse/SOLR-10624
https://wiki.apache.org/solr/SolrSecurity

-- 
The Lucene PMC
