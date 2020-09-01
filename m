X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1040" "Tuesday" "1" "September" "2020" "15:33:43" "+0100" "Sam Tunnicliffe" "sam@beobal.com" "<8B86DF4D-6A38-4ACE-B5AD-F891E1165AEE@beobal.com>" "27" "[oss-security] CVE-2020-13946 Apache Cassandra RMI Rebind Vulnerability" nil nil nil "9" "2020090114:33:43" "[oss-security] CVE-2020-13946 Apache Cassandra RMI Rebind Vulnerability" (number mark "U       sam@beobal.c Sep  1   27/1040  " thread-indent "\"[oss-security] CVE-2020-13946 Apache Cassandra RMI Rebind Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13946 Apache Cassandra RMI Rebind Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9522 invoked by uid 550); 1 Sep 2020 18:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9299 invoked from network); 1 Sep 2020 14:33:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beobal-com.20150623.gappssmtp.com; s=20150623;
        h=from:reply-to:mime-version:subject:message-id:date:to;
        bh=n1rGyDMIsIN7Wn3YMVLFkpH1KkYagO7hOwlmPjsqCL8=;
        b=0ojLobcVDdT+GfF7/jxJ1IIXZ1u1FjR8PZ72Hob/oLMeL94uY4oDWBxuXk0iFuDGq8
         YIa5FMA00pEDsWvTeCZsSzl8fAcT2n8krYR3YV2s9HTyqUz5mG38wNYv2TX9GpYsWKG7
         QnOED/S6cJ4L7zUxhC3NCaX7OL/11NERqbjVOVcOI74O6x6fqS0ic1aMcVVBoTh9WAVc
         Lnulxawb0S4GySwnvBlyHBSb/Ci+DDGx5jO+0hjbuoJqjmHBgdZIcH3g5zpKbADSjAby
         sDh4h+6xtRB1Yj000DBCNu5PtupVG6HqE3exScXoZI+gD3WSEaX4w7zFwK3X9TZhqPjp
         FJ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:mime-version:subject:message-id
         :date:to;
        bh=n1rGyDMIsIN7Wn3YMVLFkpH1KkYagO7hOwlmPjsqCL8=;
        b=c7oq0rhTKHMHDjkkQmn7RkTO3Kkzwx3NE1CW6bxi0MAESN4X7emLE7x+r/DofUd1nw
         n4Tbh3BXpUwG/OG7WTWkksyBDNyDtSgTDMl/zbc9jQQ6XnnjYVLwrJSbXMLyCqq08PXU
         3Yp2+3+SrqGzDAYLObsCyBCCPRa5MTRATnD3TptpZRNM/LfjpEVmg7dJnb6etMFFjIeT
         j4ma81Gz5ExAJPmZivxKbbXLv5U/MRR/cZcTmrVnGkuLycPgYrvs0M8oPCOd1SDYWmuU
         csr+qbzcdt0uYkOWpu0mJgpD3hgAZDOJcSwO1wN/0E7CbFB2B02YDs5UX5k9g2niM8t0
         yMbw==
X-Gm-Message-State: AOAM533sgr1Vi4uMlNICiuv1phS5/IAzMBVbL7Bn6vDCQM/pF4slb0se
	ymf7Vv3pC2iQs+aQBjVKhvoIT1aLvc8deFUiKTo=
X-Google-Smtp-Source: ABdhPJwgjN46KVPl/ddsAkRWVMSbsN+0wAJP6fbj8QZiAjyJgX2TRzWXHOSjRwQ7g0kx8TUhUFagbQ==
X-Received: by 2002:a5d:6343:: with SMTP id b3mr2381962wrw.179.1598970824562;
        Tue, 01 Sep 2020 07:33:44 -0700 (PDT)
From: Sam Tunnicliffe <sam@beobal.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_67923BC6-7ED7-4F28-87AB-0BEF0F499E58"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <8B86DF4D-6A38-4ACE-B5AD-F891E1165AEE@beobal.com>
Date: Tue, 1 Sep 2020 15:33:43 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: [oss-security] CVE-2020-13946 Apache Cassandra RMI Rebind Vulnerability

--Apple-Mail=_67923BC6-7ED7-4F28-87AB-0BEF0F499E58
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2020-13946 Apache Cassandra RMI Rebind Vulnerability

Versions Affected:
All versions prior to: 2.1.22, 2.2.18, 3.0.22, 3.11.8 and 4.0-beta2

Description:
It is possible for a local attacker without access to the Apache Cassandra =
process or configuration files to manipulate the RMI registry to perform a =
man-in-the-middle attack and capture user names and passwords used to acces=
s the JMX interface. The attacker can then use these credentials to access =
the JMX interface and perform unauthorised operations.
Users should also be aware of CVE-2019-2684, a JRE vulnerability that enabl=
es this issue to be exploited remotely.

Mitigation:
2.1.x users should upgrade to 2.1.22
2.2.x users should upgrade to 2.2.18
3.0.x users should upgrade to 3.0.22
3.11.x users should upgrade to 3.11.8
4.0-beta1 users should upgrade to 4.0-beta2=

--Apple-Mail=_67923BC6-7ED7-4F28-87AB-0BEF0F499E58--
