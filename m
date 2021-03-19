X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["328" "Friday" "19" "March" "2021" "16:32:39" "+0100" "Andreas Lehmkuehler" "lehmi@apache.org" nil "12" "[oss-security] CVE-2021-27906: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading the file" nil nil nil "3" nil nil (number mark "U       lehmi@apache Mar 19   12/328   " thread-indent "\"[oss-security] CVE-2021-27906: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading the file\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-27906: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading the file" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10049 invoked by uid 550); 19 Mar 2021 17:38:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30001 invoked from network); 19 Mar 2021 15:32:54 -0000
From: Andreas Lehmkuehler <lehmi@apache.org>
To: oss-security@lists.openwall.com
Organization: Apache Software Foundation
Message-ID: <7bca690f-e807-8447-d624-45476e9e8711@apache.org>
Date: Fri, 19 Mar 2021 16:32:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-27906: Apache PDFBox: A carefully crafted PDF file can trigger an
 OutOfMemory-Exception while loading the file


Description:

A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading 
the file. This issue affects Apache PDFBox Apache PDFBox version 2.0.22 and 
prior 2.0.x versions.

This issue is being tracked as PDFBOX-5112

Credit:

Apache PDFBox would like to thank Fabian Meumertzheim for reporting this issue
