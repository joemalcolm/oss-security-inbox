X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1559" "Wednesday" "13" "March" "2019" "08:47:13" "-0400" "James E. King III" "jking@apache.org" "<CAOWZHxeF3EK+5gHgvqF9Srw2-ksXrafOA6-Rjh1Gu77=O+Xy=g@mail.gmail.com>" "44" "[oss-security] Re: [SECURITY] CVE-2018-1320 Apache Thrift SASL negotiation vulnerability (update)" nil nil nil "3" "2019031312:47:13" "[oss-security] Re: [SECURITY] CVE-2018-1320 Apache Thrift SASL negotiation vulnerability (update)" (number mark "U       jking@apache Mar 13   44/1559  " thread-indent "\"[oss-security] Re: [SECURITY] CVE-2018-1320 Apache Thrift SASL negotiation vulnerability (update)\"\n") "<CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>" ("<CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [SECURITY] CVE-2018-1320 Apache Thrift SASL negotiation vulnerability (update)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30300 invoked by uid 550); 13 Mar 2019 12:57:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16262 invoked from network); 13 Mar 2019 12:47:38 -0000
X-Gm-Message-State: APjAAAUsO4iH3gBFSDMDDSv7FAZFZh4rvU4Zc4wZAsoFIi0vCwMnq/uE
	HGOp78nDw/r44KuTqzXFqzvh2CINkNDx6mkNJz0=
X-Google-Smtp-Source: APXvYqzLoWenFWWsjnNKT09OG5BxPLYVFG2tAPquXX91uyJvEVep9Q784elv3y1jT8pFJbUDp8IYf7rVKHHs6iAkV7M=
X-Received: by 2002:a5d:5504:: with SMTP id b4mr2636313wrv.137.1552481243807;
 Wed, 13 Mar 2019 05:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>
In-Reply-To: <CAOWZHxfwV6WviB8XqrpxguMdu2N577Fpj3qWj0QzWoZF=WuVLQ@mail.gmail.com>
From: "James E. King III" <jking@apache.org>
Date: Wed, 13 Mar 2019 08:47:13 -0400
X-Gmail-Original-Message-ID: <CAOWZHxeF3EK+5gHgvqF9Srw2-ksXrafOA6-Rjh1Gu77=O+Xy=g@mail.gmail.com>
Message-ID: <CAOWZHxeF3EK+5gHgvqF9Srw2-ksXrafOA6-Rjh1Gu77=O+Xy=g@mail.gmail.com>
To: "James E. King III" <jking@apache.org>
Cc: oss-security@lists.openwall.com, security <security@apache.org>, 
	dev@thrift.apache.org, user@thrift.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [SECURITY] CVE-2018-1320 Apache Thrift SASL negotiation
 vulnerability (update)

This is an update to a previously announced CVE.  The specific change
in the update is that a new version of Apache Thrift 0.9.3.1 was
released per community request.  The following fields changed from the
previous announcement:

Versions Affected
Mitigation
Resolution

The new content of the CVE announcement is as follows:


Reported By: Sudheesh Katkam
Vendor: The Apache Software Foundation
Product: Apache Thrift
Problem Type: Improper Authentication
Versions Affected: Apache Thrift versions 0.5.0 through 0.11.0, except 0.9.3.1
Mitigation: Upgrading to 0.9.3.1 or to the latest 0.12.0 release

Description:
Apache Thrift Java client library TSaslTransport can bypass SASL negotiation
isComplete validation. An assert was previously used to determine if the
SASL handshake had successfully completed, but in some cases this assertion
could be disabled in production settings making the validation incomplete.

Resolution:
The assertion has been removed and an isComplete check has
been moved within the handshake processing loop. The fix is contained
in the 0.12.0 Apache Thrift release as has also been backported to the
0.9.3.1 release, also available on maven central.  0.12.0 was released
on January 4, 2019 and 0.9.3.1 was released on March 13, 2019.

Jira issue:
 - https://issues.apache.org/jira/browse/THRIFT-4506

Mitre issue:
  - https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-1320

Committed resolution:
 - https://github.com/apache/thrift/commit/d973409661f820d80d72c0034d06a12348c8705e

On behalf of the Apache Thrift PMC,

Thank you
