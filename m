X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["438" "Monday" "18" "September" "2017" "13:18:46" "-0400" "Luciano Bello" "luciano@debian.org" "<cf41fea5-4180-fb43-b990-bed8a8c0e31c@debian.org>" "11" "[oss-security] [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow" nil nil nil "9" "2017091817:18:46" "[oss-security] [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow" (number mark "U       luciano@debi Sep 18   11/438   " thread-indent "\"[oss-security] [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18050 invoked by uid 550); 18 Sep 2017 17:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13478 invoked from network); 18 Sep 2017 17:18:59 -0000
To: oss-security@lists.openwall.com
From: Luciano Bello <luciano@debian.org>
Cc: team@security.debian.org, hosein.askari@aol.com
Message-ID: <cf41fea5-4180-fb43-b990-bed8a8c0e31c@debian.org>
Date: Mon, 18 Sep 2017 13:18:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - stanza.websitewelcome.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - debian.org
X-BWhitelist: no
X-Source-IP: 74.71.109.196
X-Exim-ID: 1dtzh1-001WC4-RU
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cpe-74-71-109-196.nyc.res.rr.com ([192.168.1.21]) [74.71.109.196]:34688
X-Source-Auth: i@lucianobello.com.ar
X-Email-Count: 1
X-Source-Cap: bHVjaWFub2I7Z3JhYmVudDtzdGFuemEud2Vic2l0ZXdlbGNvbWUuY29t
X-Local-Domain: no
Subject: [oss-security] [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow

Hi there,
     I'm trying to reproduce this, to check the affected versions
https://www.exploit-db.com/exploits/42652/
     I tried in Debian Sid (4.2.6-1) and Debian Stretch (3.4.4-3) and I
was not able to reproduce the issue. Specially for the later, the fact
that tcprewrite exists normally is puzzling. Hosein (the PoC author)
claims to make it work in 3.4.4 (on Ubuntu 16.04).

Can else somebody confirm this issue?

Thanks, luciano
