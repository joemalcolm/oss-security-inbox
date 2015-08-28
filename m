X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["640" "Friday" "28" "August" "2015" "10:05:47" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55E0165B.1020601@redhat.com>" "21" "[oss-security] CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF" nil nil nil "8" "2015082808:05:47" "[oss-security] CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF" (number mark "U       fweimer@redh Aug 28   21/640   " thread-indent "\"[oss-security] CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5853 invoked by uid 550); 28 Aug 2015 08:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5829 invoked from network); 28 Aug 2015 08:06:01 -0000
To: Assign a CVE Identifier <cve-assign@mitre.org>
Cc: oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <55E0165B.1020601@redhat.com>
Date: Fri, 28 Aug 2015 10:05:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] CVE request: XSS vulnerability in jsoup related to incomplete tags at
 EOF

Described in this pull request by Tommy Johansen:

“
We use Hibernate Validator (HV) and the @SafeHtlm annotation to validate
input from users. During a security review we discovered that an unsafe
XSS vector slipped by the validator. During debugging HV we discovered
that the source of the problem was related to how Jsoup handled tags
without a closing > when reaching EOF.
”

<https://github.com/jhy/jsoup/pull/582>

Additional references:

<https://hibernate.atlassian.net/browse/HV-1012>
<https://issues.jboss.org/browse/WFLY-5223>

Would you please a CVE ID to this issue?  Thanks.

-- 
Florian Weimer / Red Hat Product Security
