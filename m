X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Saturday" "24" "July" "2021" "11:23:16" "+0200" "Stefan Seelmann" "seelmann@apache.org" nil "20" "[oss-security] CVE-2021-33900: Apache Directory Studio: StartTLS and SASL confidentiality protection bypass" nil nil nil "7" nil nil (number mark "U       seelmann@apa Jul 24   20/651   " thread-indent "\"[oss-security] CVE-2021-33900: Apache Directory Studio: StartTLS and SASL confidentiality protection bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33900: Apache Directory Studio: StartTLS and SASL confidentiality protection bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9844 invoked by uid 550); 24 Jul 2021 09:53:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24207 invoked from network); 24 Jul 2021 09:23:29 -0000
To: oss-security@lists.openwall.com
From: Stefan Seelmann <seelmann@apache.org>
Message-ID: <7b9ad310-d697-ba48-be22-4d85b77a205a@apache.org>
Date: Sat, 24 Jul 2021 11:23:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-33900: Apache Directory Studio: StartTLS and SASL
 confidentiality protection bypass

Severity: high

Description:

While investigating DIRSTUDIO-1219 it was noticed that configured
StartTLS encryption was not applied when any SASL authentication
mechanism (DIGEST-MD5, GSSAPI) was used. While investigating
DIRSTUDIO-1220 it was noticed that any configured SASL confidentiality
layer was not applied. This issue affects Apache Directory Studio
version 2.0.0.v20210213-M16 and prior versions.

Mitigation:

This issue was fixed in 2.0.0.v20210717-M17. All users using SASL are
recommended to upgrade to Apache Directory Studio 2.0.0.v20210717-M17.

Credit:

Apache Directory would like to thank Hugh Cole-Baker for reporting this
issue.
