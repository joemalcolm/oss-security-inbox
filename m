X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["590" "Friday" "16" "March" "2018" "09:37:14" "+0100" "Stefan Bodewig" "bodewig@apache.org" "<87woycifgl.fsf@v45346.1blu.de>" "21" "[oss-security] [CVE-2018-1324] Apache Commons Compress denial of service vulnerability" nil nil nil "3" "2018031608:37:14" "[oss-security] [CVE-2018-1324] Apache Commons Compress denial of service vulnerability" (number mark "U       bodewig@apac Mar 16   21/590   " thread-indent "\"[oss-security] [CVE-2018-1324] Apache Commons Compress denial of service vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24282 invoked by uid 550); 16 Mar 2018 11:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1902 invoked from network); 16 Mar 2018 08:37:29 -0000
From: Stefan Bodewig <bodewig@apache.org>
To: Commons Developers List <dev@commons.apache.org>, user@commons.apache.org,
    announce@apache.org
CC: security@commons.apache.org, oss-security@lists.openwall.com
Date: Fri, 16 Mar 2018 09:37:14 +0100
Message-ID: <87woycifgl.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] [CVE-2018-1324] Apache Commons Compress denial of service vulnerability

CVE-2018-1324: Apache Commons Compress denial of service vulnerability

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Commons Compress 1.11 to 1.15

Description:
A specially crafted ZIP archive can be used to cause an infinite loop
inside of Compress' extra field parser used by the ZipFile and
ZipArchiveInputStream classes.  This can be used to mount a denial of
service attack against services that use Compress' zip package.

Mitigation:
Commons Compress users should upgrade to 1.16 or later

Credit:
This issue was discovered by Luis Filipe Nassif.
