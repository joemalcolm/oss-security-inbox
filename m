X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Friday" "27" "March" "2015" "13:11:41" "+0100" "Hector Marco" "hecmargi@upv.es" "<551548FD.8030700@upv.es>" "32" "[oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%." nil nil nil "3" "2015032712:11:41" "[oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%." (number mark "        hecmargi@upv Mar 27   32/905   " thread-indent "\"[oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7586 invoked by uid 550); 27 Mar 2015 12:12:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7522 invoked from network); 27 Mar 2015 12:11:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1427458304; bh=fXHVA36L4Co7jj8cByHoIB1kzJ7MdxQlEhqHXJiJLCM=;
	h=Date:From:To:CC:Subject;
	b=kFI4mrjYxJ9EnIYzbP88FusOtXse4B3+iXHUtBfp5Jmh+l1DwYbFeLO7vMzSKPuLP
	 +1NPbjA7LKwRBl0hA+ao8XZg5RcHHIpkD+qLFnvijNqp5rcPcxyLvLAaLwJUl4l6o/
	 Jmi2VAoaB9WMnIRLRETbe9nNePMpRte1yyFYaW9zZTt2NeVXR9Evd4X5nlAdN3wkrM
	 2wmiJRir1Z0+RCeSxfRy815YWayZjj/+MNM6Rurfm1c1jbSwpw+BbRmcUuhpPv/KuZ
	 Q07xCN4eTTZ7pkVECs1CK22zOGeVYc3rj6qR6jacmPiMXwKa3h3EmUL7kILRyFZly8
	 4KucTjmxIwFxg==
Message-ID: <551548FD.8030700@upv.es>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
CC: oss-security@lists.openwall.com, Ismael Ripoll <iripoll@disca.upv.es>
Date: Fri, 27 Mar 2015 13:11:41 +0100
From: Hector Marco <hecmargi@upv.es>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy
 by 87.5%.
To: Assign a CVE Identifier <cve-assign@mitre.org>

Hi,

A bug in Linux ASLR implementation which affects some AMD processors has been 
found. The issue affects to all Linux process even if they are not using shared 
libraries (statically compiled). Grsecurity/PaX is also affected.

The total entropy for the VVAR/VDSO, mmapped files and libraries of a processes 
are reduced by eight. The number of possible locations where the mapped areas 
can be placed are reduced by 87.5%.

On 32-bit systems, for example, the entropy for libraries is reduced from 28 to 
25, which means that libraries only have 32 different places where they can be 
loaded.


Details at:
http://hmarco.org/bugs/AMD-Bulldozer-linux-ASLR-weakness-reducing-mmaped-files-by-eight.html


Link patch submission:
https://lkml.org/lkml/2015/3/27/252


Could you please assign a CVE-ID for this?



Hector Marco.
http://hmarco.org

Cyber-security researcher at
http://cybersecurity.upv.es/
