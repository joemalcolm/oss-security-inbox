X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["640" "Tuesday" "15" "December" "2015" "12:49:55" "+0100" "Hector Marco-Gisbert" "hecmargi@upv.es" "<566FFE63.9040201@upv.es>" "21" "[oss-security] Back to 28: Grub2 Authentication Bypass 0-Day [CVE-2015-8370]" nil nil nil "12" "2015121511:49:55" "[oss-security] Back to 28: Grub2 Authentication Bypass 0-Day [CVE-2015-8370]" (number mark "U       hecmargi@upv Dec 15   21/640   " thread-indent "\"[oss-security] Back to 28: Grub2 Authentication Bypass 0-Day [CVE-2015-8370]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7584 invoked by uid 550); 15 Dec 2015 11:50:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7495 invoked from network); 15 Dec 2015 11:50:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1450180199; bh=Ea6uzR67i44IJ+FthN4j4+xAFY/EAdTi9t26/uaQsoo=;
	h=To:From:Subject:Date;
	b=JjTOgHqvjeAclk/KGaaBsapUO+p1T8NmSfHjr2iZMRLKHZmPqJ3XmkLJZPLAnONMb
	 eZgLoTJbyz4r89omvB2jlBiY6ocZhRP5NFfX9szRqECzV5uRodJGFIp8JcnZwy96hu
	 hKX3TjK9fabiKJcOzbcl6x9QAXiVpHk7d9cg3L+N0R2qujBPmREl/vPnwEpFs/qEWQ
	 82FNLegxr2s4ZOgPQpE3caKeXxoBaZRG9bh2fvMalnYY8cXCKTVFZuCaplrIQgHtds
	 /36wVZhTG1a6Akq6tdrV9cIZmZekjTc4cCoWTt3t1GtILxTQ1CnUEUXdHy7b4JcCJc
	 d3lK4S8Zu5xuQ==
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
        bugs@securitytracker.com, fulldisclosure@seclists.org,
        full-disclosure@lists.grok.org.uk
From: Hector Marco-Gisbert <hecmargi@upv.es>
Message-ID: <566FFE63.9040201@upv.es>
Date: Tue, 15 Dec 2015 12:49:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Back to 28: Grub2 Authentication Bypass 0-Day [CVE-2015-8370]

Hi everyone,

A vulnerability in Grub2 (Back to 28) has been found. Versions from 1.98
(December, 2009) to 2.02 (December, 2015) are affected. The vulnerability can be 
exploited under certain circumstances, allowing local attackers to bypass any 
kind of authentication (plain or hashed passwords). And so, the attacker may 
take control of the computer.


More details at:
http://hmarco.org/bugs/CVE-2015-8370-Grub2-authentication-bypass.html


Regards,
Hector Marco & Ismael Ripoll.


-- 
Dr. Hector Marco-Gisbert @ http://hmarco.org/
Cyber Security Researcher @ http://cybersecurity.upv.es
Universitat Politècnica de València (Spain)
