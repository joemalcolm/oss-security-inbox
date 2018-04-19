X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["838" "Thursday" "19" "April" "2018" "14:30:56" "-0700" "Ed Cable" "edcable@mifos.org" "<CAPnWRTj6xGZuO7f5ASRKG81uis-kmgrJ2Pws4cyZRv58X38f_g@mail.gmail.com>" "34" "[oss-security] [SECURITY] CVE-2018-1290: Apache Fineract SQL Injection Vulnerability - Single quotation escape caused by two continuous SQL parameters" nil nil nil "4" "2018041921:30:56" "[oss-security] [SECURITY] CVE-2018-1290: Apache Fineract SQL Injection Vulnerability - Single quotation escape caused by two continuous SQL parameters" (number mark "U       edcable@mifo Apr 19   34/838   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1290: Apache Fineract SQL Injection Vulnerability - Single quotation escape caused by two continuous SQL parameters\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20444 invoked by uid 550); 19 Apr 2018 21:34:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14315 invoked from network); 19 Apr 2018 21:31:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mifos-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=CwP8t8W4U59Q+EuNDo3jCawAc1VbRAZ7xjpNLYQtIK4=;
        b=FYAINNhBuH9/znWqGt7kWEQhnuDftCybqiTdz3NlQoytTQTatJap8EqVHTT/NFJ3y9
         WsbS9iEqddGFfzXPIIOYlP6ozLzMfUl8AyQ8wbgSzAFvq1JSTzMkJV9H81flu6F44V2A
         cXGUj/G3J5mBb3hoZgNbKMa3HE0E2azm6bUKRs7sz4fRo8YKHYsINLqLON7XADSSjF/r
         pzXPvR61iUXBgqcW3vbiqZBU1FcsNfMRnM/W7SdyAdNLI9jPmj86lVOr6J0W3Uve1MWR
         N8L6Ak5CTsP7nCFbivRnNk2MYj3KYEO9Ca/IzeLDqhNCIsQMHaGCzJZ6yohq4Fd41EvD
         REFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CwP8t8W4U59Q+EuNDo3jCawAc1VbRAZ7xjpNLYQtIK4=;
        b=FLXag88ITixOt4nr4kUcIfyINmzPLOZqrB9DXhRmT6I51AV6qvrg8nVHxoq2EvIg7P
         KTXXUEMVLYXZrZf2TCFZBYbEXpCQRSuRy+Rk7/cPBL4LRhFjWym9zqisWU0qU96uOqa1
         Ai6dIh76wz7Xbu9fKJWCOzBjib5M0Fv2WJi+rK/qSRkHZdiEd8LSqcOGHoZOLkJuU9F/
         JuevX5K9Iwq+ArITEGo8uV3IEqtrqlLUu+8ccAFP2UxmAEnCXIIOVj/33hUHPRja7/PN
         I2XyudbzAOaq1eQAitUZd02MyV/fDWyZBgB14Levnjxrnr/D7KcGaUSh/l6Wb5Yx6JKm
         1nyw==
X-Gm-Message-State: ALQs6tCIpeRu0q7Z4bz29TMtV5aRNQQ7NueGRJ7JxA5YQSvkt2Tn9r+5
	fTocslaYCsXcFaxY6XUKAlXwYcJg06WYJJxbcJWRKg==
X-Google-Smtp-Source: AB8JxZqarfzfR+ZgppWzG7uPUVwsHIcYeEA+lkFd9aawtanA0FPPFEDC5T7RQaY62ukh2LUsYWJksyLL09ZvZdVljpY=
X-Received: by 2002:a19:43:: with SMTP id 64-v6mr1052411lfa.13.1524173476732;
 Thu, 19 Apr 2018 14:31:16 -0700 (PDT)
MIME-Version: 1.0
From: Ed Cable <edcable@mifos.org>
Date: Thu, 19 Apr 2018 14:30:56 -0700
Message-ID: <CAPnWRTj6xGZuO7f5ASRKG81uis-kmgrJ2Pws4cyZRv58X38f_g@mail.gmail.com>
To: user@fineract.apache.org, Dev <dev@fineract.apache.org>, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	=?UTF-8?B?5ZyG54+g56yU?= <627963028@qq.com>
Content-Type: multipart/alternative; boundary="000000000000a832b4056a3a4a47"
Subject: [oss-security] [SECURITY] CVE-2018-1290: Apache Fineract SQL Injection Vulnerability
 - Single quotation escape caused by two continuous SQL parameters

--000000000000a832b4056a3a4a47
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

Using a single quotation escape with two continuous SQL parameters can
cause a SQL injection. This could be done in Methods like
retrieveAuditEntries of AuditsApiResource Class
retrieveCommands of MakercheckersApiResource Class

Credit:
This issue was discovered by =E5=9C=86=E7=8F=A0=E7=AC=94 (627963028@qq.com)

References:
http://fineract.apache.org/
https://cwiki.apache.org/confluence/display/FINERACT/Apache+
Fineract+Security+Report

Regards,
Apache Fineract Team

--000000000000a832b4056a3a4a47--
