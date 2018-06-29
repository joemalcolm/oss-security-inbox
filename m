X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["548" "Friday" "29" "June" "2018" "08:23:14" "+0200" "Andreas Lehmkuehler" "lehmi@apache.org" "<637b5a18-f7cc-7e13-e0ea-7d89ab8cc689@apache.org>" "21" "[oss-security] [CVE-2018-8036] DoS (OOM) Vulnerability in Apache PDFBox's AFMParser" nil nil nil "6" "2018062906:23:14" "[oss-security] [CVE-2018-8036] DoS (OOM) Vulnerability in Apache PDFBox's AFMParser" (number mark "U       lehmi@apache Jun 29   21/548   " thread-indent "\"[oss-security] [CVE-2018-8036] DoS (OOM) Vulnerability in Apache PDFBox's AFMParser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13603 invoked by uid 550); 29 Jun 2018 09:34:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23926 invoked from network); 29 Jun 2018 06:23:30 -0000
From: Andreas Lehmkuehler <lehmi@apache.org>
To: announce@apache.org, dev@pdfbox.apache.org,
 "users@pdfbox.apache.org" <users@pdfbox.apache.org>, security@apache.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Organization: Apache Software Foundation
Message-ID: <637b5a18-f7cc-7e13-e0ea-7d89ab8cc689@apache.org>
Date: Fri, 29 Jun 2018 08:23:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2018-8036] DoS (OOM) Vulnerability in Apache PDFBox's AFMParser

[CVE-2018-8036] DoS (OOM) Vulnerability in Apache PDFBox's AFMParser

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache PDFBox 1.8.0 to 1.8.14
Apache PDFBox 2.0.0 to 2.0.10
Earlier, unsupported Apache PDFBox versions may be affected as well

Description:
A carefully crafted (or fuzzed) file can trigger an infinite loop which leads to 
an out of memory exception in Apache PDFBox's AFMParser.

Mitigation:
Upgrade to Apache PDFBox 1.8.15 respectively 2.0.11

Credit:
This issue was discovered by Tobias Ospelt
