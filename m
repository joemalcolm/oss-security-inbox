X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Wednesday" "23" "May" "2018" "13:16:00" "+0100" "Simon Steiner" "simonsteiner1984@gmail.com" "<000701d3f28f$d01860a0$704921e0$@gmail.com>" "30" "[oss-security] [CVE-2018-8013] Apache Batik information disclosure vulnerability" nil nil nil "5" "2018052312:16:00" "[oss-security] [CVE-2018-8013] Apache Batik information disclosure vulnerability" (number mark "U       simonsteiner May 23   30/705   " thread-indent "\"[oss-security] [CVE-2018-8013] Apache Batik information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7962 invoked by uid 550); 23 May 2018 12:17:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5980 invoked from network); 23 May 2018 12:16:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=wD6hYiI7+e0NbK+rmFNoeus8h6MN6I/AXEY9UGwHhjc=;
        b=d1ow8zKDV8qRH1cxyUVHhUIGU5vL8FMRjb9S4UILVeQWT6BZOwmHCv7biwdGUtsVXc
         1W/1IZeoFdZqfeJUcilqo7woRem7ZhoAfWetXoZO3JmyENOvzF8qb+00TcBEuaDD90sr
         TjAk3xjfe4JXoxSusohyo8eDqT8eZ73wQlwFt9Q/U5lsxTUnziW8M2DcxF30Y1tBEPQs
         cauqwNa2zS5B6pk6W8T+nD0UMwQIuvjFIF/XCX/Qdb5IWPXWVe4WByoX2IFCZ38qpGEW
         BELyQE7IpLuZ1UGgLDtLYikKJYBXbSrNg74Kc4GK4tRlWhqr8WooRFH09oxhGTVLj2ZL
         p9bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=wD6hYiI7+e0NbK+rmFNoeus8h6MN6I/AXEY9UGwHhjc=;
        b=rODD/4jxQqQbw0ZO+rwnUK5VLiEy3dvjvEq27UF7kHcGbqRTKtpdtKt3LUhIhrxQS5
         Hz2rDdQEpME7Oh3RD5qvPZDhNddD0s+Ik5bwHyZgWlGtEua3+9UeBzFUzVbRprGxBv5X
         IOhwxTngBi5Gmo8s5e1PAzi7ZXlQEu0/LpFuauEd7BvsoyLivBiv7y/GxFYC3AnArWXd
         iLZlungnUw4X8Oe0XrlUpa02JSW9zJSIc7gw5hpT710hKKJPArVqPqlF9AXQBF/hUb0k
         vZf7dixOsdXOa9Avu8xev4MvSCzyb+RcpL4h/VIASNeH9USgmBEk05GeqXAY1G3LQ1LL
         5dBQ==
X-Gm-Message-State: ALKqPweLVhaJC1PhiNc/Jd+GB45Gy/94p3FdD8iyBig2h+u1ix52dHiQ
	/8m6qWHJ0oCTdxnJUjQHLAQ=
X-Google-Smtp-Source: AB8JxZqN3UNfq9TeETKZmH66OFxI5b9Tx5S5a6ywwSfdlpH3PJNRcvLl7nCkPsaQsHR/fzu0iY/Pyg==
X-Received: by 2002:adf:afe4:: with SMTP id y36-v6mr2171358wrd.107.1527077761021;
        Wed, 23 May 2018 05:16:01 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	<oss-security@lists.openwall.com>,
	<bugtraq@securityfocus.com>,
	<security-reports@semmle.com>,
	<security@apache.org>
Date: Wed, 23 May 2018 13:16:00 +0100
Message-ID: <000701d3f28f$d01860a0$704921e0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdPyjpW15mpVsRR4RmeDT6bpMyWZ9g==
Content-Language: en-gb
Subject: [oss-security] [CVE-2018-8013] Apache Batik information disclosure vulnerability

CVE-2018-8013:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.9.1
 
Description:
        When deserializing subclass of `AbstractDocument`, the class takes a
string from the inputStream as the class name which then use it to call the
no-arg constructor of the class.
        Fix was to check the class type before calling newInstance in
deserialization.

Mitigation:
        Users should upgrade to Batik 1.10+

Credit:
        This issue was independently reported by Man Yue Mo.

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.

