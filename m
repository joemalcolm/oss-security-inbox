X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Thursday" "15" "March" "2018" "14:52:52" "-0400" "Dave Brondsema" "brondsem@apache.org" "<f89f6551-b72e-5a20-6013-8adf5acd752a@apache.org>" "15" "[oss-security] [SECURITY] CVE-2018-1319 Apache Allura HTTP response splitting" "^Date:" nil nil "3" "2018031518:52:52" "[oss-security] [SECURITY] CVE-2018-1319 Apache Allura HTTP response splitting" (number mark "U       brondsem@apa Mar 15   15/446   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1319 Apache Allura HTTP response splitting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27788 invoked by uid 550); 15 Mar 2018 19:13:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18260 invoked from network); 15 Mar 2018 18:53:07 -0000
Message-ID: <f89f6551-b72e-5a20-6013-8adf5acd752a@apache.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Thu, 15 Mar 2018 14:52:52 -0400
From: Dave Brondsema <brondsem@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2018-1319 Apache Allura HTTP response splitting
To: dev@allura.apache.org, users@allura.apache.org, announce@apache.org,
 oss-security@lists.openwall.com, Apache Security Team <security@apache.org>

CVE-2018-1319 Apache Allura HTTP response splitting

Severity: Important
Versions Affected: All

Description:
Attackers may craft URLs that cause HTTP response splitting.  If a victim goes
to a maliciously crafted URL, unwanted results may occur including XSS or
service denial for the victim's browsing session.

Mitigation:
Users of Allura should upgrade to Allura 1.8.1 immediately.

Credit:
This issue was discovered by Everardo Padilla Saca
