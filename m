X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1070" "Thursday" "19" "April" "2018" "14:30:49" "-0700" "Ed Cable" "edcable@mifos.org" "<CAPnWRTiQ3GroywG6rD-RB6g96Gjd1O+0BqCSR8E5D655xJ8fHA@mail.gmail.com>" "39" "[oss-security] [SECURITY] CVE-2018-1289: Apache Fineract SQL Injection Vulnerability by orderBy and sortOrder parameters" nil nil nil "4" "2018041921:30:49" "[oss-security] [SECURITY] CVE-2018-1289: Apache Fineract SQL Injection Vulnerability by orderBy and sortOrder parameters" (number mark "U       edcable@mifo Apr 19   39/1070  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1289: Apache Fineract SQL Injection Vulnerability by orderBy and sortOrder parameters\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19759 invoked by uid 550); 19 Apr 2018 21:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14239 invoked from network); 19 Apr 2018 21:31:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mifos-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=AKfCSWokikKL8UdzY/RW3lx18RPZQ228CySqmoI7QNw=;
        b=GdcUwHa4+LIMOnee17BVl1Mj2o4RwoCT/W6ACwP5wr2wzct0SG0JdygSY35tJu9hJh
         Kv4lE8giUFkGggsYS5pFyrja2c8qblMx2SQwo1GHi/z5N5elA4S0cGt+fJmLqRPRO2Sx
         jpsVoPwfEjk8PT9xUzLtImMyl/spb92HndSiSL/YpKabxuKgWPn2VHZLpG+C29NbLEYy
         6psUbNcWIZA6jweZSzuiRgrEEyNL2+KoQC0hdpSfnejSudnM0fzo5Ws2Bi4oChlVh1Yi
         t9PuZ+CBDrv50QSKErm0h7F+QBubq+i0HrtFu/aIvTVp2V9UnHNzUxYMz05FdJWXz5Ga
         ZsVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AKfCSWokikKL8UdzY/RW3lx18RPZQ228CySqmoI7QNw=;
        b=VY2DOcFA6jb6yiAo63dEQAzHdw1u9uhDa3Qm3G92rZUfFPMHe70JofvqXfHZ2AXW/0
         WV2M8au2rIYxSxi5/yOM/rjjqVqQK8Asfsk4opD2trPieLMLUmhM1pZPO13wkdv9eUTg
         R9TRcVOiEYdszqM/xCHpKkEIPwH8IQLxErPhZHgY4+kzL9+MtW10cElZSHdide5jZMpP
         vudsYjf6pxKe31bDLDntLN+dPvbwAY9Q0Yf1vQGziTIxYlRdK7ODYofHeXaWXTCiJ3wH
         41b/5dVgzdB6K/n3b2a8f6EIglmnBEetnXU2zjJOOhLsf5kKHMVhkPBsFHC4Y+dlaVBx
         arMQ==
X-Gm-Message-State: ALQs6tDBCG6dhgFMHME50Oz15QkzcSseMQImkFWLRm5CyKz6jDNS97CC
	AQBxCuCUfkQZruBqX2AAdievNCtTMysp/lEriVSbNw==
X-Google-Smtp-Source: AB8JxZqBoHj+G8wtoBHVl5XSr8AHG4bHn5/v4xqwwHSlcmY9wgNdani9lzIj8l28pJYmizt3nHv0TIXlqYr0+uGkcoA=
X-Received: by 2002:a19:7b11:: with SMTP id w17-v6mr960538lfc.103.1524173470151;
 Thu, 19 Apr 2018 14:31:10 -0700 (PDT)
MIME-Version: 1.0
From: Ed Cable <edcable@mifos.org>
Date: Thu, 19 Apr 2018 14:30:49 -0700
Message-ID: <CAPnWRTiQ3GroywG6rD-RB6g96Gjd1O+0BqCSR8E5D655xJ8fHA@mail.gmail.com>
To: user@fineract.apache.org, Dev <dev@fineract.apache.org>, 
	oss-security@lists.openwall.com, security <security@apache.org>, 
	=?UTF-8?B?5ZyG54+g56yU?= <627963028@qq.com>
Content-Type: multipart/alternative; boundary="00000000000043c08f056a3a4a2f"
Subject: [oss-security] [SECURITY] CVE-2018-1289: Apache Fineract SQL Injection Vulnerability
 by orderBy and sortOrder parameters

--00000000000043c08f056a3a4a2f
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
Apache Fineract exposes different REST end points to query domain specific
entities with a Query Parameter 'orderBy' and 'sortOrder' which
are appended directly with SQL statements. A hacker/user can inject/draft
the  'orderBy' and 'sortOrder'  query parameter in such a way to
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

--00000000000043c08f056a3a4a2f--
