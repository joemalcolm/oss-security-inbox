X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1521" "Sunday" "11" "June" "2017" "08:11:15" "-0400" "Matt Gilman" "mcgilman@apache.org" "<CAFddr25eFkXCOQGwyN4B4VVNjdVYLcKya_JCaW=d=11=Qkyd4g@mail.gmail.com>" "47" "[oss-security] [ANNOUNCE] Apache NiFi CVE-2017-7667 and CVE-2017-7665" "^Date:" nil nil "6" "2017061112:11:15" "[oss-security] [ANNOUNCE] Apache NiFi CVE-2017-7667 and CVE-2017-7665" (number mark "U       mcgilman@apa Jun 11   47/1521  " thread-indent "\"[oss-security] [ANNOUNCE] Apache NiFi CVE-2017-7667 and CVE-2017-7665\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26088 invoked by uid 550); 11 Jun 2017 12:41:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5385 invoked from network); 11 Jun 2017 12:11:31 -0000
X-Gm-Message-State: AKS2vOx7Yj7ZDq29FY0PZCEiOoCgTAjMUQHLkeRaouO32NikT3FTImRz
	E7PIlz3JX5ABVkjYwxoAeMNmw3WYuA==
X-Received: by 10.237.41.162 with SMTP id o31mr4584573qtd.82.1497183075832;
 Sun, 11 Jun 2017 05:11:15 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAFddr25eFkXCOQGwyN4B4VVNjdVYLcKya_JCaW=d=11=Qkyd4g@mail.gmail.com>
Message-ID: <CAFddr25eFkXCOQGwyN4B4VVNjdVYLcKya_JCaW=d=11=Qkyd4g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c0bfb5a6619bc0551ae1928"
Date: Sun, 11 Jun 2017 08:11:15 -0400
From: Matt Gilman <mcgilman@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] Apache NiFi CVE-2017-7667 and CVE-2017-7665
To: security@nifi.apache.org, dev@nifi.apache.org, users@nifi.apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	announce@apache.org

--94eb2c0bfb5a6619bc0551ae1928
Content-Type: text/plain; charset="UTF-8"

Apache NiFi PMC would like to announce the discovery and resolution of
CVE-2017-7667 and CVE-2017-7665. These issues have been resolved and new
versions of the Apache NiFi project were released in accordance with the
Apache Release Process.

Fixed in Apache NiFi 0.7.4 and 1.3.0

CVE-2017-7667: Apache NiFi XFS issue due to insufficient response headers

Severity: Important

Versions Affected:

Apache NiFi 0.0.1 - 0.7.3
Apache NiFi 1.0.0 - 1.2.0

Description: Apache NiFi needs to establish the response header telling
browsers to only allow framing with the same origin.

Mitigation: The fix to set this response header will be applied on Apache
NiFi 0.7.4 and Apache NiFi 1.3.0 releases.  Users running a prior 0.x or
1.x release should upgrade to the appropriate release.

Credit: This issue was discovered by Matt Gilman.

CVE-2017-7665: Apache NiFi XSS issue on certain user input components

Severity: Important

Versions Affected:

Apache NiFi 0.0.1 - 0.7.3
Apache NiFi 1.0.0 - 1.2.0

Description: There are certain user input components in the Apache NiFi UI
which had been guarding for some forms of XSS issues but were insufficient.

Mitigation: The fix for more complete user input sanitization will be
applied on Apache NiFi 0.7.4 and Apache NiFi 1.3.0 releases.  Users running
a prior 0.x or 1.x release should upgrade to the appropriate release.

Credit: This issue was discovered by Matt Gilman.

--94eb2c0bfb5a6619bc0551ae1928--
