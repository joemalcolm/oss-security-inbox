X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1199" "Friday" "3" "July" "2015" "14:15:46" "+0200" "Hector Marco-Gisbert" "hecmargi@upv.es" "<55967CF2.8040502@upv.es>" "38" "[oss-security] Waiting Mitre response: AMD Bulldozer, Linux ASLR mmap and Offset2lib" nil nil nil "7" "2015070312:15:46" "[oss-security] Waiting Mitre response: AMD Bulldozer, Linux ASLR mmap and Offset2lib" (number mark "        hecmargi@upv Jul  3   38/1199  " thread-indent "\"[oss-security] Waiting Mitre response: AMD Bulldozer, Linux ASLR mmap and Offset2lib\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1683 invoked by uid 550); 3 Jul 2015 12:18:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1599 invoked from network); 3 Jul 2015 12:18:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1435925869; bh=Z7MkTU7wuOm8J8zf1Pcqof/amkLOkuJqud4aqgZGygQ=;
	h=Date:From:To:CC:Subject;
	b=Ca/1IqTHXiFQaUj5cLzLUHDQxSi4DegNGL8M7kVK2TpiGaa57uC+b4NXy8OVER/KV
	 EayZO/ye1/zCgFqhjDZHuFmTiszGOISYM6UKFDRlIIFy2O3poEoaCZAAqDogd0WEa6
	 rsAnQ13ndF75ehUG8BoxSm03l9BC3MvOJ2iM8A4AXnH3RKItQ8yBt4xRx1ixh7dLDJ
	 i2t80bT1gRuHVS7olCIU+psp+qaWE4GWN0FebdjeLr9e/DjLebYeDU2ZDV5gE+BMKK
	 WkUtrLUwx7hM4BXLddT3mRj1P/m4Bt9sQLTob0UHWIMrzB3R+yyTIc1CJmYHGG6AwL
	 vEBOlrPD2BAqw==
Message-ID: <55967CF2.8040502@upv.es>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
CC: oss-security@lists.openwall.com, fulldisclosure@seclists.org
Date: Fri, 03 Jul 2015 14:15:46 +0200
From: Hector Marco-Gisbert <hecmargi@upv.es>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Waiting Mitre response: AMD Bulldozer, Linux ASLR mmap and Offset2lib
To: Assign a CVE Identifier <cve-assign@mitre.org>

Hello Mitre,

We are still waiting a response about the following security issues:

1)
    Title    : AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%.
    Date     : March 2015
    Advisory : 
http://hmarco.org/bugs/AMD-Bulldozer-linux-ASLR-weakness-reducing-mmaped-files-by-eight.html
    Patch    : 
http://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?id=4e26d11f52684dc8b1632a8cfe450cb5197a8464 


2) Title    : Linux ASLR mmap weakness: Reducing entropy by half
    Date     : March 2015
    Advisory : http://hmarco.org/bugs/linux-ASLR-reducing-mmap-by-half.html

3) Title    : Offset2lib: bypassing full ASLR on 64bit Linux
    Date     : November 2014
    Advisory : http://cybersecurity.upv.es/attacks/offset2lib/offset2lib.html
    Path     : 
https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable/+/d1fd836dcf00d2028c700c7e44d2c23404062c90
    Note     : We are not sure whether it is a CVE or CWE.



Could you please assign a cve number or say something about them ?



Thank you,
Hector.


-- 
Hector Marco-Gisbert @ http://hmarco.org/
Cyber Security Researcher @ http://cybersecurity.upv.es
Universitat Politècnica de València (Spain)
