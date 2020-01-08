X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["752" "Wednesday" "8" "January" "2020" "06:49:31" "+0100" "mibo" "mibo@apache.org" "<CAGSZ4d4B8qc1ppMhJefgatohZGUi4AriEPtSijBHUO3u2daKNg@mail.gmail.com>" "25" "[oss-security] [SECURITY] CVE-2020-1925: Possible SSRF in AsyncResponseWrapperImpl" "^Date:" nil nil "1" "2020010805:49:31" "[oss-security] [SECURITY] CVE-2020-1925: Possible SSRF in AsyncResponseWrapperImpl" (number mark "U       mibo@apache. Jan  8   25/752   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-1925: Possible SSRF in AsyncResponseWrapperImpl\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-1925: Possible SSRF in AsyncResponseWrapperImpl" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32028 invoked by uid 550); 8 Jan 2020 09:48:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30218 invoked from network); 8 Jan 2020 05:49:54 -0000
X-Gm-Message-State: APjAAAUSzJFw5mf+2lICWn6jf7JuffWPwM2WiN+Qk+7lf9v7Mtsbfg2X
	eTGAtg2VMC2fbLDiKc2Vj2HPjtUWA58rLCIsccw=
X-Google-Smtp-Source: APXvYqzXJ5G/nOMBV6odVeTAHsJKbMUHHqXZNgCj80gpFB3XPurV6bUu1Eg8qxPRC4+KY+FpJtf4N4N3edENBbVljrA=
X-Received: by 2002:a17:906:4556:: with SMTP id s22mr3027138ejq.165.1578462581487;
 Tue, 07 Jan 2020 21:49:41 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAGSZ4d4B8qc1ppMhJefgatohZGUi4AriEPtSijBHUO3u2daKNg@mail.gmail.com>
Message-ID: <CAGSZ4d4B8qc1ppMhJefgatohZGUi4AriEPtSijBHUO3u2daKNg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 8 Jan 2020 06:49:31 +0100
From: mibo <mibo@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2020-1925: Possible SSRF in AsyncResponseWrapperImpl
To: oss-security@lists.openwall.com

CVE-2020-1925: Possible SSRF in AsyncResponseWrapperImpl

Severity: Important
Vendor: The Apache Software Foundation

Versions Affected:
Olingo 4.0.0 to 4.7.0
The OData v2 versions of Olingo 2.x are not affected

Description:
The AsyncRequestWrapperImpl class reads a URL from the Location
header, and then sends a GET or DELETE request to this URL. It may
allow to implement a SSRF attack. If an attacker tricks a client to
connect to a malicious server, the server can make the client call any
URL including internal resources which are not directly accessible by
the attacker.

Mitigation:
4.x.x users should upgrade to 4.7.1

Credit:
This issue was discovered by Artem Smotrakov of SAP SE.

Links:
https://issues.apache.org/jira/browse/OLINGO-1416
