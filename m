X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["766" "Tuesday" "9" "October" "2018" "16:05:18" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwUfCG9Vo8UhBzE1U7EgedjaVuDqQ3qYpXn0mFv8DXYT0Q@mail.gmail.com>" "25" "[oss-security] [CVE-2018-11796] Apache Tika Denial of Service via XML Entity Expansion Vulnerability" nil nil nil "10" "2018100920:05:18" "[oss-security] [CVE-2018-11796] Apache Tika Denial of Service via XML Entity Expansion Vulnerability" (number mark "U       tallison@apa Oct  9   25/766   " thread-indent "\"[oss-security] [CVE-2018-11796] Apache Tika Denial of Service via XML Entity Expansion Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30388 invoked by uid 550); 9 Oct 2018 20:05:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30364 invoked from network); 9 Oct 2018 20:05:43 -0000
X-Gm-Message-State: ABuFfogt+fVstqsKDicwbce8JQS79dq4rxFTV11TGE0SdXVv99G1j6sU
	lTEAATeH7BodNu/2xaQS7j3jHpFQrX5+siVvorU=
X-Google-Smtp-Source: ACcGV63EzjAt8WtS5hr7MFIOyaPIHpimnv7SBVsVMu5GJFBFYIFg9W+GA/yS8FRm4kMPIUiYV67W0wL14MMeeHzsbwI=
X-Received: by 2002:a81:cb08:: with SMTP id q8-v6mr16984220ywi.49.1539115529679;
 Tue, 09 Oct 2018 13:05:29 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Tue, 9 Oct 2018 16:05:18 -0400
X-Gmail-Original-Message-ID: <CAC1dCwUfCG9Vo8UhBzE1U7EgedjaVuDqQ3qYpXn0mFv8DXYT0Q@mail.gmail.com>
Message-ID: <CAC1dCwUfCG9Vo8UhBzE1U7EgedjaVuDqQ3qYpXn0mFv8DXYT0Q@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-11796] Apache Tika Denial of Service via XML Entity
 Expansion Vulnerability

CVE-2018-11796: Apache Tika Denial of Service via XML Entity Expansion
Vulnerability

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Tika 0.1 to 1.19

Description:
In Apache Tika 1.19 (CVE-2018-11761), we added an entity expansion
limit for XML parsing.  However, Tika reuses SAXParsers and calls
reset() after each parse, which, for Xerces2 parsers, as per the
documentation, removes the user-specified SecurityManager and
thus removes entity expansion limits after the first parse.
Apache Tika 1.19 is therefore still vulnerable to entity
expansions which can lead to a denial of service attack.

Mitigation:
Apache Tika users should upgrade to 1.19.1 or later

Credit:
This issue was discovered by Slava Gorelik of CloudAlly.
