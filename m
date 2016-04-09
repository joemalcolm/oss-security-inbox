X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["218" "Sunday" "10" "April" "2016" "00:49:22" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<570986F2.5020308@vorlons.info>" "12" "[oss-security] CVE request: cronic - predictable temporary files" nil nil nil "4" "2016040922:49:22" "[oss-security] CVE request: cronic - predictable temporary files" (number mark "U       matthias@vor Apr 10   12/218   " thread-indent "\"[oss-security] CVE request: cronic - predictable temporary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26079 invoked by uid 550); 9 Apr 2016 22:49:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26046 invoked from network); 9 Apr 2016 22:49:34 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460242162;
	bh=2n/6Cck/Hru3m+/oMyCy8S0kr0ALdhRypdmWyY7dA/g=;
	h=To:From:Subject:Date:From;
	b=sZ9Udi08biXGEFi16yRgGgfFU+kYh8Y4BQGS1rTOVVdWYH4T6B46Rn0S4QDZSzho6
	 mZufugM1gFni3JREwKuuk7YvKrn6qoDw5VoNtjhEVWVeyBjz+/hB7s5NOc8UOBRIt8
	 m1HIZswr4FPZZA96+pJQ4KhVJNngIThm/YECFJEQ=
To: oss-security@lists.openwall.com
From: Matthias Geerdsen <matthias@vorlons.info>
Message-ID: <570986F2.5020308@vorlons.info>
Date: Sun, 10 Apr 2016 00:49:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: cronic - predictable temporary files

Hi,

please assign a CVE ID for cronic [1] using predictable names for
temporary files.

Debian bug report:
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=820331>

Cheers
Matthias

[1] <http://habilis.net/cronic/>
