X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1392" "Monday" "30" "December" "2019" "08:11:44" "-0500" "Erik Hatcher" "erik.hatcher@gmail.com" nil "42" nil "^Date:" nil nil "12" nil nil (number mark "        erik.hatcher Dec 30   42/1392  " thread-indent "\"[oss-security] [CVE-2019-17558] Apache Solr RCE through VelocityResponseWriter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17558] Apache Solr RCE through VelocityResponseWriter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9254 invoked by uid 550); 30 Dec 2019 13:38:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3594 invoked from network); 30 Dec 2019 13:12:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6dyr3Wvu69b+Pj6TJCWuMIzs8xxm7ZbH86K+T52ys6o=;
        b=WYFwojCM6isQjDtUCBBS1YY2lw4+kJV9lFwpl0Jm8rBhVZ9HD8qw1WC6YxRK/BP8YT
         ADiozxzUenN3bqc1+lHNhS28N2Kq2zjAA4C1JU7HUSn6HaFcxk+bk+D+eHDYBQ57v169
         6kZoV9XC+dk+0hSJPQTRhwYxZ633WeKhqqnYAwR9TH9NQ8zV2baXoHxLvSr28CSyoeGH
         /xN7R0zKMMpPn3+pKAzTC4cBxs5ttaBcySGCR1HkfWKy6Gko382r8Lyl8hEtmatu+dLy
         yTUeJxQ97vTEkpQhNU51Pq1iUnKoqDtC7qFC+w54aqD0J3NI9dkym3S5DjSzsCt8pt4p
         /LnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6dyr3Wvu69b+Pj6TJCWuMIzs8xxm7ZbH86K+T52ys6o=;
        b=Jas5wqeHjr1I3b3Ve0VHxH6I8p3vDUYENp47bzrIQiiborXE+R8cNJixiGaoXfuWCL
         J0mW+KhJ9HGP2AeFMxUqUVsV2xZc1U7GXF6Ack/zkokU2XxSrLEybmU0le2kFv6zhIkh
         HK+C1rIhtTIWpq2Ut+BHMdkiKpqHn+V32BLcLeH3LAQrK3Zzqi2xnEw5oqT2jzLdsLPI
         CCL2wZjSzobgsJXipghGklU8hrTSuW0jqA1JcGSho0GyfRZ7RM7NkVDJMsCqJmovtmFl
         sbQgMeBXgdcwDZTrMMP1/jRuaCso6D781vQ2+Tb8c1tGrElkhCCSnVv0XfbvnI9SHQMY
         RaKA==
X-Gm-Message-State: APjAAAUGxfcOzbD+A2fZ8GB/ZEfCKdPI9CqAzRiAWSv3qV+w15ucZQtV
	GEZGTV47ayN0t+4AjbRWVO/XEe5MKk2X3iuCK3y+K2cHA8I=
X-Google-Smtp-Source: APXvYqzY9koasB0+ub2eIjCVQLhnBCJDdNrM0PdldPvjqud0kZGVMiiCCADgclz7fHrlmXhIaqRJQyTZ6tHrWsQDW3U=
X-Received: by 2002:ac2:4c2b:: with SMTP id u11mr38602266lfq.46.1577711515516;
 Mon, 30 Dec 2019 05:11:55 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CACOzrT0QVJ4W+12XJemBttKNetG4qH+1aUyj51iSC4epw8vKyA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000070c5da059aeb9650"
Date: Mon, 30 Dec 2019 08:11:44 -0500
From: Erik Hatcher <erik.hatcher@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2019-17558] Apache Solr RCE through VelocityResponseWriter
To: oss-security@lists.openwall.com

--00000000000070c5da059aeb9650
Content-Type: text/plain; charset="UTF-8"

[CVE-2019-17558] Apache Solr RCE through VelocityResponseWriter

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: 5.0.0 to 8.3.1

Description:

The affected versions are vulnerable to a Remote Code Execution through the
VelocityResponseWriter.  A Velocity template can be provided through
Velocity (.vm) templates in a configset `velocity/` directory or as a
parameter.  A user defined configset could contain renderable, potentially
malicious, templates. Parameter provided templates are disabled by default,
but can be enabled by setting `params.resource.loader.enabled` by defining
a response writer with that setting set to `true`.  Defining a response
writer requires configuration API access.

Solr 8.4 removed the params resource loader entirely, and only enables the
configset-provided template rendering when the configset is `trusted` (has
been uploaded by an authenticated user).

Mitigation: Ensure your network settings are configured so that only
trusted traffic

communicates with Solr, especially to the configuration APIs.

Credits: Github user `s00py`

References:

  * https://cwiki.apache.org/confluence/display/solr/SolrSecurity

  * https://issues.apache.org/jira/browse/SOLR-13971

  * https://issues.apache.org/jira/browse/SOLR-14025

--00000000000070c5da059aeb9650--
