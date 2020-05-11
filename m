X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["994" "Monday" "11" "May" "2020" "14:28:56" "-0700" "Brennan Ashton" "btashton@apache.org" "<77e0eda865a892045c325dea268c0fa92995343e.camel@apache.org>" "33" "[oss-security] [CVE-2020-1939] Apache NuttX optional/example ftpd program NULL pointer bug" nil nil nil "5" "2020051121:28:56" "[oss-security] [CVE-2020-1939] Apache NuttX optional/example ftpd program NULL pointer bug" (number mark "U       btashton@apa May 11   33/994   " thread-indent "\"[oss-security] [CVE-2020-1939] Apache NuttX optional/example ftpd program NULL pointer bug\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1939] Apache NuttX optional/example ftpd program NULL pointer bug" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9578 invoked by uid 550); 12 May 2020 05:22:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12194 invoked from network); 11 May 2020 21:29:15 -0000
Message-ID: <77e0eda865a892045c325dea268c0fa92995343e.camel@apache.org>
From: Brennan Ashton <btashton@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 11 May 2020 14:28:56 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2020-1939] Apache NuttX optional/example ftpd program NULL
 pointer bug

CVE-2020-1939: Apache NuttX optional/example ftpd program NULL pointer
bug

Severity: Important

Vendor:
Apache NuttX (Incubating)

Versions Affected:
6.15 to 8.2 (all pre-date NuttX joining the Apache.org Incubator)

Description:
The Apache NuttX (Incubating) project provides an optional separate
"apps" repository which contains various optional components and
example programs. One of these, ftpd, had a NULL pointer dereference
bug. The NuttX RTOS itself is not affected. Users of the optional apps
repository are affected only if they have enabled ftpd.

Mitigation:
Users of affected versions should upgrade to 9.0.0 or apply the
following patch:
https://patch-diff.githubusercontent.com/raw/apache/incubator-nuttx-apps/pull/10.patch

Credit:
This issue was discovered by Jakub Botwicz of Samsung R&D Poland.

References:
https://bitbucket.org/nuttx/apps-old/issues/15/null-dereference-in-ftp-size-command
https://github.com/apache/incubator-nuttx-apps/pull/10

Regards,
Brennan Ashton

