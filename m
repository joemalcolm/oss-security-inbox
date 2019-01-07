X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1185" "Monday" "7" "January" "2019" "10:30:30" "-0500" "James E. King III" "jking@apache.org" "<CAOWZHxdVnpk-4-Q7VUfeDJ=VBDjxsYQr44xMkN8ZAkZVKXeaPA@mail.gmail.com>" "37" "[oss-security] [SECURITY] CVE-2018-11798 Announcement" nil nil nil "1" "2019010715:30:30" "[oss-security] [SECURITY] CVE-2018-11798 Announcement" (number mark "U       jking@apache Jan  7   37/1185  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-11798 Announcement\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11576 invoked by uid 550); 7 Jan 2019 17:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19514 invoked from network); 7 Jan 2019 15:30:57 -0000
X-Gm-Message-State: AJcUukecxSHgg+UyOkfjXaaoIoS2PodMihuJZ5WWjs9wlvU26YHJjr3g
	DX1M6PgAxn4Glh4uAb9LcfwSRqnL4jJScXjdKU0=
X-Google-Smtp-Source: ALg8bN5ESF4GCGDhfBH1x6bxwjN0hk2ngzxkklnisWjDNVMHY9Lv+vRlcBd+SFRnhf9QM/qsZoBUWFm0X7b0Cgu+epo=
X-Received: by 2002:a1c:1c8:: with SMTP id 191mr9503547wmb.150.1546875043095;
 Mon, 07 Jan 2019 07:30:43 -0800 (PST)
MIME-Version: 1.0
From: "James E. King III" <jking@apache.org>
Date: Mon, 7 Jan 2019 10:30:30 -0500
X-Gmail-Original-Message-ID: <CAOWZHxdVnpk-4-Q7VUfeDJ=VBDjxsYQr44xMkN8ZAkZVKXeaPA@mail.gmail.com>
Message-ID: <CAOWZHxdVnpk-4-Q7VUfeDJ=VBDjxsYQr44xMkN8ZAkZVKXeaPA@mail.gmail.com>
To: oss-security@lists.openwall.com, security <security@apache.org>, 
	dev@thrift.apache.org, user@thrift.apache.org
Content-Type: multipart/alternative; boundary="00000000000074b15d057edfe981"
Subject: [oss-security] [SECURITY] CVE-2018-11798 Announcement

--00000000000074b15d057edfe981
Content-Type: text/plain; charset="UTF-8"

Reported By: Asger Feldthaus
Vendor: The Apache Software Foundation
Product: Apache Thrift
Problem Type: Improper Access Control
Versions Affected: Apache Thrift versions 0.9.2 through 0.11.0
Mitigation: Upgrading to the latest 0.12.0 release

Description:
The Apache Thrift Node.js static file server has been determined to have a
security vulnerability in it which a remote user has the ability to access
files outside the set webservers docroot path.

Resolution:
The code which sets the visible path for the static files to be served will
now verify that the requested path is within the specified webservers
docroot path and not allow a malicious user to escape out of the configured
path.

Jira issue:
 - https://issues.apache.org/jira/browse/THRIFT-4647

Mitre issue:
  - https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-11798

Committed resolution:
 -
*https://github.com/apache/thrift/commit/2a2b72f6c8aef200ecee4984f011e06052288ff2
<https://github.com/apache/thrift/commit/2a2b72f6c8aef200ecee4984f011e06052288ff2>*

On behalf of the Apache Thrift PMC,

Thank you

--00000000000074b15d057edfe981--
