X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["426" "Saturday" "9" "May" "2015" "23:40:03" "-0400" "Kash Pande" "kash@tripleback.net" "<554ED313.1090700@tripleback.net>" "14" "[oss-security] openwall phpass fallback mode" nil nil nil "5" "2015051003:40:03" "[oss-security] openwall phpass fallback mode" (number mark "        kash@tripleb May  9   14/426   " thread-indent "\"[oss-security] openwall phpass fallback mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3349 invoked by uid 550); 10 May 2015 03:40:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3313 invoked from network); 10 May 2015 03:39:57 -0000
Message-ID: <554ED313.1090700@tripleback.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Sat, 09 May 2015 23:40:03 -0400
From: Kash Pande <kash@tripleback.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] openwall phpass fallback mode
To: oss-security@lists.openwall.com

http://www.openwall.com/phpass/

This library has an unfortunate consequence when using it in multiple
environments without strong consistent access to one crypto method.. it
will fall back to weaker methods, which breaks the expectations of
security.. Fallback have been assigned CVE here before. As well, it is
an openwall release.

I may be wrong and it could already be assigned one, but I don't see it.

-- 

Kash Pande

