X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1141" "Monday" "7" "January" "2019" "10:14:01" "-0500" "James E. King III" "jking@apache.org" "<CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>" "36" "[oss-security] [SECURITY] CVE-2018-1320 Announcement" nil nil nil "1" "2019010715:14:01" "[oss-security] [SECURITY] CVE-2018-1320 Announcement" (number mark "U       jking@apache Jan  7   36/1141  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1320 Announcement\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10125 invoked by uid 550); 7 Jan 2019 17:27:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3499 invoked from network); 7 Jan 2019 15:14:29 -0000
X-Gm-Message-State: AJcUukdOv/0jXevNt8ZjQ1XpHUi6CVahrJ+V7kyn4eryyfJbPjgebZtB
	EN89fbOdVP4fzR5RKiPgFmsRtgL9fO6I9b4BTKw=
X-Google-Smtp-Source: ALg8bN6U8zkUHMxRbtLwXydsgk6AmsergyAKV8oaan635p+T+eH8J+1Sj/4H2qhaU6awQ0M1OUJZ4HRRWjQXhGARpuA=
X-Received: by 2002:a5d:4250:: with SMTP id s16mr53633795wrr.253.1546874054099;
 Mon, 07 Jan 2019 07:14:14 -0800 (PST)
MIME-Version: 1.0
From: "James E. King III" <jking@apache.org>
Date: Mon, 7 Jan 2019 10:14:01 -0500
X-Gmail-Original-Message-ID: <CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>
Message-ID: <CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>
To: oss-security@lists.openwall.com, security <security@apache.org>, 
	dev@thrift.apache.org, user@thrift.apache.org
Content-Type: multipart/alternative; boundary="00000000000081cbd2057edfae86"
Subject: [oss-security] [SECURITY] CVE-2018-1320 Announcement

--00000000000081cbd2057edfae86
Content-Type: text/plain; charset="UTF-8"

Reported By: Sudheesh Katkam
Vendor: The Apache Software Foundation
Product: Apache Thrift
Problem Type: Improper Authentication
Versions Affected: Apache Thrift versions 0.5.0 through 0.11.0
Mitigation: Upgrading to the latest 0.12.0 release

Description:
Apache Thrift Java client library TSaslTransport can bypass SASL negotiation
isComplete validation. An assert was previously used to determine if the
SASL handshake had successfully completed, but in some cases this assertion
could be disabled in production settings making the validation incomplete.

Resolution:
The assertion has been removed and an isComplete check has
been moved within the handshake processing loop. The fix is contained
in the 0.12.0 Apache Thrift release.

Jira issue:
 - https://issues.apache.org/jira/browse/THRIFT-4506

Mitre issue:
  - https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-1320

Committed resolution:
 -
https://github.com/apache/thrift/commit/d973409661f820d80d72c0034d06a12348c8705e

On behalf of the Apache Thrift PMC,

Thank you

--00000000000081cbd2057edfae86--
