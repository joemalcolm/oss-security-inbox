X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["987" "Friday" "27" "May" "2016" "08:03:05" "+0200" "Andreas Lehmkuehler" "lehmi@apache.org" "<83a03bcf-f86b-4688-37b5-615c080291d8@apache.org>" "30" "[oss-security] [CVE-2016-2175] Apache PDFBox XML External Entity vulnerability" nil nil nil "5" "2016052706:03:05" "[oss-security] [CVE-2016-2175] Apache PDFBox XML External Entity vulnerability" (number mark "U       lehmi@apache May 27   30/987   " thread-indent "\"[oss-security] [CVE-2016-2175] Apache PDFBox XML External Entity vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7764 invoked by uid 550); 27 May 2016 06:29:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17932 invoked from network); 27 May 2016 06:03:33 -0000
From: Andreas Lehmkuehler <lehmi@apache.org>
To: announce@apache.org, dev@pdfbox.apache.org,
 "users@pdfbox.apache.org" <users@pdfbox.apache.org>, security@apache.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Organization: Apache Software Foundation
Message-ID: <83a03bcf-f86b-4688-37b5-615c080291d8@apache.org>
Date: Fri, 27 May 2016 08:03:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2016-2175] Apache PDFBox XML External Entity vulnerability

CVE-2016-2175: Apache PDFBox XML External Entity vulnerability

Severity: Important


Vendor:
The Apache Software Foundation

Versions Affected:
Apache PDFBox 1.8.0 to 1.8.11
Apache PDFBox 2.0.0
Earlier, unsupported Apache PDFBox versions may be affected as well

Description:
Apache PDFBox parses different XML data within PDF files such as XMP and the 
initialization of the XML parsers did not protect against XML External Entity 
(XXE) vulnerabilities. According to www.owasp.org [1]: "This attack may lead to 
the disclosure of confidential data, denial of service, server side request 
forgery, port scanning from the perspective of the machine where the parser is 
located, and other system impacts."


Mitigation:
Upgrade to Apache PDFBox 1.8.12 respectively 2.0.1

Credit:
This issue was discovered by Arthur Khashaev (https://khashaev.ru), Seulgi Kim, 
Mesut Timur and Microsoft Vulnerability Research.

[1] https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing
