X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2480" "Monday" "1" "January" "2018" "11:35:46" "+0100" "Andrea Pescetti" "pescetti@apache.org" "<397dc1a9-c8dc-7f26-d305-73db32044fd9@apache.org>" "62" "[oss-security] Apache OpenOffice 4.1.4 - fixes CVE-2017-3157 CVE-2017-9806 CVE-2017-12607 CVE-2017-12608" "^Cc:" nil nil "1" "2018010110:35:46" "[oss-security] Apache OpenOffice 4.1.4 - fixes CVE-2017-3157 CVE-2017-9806 CVE-2017-12607 CVE-2017-12608" (number mark "        pescetti@apa Jan  1   62/2480  " thread-indent "\"[oss-security] Apache OpenOffice 4.1.4 - fixes CVE-2017-3157 CVE-2017-9806 CVE-2017-12607 CVE-2017-12608\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8062 invoked by uid 550); 1 Jan 2018 14:07:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27998 invoked from network); 1 Jan 2018 10:36:08 -0000
Message-ID: <397dc1a9-c8dc-7f26-d305-73db32044fd9@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Mon, 1 Jan 2018 11:35:46 +0100
From: Andrea Pescetti <pescetti@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Apache OpenOffice 4.1.4 - fixes CVE-2017-3157 CVE-2017-9806
 CVE-2017-12607 CVE-2017-12608

(I'm not subscribed to the list, so please CC me when replying, thanks)

Apache OpenOffice 4.1.5 was released on 30 Dec 2017.

- No security vulnerabilities fixed in this release; listed here just to 
avoid confusion.

Apache OpenOffice 4.1.4 was released on 19 Oct 2017.

- This release contained 4 security fixes that had not been reported to 
this list at release time; they are listed below.


## 1. CVE-2017-3157: Arbitrary file disclosure in Calc and Writer

By exploiting the way OpenOffice renders embedded objects, an attacker 
could craft a document that allows reading in a file from the user's 
filesystem. Information could be retrieved by the attacker by, e.g., 
using hidden sections to store the information, tricking the user into 
saving the document and convincing the user to send the document back to 
the attacker.

The vulnerability is mitigated by the need for the attacker to know the 
precise file path in the target system, and the need to trick the user 
into saving the document and sending it back.

Thanks to Ben Hayak for reporting this issue.


## 2. CVE-2017-9806: Out-of-Bounds Write in Writer's WW8Fonts Constructor

A vulnerability in the OpenOffice Writer DOC file parser, and 
specifically in the WW8Fonts Constructor, allows attackers to craft 
malicious documents that cause denial of service (memory corruption and 
application crash) potentially resulting in arbitrary code execution.

Thanks to Marcin 'Icewall' Noga of Cisco Talos for discovering this issue.


## 3. CVE-2017-12607: Out-of-Bounds Write in Impress' PPT Filter

A vulnerability in OpenOffice's PPT file parser, and specifically in 
PPTStyleSheet, allows attackers to craft malicious documents that cause 
denial of service (memory corruption and application crash) potentially 
resulting in arbitrary code execution.

Thanks to Marcin 'Icewall' Noga of Cisco Talos for discovering this issue.


## 4. CVE-2017-12608: Out-of-Bounds Write in Writer's ImportOldFormatStyles

A vulnerability in OpenOffice Writer DOC file parser, and specifically 
in ImportOldFormatStyles, allows attackers to craft malicious documents 
that cause denial of service (memory corruption and application crash) 
potentially resulting in arbitrary code execution.

Thanks to Marcin 'Icewall' Noga of Cisco Talos for discovering this issue.


See https://www.openoffice.org/security/bulletin.html for more information.

Posted by Andrea Pescetti on behalf of the Apache OpenOffice Security Team
