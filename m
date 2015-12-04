X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["245" "Friday" "4" "December" "2015" "17:29:15" "+0100" "mcatanzaro" "mcatanzaro@igalia.com" "<a7241aee76789bbf0fbb9b6cb71a3088@igalia.com>" "10" "[oss-security] CVE Request: Shotwell does not verify TLS certificates" nil nil nil "12" "2015120416:29:15" "[oss-security] CVE Request: Shotwell does not verify TLS certificates" (number mark "U       mcatanzaro@i Dec  4   10/245   " thread-indent "\"[oss-security] CVE Request: Shotwell does not verify TLS certificates\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22261 invoked by uid 550); 4 Dec 2015 16:29:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22243 invoked from network); 4 Dec 2015 16:29:35 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2D5CwAkvmFW/5tjdVteGQEDBwEIAQICAYMHU0cIH6pRkwNQCoEUEg+HFzoSAQEBAQEBAYEKhF4VVRARAiYCeogrAQifSI9wkRcEgQGPd4JQgUQFhhSQTYFjgmVliAgHgVuEQ4k5jRYoCDOEBT00AYVuAQEB
X-IPAS-Result: A2D5CwAkvmFW/5tjdVteGQEDBwEIAQICAYMHU0cIH6pRkwNQCoEUEg+HFzoSAQEBAQEBAYEKhF4VVRARAiYCeogrAQifSI9wkRcEgQGPd4JQgUQFhhSQTYFjgmVliAgHgVuEQ4k5jRYoCDOEBT00AYVuAQEB
X-IronPort-AV: E=Sophos;i="5.20,380,1444687200"; 
   d="scan'208";a="56357898"
To: oss-security@lists.openwall.com
X-PHP-Originating-Script: 33:rcmail.php
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 04 Dec 2015 17:29:15 +0100
From: mcatanzaro <mcatanzaro@igalia.com>
Message-ID: <a7241aee76789bbf0fbb9b6cb71a3088@igalia.com>
X-Sender: mcatanzaro@igalia.com
User-Agent: Roundcube Webmail/0.9.5
Subject: [oss-security] CVE Request: Shotwell does not verify TLS certificates

Hi,

It was found that Shotwell does not perform TLS certificate verification 
when publishing photos to external services (e.g. Facebook, Flickr):

https://bugzilla.gnome.org/show_bug.cgi?id=754488

Please assign a CVE for this issue.

Michael
