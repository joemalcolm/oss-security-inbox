X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["317" "Friday" "20" "March" "2015" "20:35:59" "+0100" "Andrea Palazzo" "andrea.palazzo@truel.it" "<550C769F.5010801@truel.it>" "13" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "3" "2015032019:35:59" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        andrea.palaz Mar 20   13/317   " thread-indent "\"[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5362 invoked by uid 550); 20 Mar 2015 19:49:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26052 invoked from network); 20 Mar 2015 19:36:11 -0000
Message-ID: <550C769F.5010801@truel.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv-hp9.netsons.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - truel.it
X-Get-Message-Sender-Via: srv-hp9.netsons.net: authenticated_id: info@truel.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Date: Fri, 20 Mar 2015 20:35:59 +0100
From: Andrea Palazzo <andrea.palazzo@truel.it>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()
To: oss-security@lists.openwall.com

Hi everyone,
I'd like to request a CVE for the PHP Sec Bug #69085.

Description:
SoapClient's __call() method is prone to a type confusion vulnerability 
which can be used to gain remote code execution through unsafe 
unserialize() calls.

Info:
https://bugs.php.net/bug.php?id=69085

Thank you, best regards,
Andrea
