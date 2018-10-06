X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["719" "Saturday" "6" "October" "2018" "11:00:28" "+0200" "Andreas Lehmkuehler" "lehmi@apache.org" "<12424b12-53c8-d4e4-4b93-8bcbc83488ec@apache.org>" "29" "[oss-security] [UPDATE][CVE-2018-11797] DoS vulnerability in Apache PDFBox parser" "^Date:" nil nil "10" "2018100609:00:28" "[oss-security] [UPDATE][CVE-2018-11797] DoS vulnerability in Apache PDFBox parser" (number mark "U       lehmi@apache Oct  6   29/719   " thread-indent "\"[oss-security] [UPDATE][CVE-2018-11797] DoS vulnerability in Apache PDFBox parser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22171 invoked by uid 550); 6 Oct 2018 10:18:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25852 invoked from network); 6 Oct 2018 09:00:45 -0000
Organization: Apache Software Foundation
Message-ID: <12424b12-53c8-d4e4-4b93-8bcbc83488ec@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Date: Sat, 6 Oct 2018 11:00:28 +0200
From: Andreas Lehmkuehler <lehmi@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [UPDATE][CVE-2018-11797] DoS vulnerability in Apache PDFBox parser
To: announce@apache.org, security@apache.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com

[CVE-2018-11797] DoS vulnerability in Apache PDFBox parser

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache PDFBox <= 1.8.15
Apache PDFBox <= 2.0.11
Earlier, unsupported Apache PDFBox versions may be affected as well

Description:
A carefully crafted PDF file can trigger an extremely long
running computation when parsing the page tree.

Mitigation:
Upgrade to Apache PDFBox 1.8.16 respectively 2.0.12

Credit:
This issue was discovered by Shawn Rasheed and Jens Dietrich

Website:
https://pdfbox.apache.org/

Download:
https://pdfbox.apache.org/download.cgi
https://www.apache.org/dist/pdfbox/2.0.12/RELEASE-NOTES.txt
https://www.apache.org/dist/pdfbox/1.8.16/RELEASE-NOTES.txt
