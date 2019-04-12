X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["538" "Friday" "12" "April" "2019" "06:44:41" "+0200" "Andreas Lehmkuehler" "andreas@lehmi.de" nil "24" nil nil nil nil "4" nil nil (number mark "U       andreas@lehm Apr 12   24/538   " thread-indent "\"[oss-security] [SECURITY] CVE-2019-0228 Apache PDFBox XML External Entity vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2019-0228 Apache PDFBox XML External Entity vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26403 invoked by uid 550); 12 Apr 2019 10:39:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26203 invoked from network); 12 Apr 2019 04:44:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1555044282;
	s=strato-dkim-0002; d=lehmi.de;
	h=Date:Message-ID:To:Subject:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
	Subject:Sender;
	bh=8naCJIHFaVBNJzjil+6COavXt5ruUqS3q9Cj9sQ3KxE=;
	b=BRlFm1nPrzAYMhS3U2jRp0LdjrpMlE+bDli5uXVFqKx6hZCB7NbDO51EnTGJxvD/bv
	qDuLKDMmjuQWKnWWKsVWW6hK6AF7E4j2zxUjX+se6b8GQKAtoqk7zblT/nz7Y8NRJlRh
	SKlittuSGNkSqOzOG5vyiQFI+fTGivlJK23uqgQxgrc/jcFkKOcp3vm28pW5faJjYqV/
	23daIpb4qpPoxgbx7YGFChiv6uWh+uAL2HWMMJPHUL4y0bJzr3x+Fha2xv3/UZf/F2lP
	qoT8uDnXWccc4XrEkiDO5T8THwDEmYR2Mnoqw5ixqOwL+IhsNXfq5xHH2JpgXbwGIXNs
	MegQ==
X-RZG-AUTH: ":LWIAZ0WpaN8UY5o8XRz0jOyrHsdUGPvBRfQHLwW1oA/8m8QyXOKQgEO8q2fDxeHj9Q=="
X-RZG-CLASS-ID: mo00
From: Andreas Lehmkuehler <andreas@lehmi.de>
To: oss-security@lists.openwall.com
Message-ID: <31ac7d5a-c4fa-44f2-21d5-139851806bb0@lehmi.de>
Date: Fri, 12 Apr 2019 06:44:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2019-0228 Apache PDFBox XML External Entity
 vulnerability

CVE-2019-0228: Apache PDFBox XML External Entity vulnerability

Severity: Important


Vendor:
The Apache Software Foundation

Versions Affected:
Apache PDFBox 2.0.14


Description:
Apache PDFBox 2.0.14 does not properly initialize the XML parser, which allows 
context-dependent attackers to conduct XML External Entity (XXE) attacks via a 
crafted XFDF.

Mitigation:
Upgrade to Apache PDFBox 2.0.15

Credit:
This issue was discovered by Kurt Boberg from DocuSign

[1] https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing
