X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["946" "Tuesday" "25" "January" "2022" "15:56:37" "+0100" "=?UTF-8?B?SmVhbi1CYXB0aXN0ZSBPbm9mcsOp?=" "jbonofre@apache.org" nil "32" "[oss-security] [SECURITY] New security advisory for CVE-2022-22932" nil nil nil "1" nil nil (number mark "U       jbonofre@apa Jan 25   32/946   " thread-indent "\"[oss-security] [SECURITY] New security advisory for CVE-2022-22932\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] New security advisory for CVE-2022-22932" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17608 invoked by uid 550); 25 Jan 2022 14:57:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13664 invoked from network); 25 Jan 2022 14:57:21 -0000
X-Gm-Message-State: AOAM532GVpkPuE61cPAgxLvVMScnS1U4rXqLdjg2Ub7i9NCFBX10fon+
	ITMb6sgoRnbl96+crXA9giypG2tuxFz0pH06ZNY=
X-Google-Smtp-Source: ABdhPJwuG/7pjpBvmpRS513c+VaEEPkOiByEANCaFeH6n5+ShuXUihNFzg1XcbvQj1IZ/CfzMQPC66hYBJNaxG5G7dQ=
X-Received: by 2002:a2e:b557:: with SMTP id a23mr5908107ljn.294.1643122608128;
 Tue, 25 Jan 2022 06:56:48 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Jean=2DBaptiste_Onofr=C3=A9?= <jbonofre@apache.org>
Date: Tue, 25 Jan 2022 15:56:37 +0100
X-Gmail-Original-Message-ID: <CAB8EV3SjWzULpV46s_Yss1EA3-g5UpLCYNB0QzwK3OvSuo5Mug@mail.gmail.com>
Message-ID: <CAB8EV3SjWzULpV46s_Yss1EA3-g5UpLCYNB0QzwK3OvSuo5Mug@mail.gmail.com>
To: announce@apache.org, user@karaf.apache.org, dev@karaf.apache.org, 
	security@apache.org, oss-security@lists.openwall.com, securitylab@github.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] New security advisory for CVE-2022-22932

A new security advisory has been released for Apache Karaf, which was
fixed in the 4.2.15 and 4.3.6 runtime releases

CVE-2022-22932: Path traversal flaws

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.2.15 or 4.3.6

Description:

Apache Karaf obr:* commands and run goal on the karaf-maven-plugin have partial
path traversal which allows to break out of expected folder.

The risk is low as obr:* commands are not very used and the entry is
set by user.

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=36a2bc4
https://gitbox.apache.org/repos/asf?p=karaf.git;h=52b70cf

Mitigation: Apache Karaf users should upgrade to 4.2.15 or 4.3.6
or later as soon as possible, or use correct path.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-7326


Credit: This issue was discovered and reported by GHSL team member
Jaroslav Lobacevski..
