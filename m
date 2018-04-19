X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1231" "Thursday" "19" "April" "2018" "14:31:14" "-0700" "Ed Cable" "edcable@mifos.org" "<CAPnWRThjRX_eRwBEHmHTp1gHSzmprSxVDzpFEojJ4-fd88bj=w@mail.gmail.com>" "44" "[oss-security] [SECURITY] CVE-2018-1292: Apache Fineract SQL Injection Vulnerability - Injection via reportName parameter" nil nil nil "4" "2018041921:31:14" "[oss-security] [SECURITY] CVE-2018-1292: Apache Fineract SQL Injection Vulnerability - Injection via reportName parameter" (number mark "U       edcable@mifo Apr 19   44/1231  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1292: Apache Fineract SQL Injection Vulnerability - Injection via reportName parameter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24328 invoked by uid 550); 19 Apr 2018 21:34:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15808 invoked from network); 19 Apr 2018 21:31:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mifos-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=mJme5fuo1wJXtoNSOxwI+w59E/DDPPyS2SXxksXl6kI=;
        b=Z5w7rhl/nbD+K7oKT807inNTlRig2VncWawIZFVtBe7XOg+ymfn1Vko3I5kuuqEs5V
         +quNo2pN3oMbpEX0nAkn3AuwRS+1EVVy6lwLRFkRr1Vty8Bze0wUQGsa2VKRtmlhArTV
         gbjQDxfOmKIA7+P6H0aLFYmMVUlvfk4So9VylBT5cl8zBS+SnoRqnDjko29xyV3uDGQ5
         3CZpNFufrIpp2rs+Pt2xVhin+mj0qbfyngIMjXVD1QotiPJroxhqZFwI1Bdl7Dalme/M
         Yogyr351NhuRGOyu1HD46/9Vd1m+X9bQS7k2tqOXQrfb10yVfj+dtK3ob2892SAq/G8y
         LTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mJme5fuo1wJXtoNSOxwI+w59E/DDPPyS2SXxksXl6kI=;
        b=FJoalIMP54svlaqg0bDpB+ZXBBfCF7hFlceyKrvwjWJJmcOgddF4WKnnvd9idxM3wg
         4StYt6zUum6mi7x8bqII7/ENXnOgwhiue+4ONQl9LQ2hEduySXSMmpr9CJjozvBWc+Na
         QqX8wZk7zj+gYCjCn2gSiq559RXJ81CGqdhPJGy/hola8kG8KFKhelWNPt/D2N9Mwbzr
         9Lz0h8eG2uzLF0CfULHUpBhsIyoB29Y0qxFnFpjJuNBJlGVb3AjQo33rcW6FXCnMG6MK
         CtYBRSUOihjQ+YZ83xFJ9wLqDLFGoKMce3KtDxRGxOQcL9LjEN5vi9k/8uBCzB8zXRIr
         PF1A==
X-Gm-Message-State: ALQs6tB1duuHtNP8RYDvbBmUC/9WHYWOJzhC7cCFurLgQ5xqB9WMVYnh
	nFlAAa/IeG1ZRqQpwN7fbToC/b+Q8ZMEbJ3TF4P3Yg==
X-Google-Smtp-Source: AB8JxZpgdI8ySLjBDRrQWBw8/gt6xht1Qmf9zCJYaPJI2QJxg/FSmSTU+EKgUnY5vk6LpOpFnhpIGWnUG3t5LSFt2rA=
X-Received: by 2002:a19:a8d4:: with SMTP id r203-v6mr1062663lfe.146.1524173495481;
 Thu, 19 Apr 2018 14:31:35 -0700 (PDT)
MIME-Version: 1.0
From: Ed Cable <edcable@mifos.org>
Date: Thu, 19 Apr 2018 14:31:14 -0700
Message-ID: <CAPnWRThjRX_eRwBEHmHTp1gHSzmprSxVDzpFEojJ4-fd88bj=w@mail.gmail.com>
To: user@fineract.apache.org, Dev <dev@fineract.apache.org>, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	=?UTF-8?B?5ZyG54+g56yU?= <627963028@qq.com>
Content-Type: multipart/alternative; boundary="000000000000c64d27056a3a4b3e"
Subject: [oss-security] [SECURITY] CVE-2018-1292: Apache Fineract SQL Injection Vulnerability
 - Injection via reportName parameter

--000000000000c64d27056a3a4b3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Critical

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Fineract 1.0.0
Apache Fineract 0.6.0-incubating
Apache Fineract 0.5.0-incubating
Apache Fineract 0.4.0-incubating

Description:

Within the 'getReportType' method, a hacker could inject SQL to read/update
data for which he doesn't have authorization for by way of the 'reportName'
parameter. Apache Fineract exposes different REST end points to query
domain specific
entities with a Query Parameter 'orderBy' which
are appended directly with SQL statements. A hacker/user can inject/draft
the  'orderBy'  query parameter by way of the "order" param  in such a way
to
to read/update the data for which he doesn't have authorization.

Mitigation:
All users should migrate to Apache Fineract 1.1.0 version
https://github.com/apache/fineract/tree/1.1.0


Credit:
This issue was discovered by =E5=9C=86=E7=8F=A0=E7=AC=94 (627963028@qq.com)

References:
http://fineract.apache.org/
https://cwiki.apache.org/confluence/display/FINERACT/Apache+
Fineract+Security+Report

Regards,
Apache Fineract Team

--000000000000c64d27056a3a4b3e--
