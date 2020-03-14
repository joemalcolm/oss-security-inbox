X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["837" "Friday" "13" "March" "2020" "17:28:26" "-0700" "Anthony Baker" "abaker@apache.org" "<CAEwge-G24JXjkEEayqufi=zon-mo5usfiS3H8MYvtpg8=g0HuA@mail.gmail.com>" "27" "[oss-security] [CVE-2019-10091] Apache Geode SSL endpoint verification vulnerability" nil nil nil "3" "2020031400:28:26" "[oss-security] [CVE-2019-10091] Apache Geode SSL endpoint verification vulnerability" (number mark "U       abaker@apach Mar 13   27/837   " thread-indent "\"[oss-security] [CVE-2019-10091] Apache Geode SSL endpoint verification vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10091] Apache Geode SSL endpoint verification vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26124 invoked by uid 550); 14 Mar 2020 11:01:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7222 invoked from network); 14 Mar 2020 00:28:50 -0000
X-Gm-Message-State: ANhLgQ3AkwMXCC6VzCUWmimOVC929przgbosXtmooEkz35oy+oMYdFmZ
	BjjUAdMXllxqx3BcD4BF1I5ZChnPDdEsYjT02ELd1OJGgY0FkByh1TJVRnRRtPyQQzskup+TiwV
	kod0tFThIMEXYb8Xpen/WVl0oTFB07XrjEjZ1UEp+u7F437cY0Zzdfd/yo2Vg7oO2VWDBnw==
X-Received: by 2002:a17:906:8291:: with SMTP id h17mr14170591ejx.350.1584145717207;
        Fri, 13 Mar 2020 17:28:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsieVOGyiHcm5MFLR//hxWL8Zk/H2B1ZtRnSxiaXbSl5Q7tLnAmr9gfI0BT0O34BuEF5VxHUd1vHUhvQGx5gGI=
X-Received: by 2002:a17:906:8291:: with SMTP id h17mr14170580ejx.350.1584145717017;
 Fri, 13 Mar 2020 17:28:37 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Fri, 13 Mar 2020 17:28:26 -0700
X-Gmail-Original-Message-ID: <CAEwge-G24JXjkEEayqufi=zon-mo5usfiS3H8MYvtpg8=g0HuA@mail.gmail.com>
Message-ID: <CAEwge-G24JXjkEEayqufi=zon-mo5usfiS3H8MYvtpg8=g0HuA@mail.gmail.com>
To: announce@apache.org, user@geode.apache.org, geode <dev@geode.apache.org>, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2019-10091] Apache Geode SSL endpoint verification vulnerability

CVE-2019-10091 Apache Geode SSL endpoint verification vulnerability

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
Apache Geode 1.9.0

Description:
When TLS is enabled with ssl-endpoint-identification-enabled set to
true, Apache Geode fails to perform hostname verification of the
entries in the certificate SAN during the SSL handshake.  This could
compromise intra-cluster communication using a man-in-the-middle
attack.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.9.1,
1.10.0, or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Sai Boorlagadda from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-7018
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities
