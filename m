X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1068" "Thursday" "19" "April" "2018" "14:30:59" "-0700" "Ed Cable" "edcable@mifos.org" "<CAPnWRTg33J=jQSU6E02creHzNvC_oVk+hgbC1y-V07m9ATXY6Q@mail.gmail.com>" "41" "[oss-security] [SECURITY] CVE-2018-1291: Apache Fineract SQL Injection Vulnerability - Order by injection via Order Param" nil nil nil "4" "2018041921:30:59" "[oss-security] [SECURITY] CVE-2018-1291: Apache Fineract SQL Injection Vulnerability - Order by injection via Order Param" (number mark "U       edcable@mifo Apr 19   41/1068  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1291: Apache Fineract SQL Injection Vulnerability - Order by injection via Order Param\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23920 invoked by uid 550); 19 Apr 2018 21:34:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15429 invoked from network); 19 Apr 2018 21:31:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mifos-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=lLesceM07wP0B4dYPLSdwbaJGTnWm9GtxhKsc10UuT8=;
        b=RJ0y9F/5D4+F6xKgr8Uo80NEbeVsgNg19dfJ/bpcUuzc6/STRv5yYd1MpwSXLAdD5m
         K45LSvQ0EcUfwOcclqb1WqAMGNfDjZ+c2T6iE31BWAm4LZiNpGmTHs/66jlvibtvCPUZ
         pPVcZ/zUnwLfY86q60vPNjJKb+iOdHW5Jx+NqqDuWO7MN5QYjjGVywT8O5H4WyePH6V/
         8c9zR6C+TWtOMB7E2e1vczbLpsrnFqIhh7OqaS6RsGiJv13WoesbV9dBDEnq0bdeOuCv
         7zzualvYWuSMj6nLSbDxQS8gGUKVRGmBnbvLPhPiUJubPMR0GeRP2qLLHOSHJC1UoNyD
         gUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lLesceM07wP0B4dYPLSdwbaJGTnWm9GtxhKsc10UuT8=;
        b=PV26Ho0zVF6YqRHXLUBTJGVmP+gPHtuFoeW4VGnyksPERvdOhmWBBZRf+nCrE0KMJR
         5vzr9+X/dC22zI9p1FyfLCMZa5LlfNN32z6Tl9c6A7yG46Nll4qeenzXUXaUiSSjWdmG
         oUYR/7u4yuU6lTVBDdGSs8TdrAEJ5kLd1nWjuzrTDIjc4YdjmgPMcIfc4h3KAMe0VSI+
         g8Q3OM71BezQdPkpv0BbTP3uGennLQzePjuOS45CVGmWzrvfDjj68H8G4GtztHTPbcad
         wyT4p2L0PaZkmCRRjUVCkqfZS1k93+cJWORXtRq98NqZzZCMKvnTuE28ywFfhn81bvOy
         zbjQ==
X-Gm-Message-State: ALQs6tCIYo8ab/IDKy4p5f9a/n/q4KSyZfXESBinet65WuuIe0/kN2Nk
	wZLPxwhbuBQbBw3zCRVDA4vfUUFKOwW9y+PR5nU0qd6rSeU=
X-Google-Smtp-Source: AB8JxZovZ2bjEv8E+efBZ9X52gAGup/zbgHXURzNlL3lFtA5gZTWLQYDIoNzZt/Pns7CkDuaXgBpYDmHgO4waYWpHms=
X-Received: by 2002:a19:a395:: with SMTP id m143-v6mr1058927lfe.70.1524173480568;
 Thu, 19 Apr 2018 14:31:20 -0700 (PDT)
MIME-Version: 1.0
From: Ed Cable <edcable@mifos.org>
Date: Thu, 19 Apr 2018 14:30:59 -0700
Message-ID: <CAPnWRTg33J=jQSU6E02creHzNvC_oVk+hgbC1y-V07m9ATXY6Q@mail.gmail.com>
To: user@fineract.apache.org, Dev <dev@fineract.apache.org>, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	=?UTF-8?B?5ZyG54+g56yU?= <627963028@qq.com>
Content-Type: multipart/alternative; boundary="000000000000e2be6a056a3a4abb"
Subject: [oss-security] [SECURITY] CVE-2018-1291: Apache Fineract SQL Injection Vulnerability
 - Order by injection via Order Param

--000000000000e2be6a056a3a4abb
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

--000000000000e2be6a056a3a4abb--
