X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Friday" "23" "February" "2018" "14:19:09" "-0800" "Anthony Baker" "abaker@apache.org" "<CAEwge-HwkgJoAUiCKj1S43OfcaU+47ZQkw+wkNmm0=JSH_Y5TA@mail.gmail.com>" "27" "[oss-security] [SECURITY] CVE-2017-15693 Apache Geode unsafe deserialization of application objects" nil nil nil "2" "2018022322:19:09" "[oss-security] [SECURITY] CVE-2017-15693 Apache Geode unsafe deserialization of application objects" (number mark "U       abaker@apach Feb 23   27/965   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-15693 Apache Geode unsafe deserialization of application objects\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7393 invoked by uid 550); 23 Feb 2018 22:44:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20034 invoked from network); 23 Feb 2018 22:19:25 -0000
X-Gm-Message-State: APf1xPAbYcx3a8flvgFv9h7o4CgfT1p3FCPlDlyNDODNXwZ+NnYv8fR5
	BHh6rkyaKAaDbbQUi/NzhjI7dbWnpclalxQjkeX1aQ==
X-Google-Smtp-Source: AG47ELsdWquXg+I+XBk0mQzroZvB+FiMH+OacpkSzsb+fLzjPE/0hxLQyUMruhfjsAxiAqFroIIloK0pSSbQhy7AH0Y=
X-Received: by 10.31.73.129 with SMTP id w123mr2563148vka.102.1519424350059;
 Fri, 23 Feb 2018 14:19:10 -0800 (PST)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Fri, 23 Feb 2018 14:19:09 -0800
X-Gmail-Original-Message-ID: <CAEwge-HwkgJoAUiCKj1S43OfcaU+47ZQkw+wkNmm0=JSH_Y5TA@mail.gmail.com>
Message-ID: <CAEwge-HwkgJoAUiCKj1S43OfcaU+47ZQkw+wkNmm0=JSH_Y5TA@mail.gmail.com>
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com, mmo@semmle.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2017-15693 Apache Geode unsafe deserialization of
 application objects

CVE-2017-15693 Apache Geode unsafe deserialization of application objects

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.3.0

Description:
The Geode server stores application objects in serialized form.
Certain cluster operations and API invocations cause these objects to
be deserialized.  An user with DATA:WRITE access to the cluster may be
able to cause remote code execution if certain classes are present on
the classpath.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.4.0 or
later.  In addition, users should set the flags
validate-serializable-objects and serializable-object-filter.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Man Yue Mo from Semmle.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3923
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities
