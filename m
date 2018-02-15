X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2262" "Thursday" "15" "February" "2018" "20:04:14" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1518721454.9434.0.camel@gmail.com>" "90" "[oss-security] Irssi 1.1.1&1.0.7: CVE-2018-7054, CVE-2018-7053, CVE-2018-7050, CVE-2018-7052, CVE-2018-7051" nil nil nil "2" "2018021519:04:14" "[oss-security] Irssi 1.1.1&1.0.7: CVE-2018-7054, CVE-2018-7053, CVE-2018-7050, CVE-2018-7052, CVE-2018-7051" (number mark "U       ailin.nemui@ Feb 15   90/2262  " thread-indent "\"[oss-security] Irssi 1.1.1&1.0.7: CVE-2018-7054, CVE-2018-7053, CVE-2018-7050, CVE-2018-7052, CVE-2018-7051\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20212 invoked by uid 550); 15 Feb 2018 19:05:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17862 invoked from network); 15 Feb 2018 19:04:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=A+dZJePusL61DhIpyt+bf2tVX6Fv6J/lZN5UAp5Xl88=;
        b=Rl8/GucO2+o1tbPcora3lrtT+RToAu/LO84nxwGlFvwcajDYHmZA1M+y63Lh/QReh0
         Xi01ACs+1VYECqIlUTtTQXznEYJbxhgwJ9J81ng8bxKbrDd0x3WZK7un9zyNobQAF1MA
         tXyq9P8yj5TPCou8RJoyVqSsk9gzuHcnkYa5aveg1CqygidPeUYy0Gk8o926PFpLdr1F
         Qaizae7oFPjIQ66KXFFytj8nwA6oUVCueg5CYMWz6MYI1kkDvwgM11oU7PQppgGokUWz
         h82xdyJ1uVsO3XNjsWX4/k+dXUz/bMKeuAqP3KPph+cbpcGYpRfN9WTRj4LKGavOJ9b0
         KDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=A+dZJePusL61DhIpyt+bf2tVX6Fv6J/lZN5UAp5Xl88=;
        b=XdMidEULenmJaNMWHy8B9Xt/FBPV9HD6zWqHeq6dJ3Gtjrtj/BBBc6dUSbGIU427y3
         1Jf9ee4UBbBjUJn454F5xd0J8xB0J4yya/UD5inUXjWFxweyatY/82t9ZVKhqmm+4p4/
         GMt2Z30VDL4Irtgmk6BgLkR4Jfs6kPldulLjYJpDwVbvyZbtwEWQmSmZGIL1liXrfdMm
         w27CIt7W4TZh3l6c1OMDdmeMggryW0sfbCDIO7LTRa0zG/zqQjrMrK4B25fH/Gwqwxen
         jguqYkejPKVpNgpIzrPkjSUEyOZLc/8nsJN2Od85ou6jVREjhvMfkgZ5baqHXVwXK0KZ
         0eig==
X-Gm-Message-State: APf1xPA/1cYNDyAEohqu5uPl7RDa8XHN+5M19fhQ2Q6rgT3h03lrugye
	5kAqcwS+6T9AwYQDyf69FQy6dw==
X-Google-Smtp-Source: AH8x226AXcDpDU/w870Ev5p7TqWjoFg/lpFsrBl1ClkEaLT56T5Wlc59jvR/DTRs8iuw2XSD+0mscw==
X-Received: by 10.80.151.35 with SMTP id c32mr2561520edb.103.1518721455804;
        Thu, 15 Feb 2018 11:04:15 -0800 (PST)
Message-ID: <1518721454.9434.0.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Thu, 15 Feb 2018 20:04:14 +0100
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.5 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Irssi 1.1.1&1.0.7: CVE-2018-7054, CVE-2018-7053, CVE-2018-7050,
 CVE-2018-7052, CVE-2018-7051

IRSSI-SA-2018-02 Irssi Security Advisory [1]
============================================
CVE-2018-7054, CVE-2018-7053, CVE-2018-7050, CVE-2018-7052, CVE-2018-
7051

Description
-----------

Multiple vulnerabilities have been located in Irssi.

(a) Use after free when server is disconnected during netsplits. Found
    by Joseph Bisch. (CWE-416, CWE-825)

    CVE-2018-7054 [2] was assigned to this issue.

(b) Use after free when SASL messages are received in unexpected order.
    Found by Joseph Bisch. (CWE-416, CWE-691)

    CVE-2018-7053 [3] was assigned to this issue.

(c) Null pointer dereference when an "empty" nick has been observed by
    Irssi. Found by Joseph Bisch. (CWE-476, CWE-475)

    CVE-2018-7050 [4] was assigned to this issue.

(d) When the number of windows exceed the available space, Irssi would
    crash due to Null pointer dereference. Found by Joseph Bisch.
    (CWE-690)

    CVE-2018-7052 [5] was assigned to this issue.

(e) Certain nick names could result in out of bounds access when
    printing theme strings. Found by Oss-Fuzz. (CWE-126)

    CVE-2018-7051 [6] was assigned to this issue.


Affected versions
-----------------

(a) Irssi 1.0.0 and later

(b) Irssi 0.8.18 and later

(c) All Irssi versions that we observed

(d) All Irssi versions that we observed

(e) Irssi 0.8.7 and later


Fixed in
--------

Irssi 1.0.7, 1.1.1


Recommended action
------------------

Upgrade to the latest stable Irssi version. Irssi 1.0.7 and 1.1.1 are
maintenance release in the 1.0 and 1.1 series, without any new
features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


Mitigating facts
----------------

(b) requires a non-conforming ircd

(c) requires a broken ircd or control over the ircd

(d) depends on non-default configuration



References
----------

[1] https://irssi.org/security/irssi_sa_2018_02.txt
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-7054
[3] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-7053
[4] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-7050
[5] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-7052
[6] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-7051

