X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Friday" "11" "September" "2015" "07:27:21" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<55F2BA99.8090005@canonical.com>" "33" "[oss-security] CVE Request: 2 FreeType issues" nil nil nil "9" "2015091111:27:21" "[oss-security] CVE Request: 2 FreeType issues" (number mark "        marc.deslaur Sep 11   33/963   " thread-indent "\"[oss-security] CVE Request: 2 FreeType issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6063 invoked by uid 550); 11 Sep 2015 11:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6039 invoked from network); 11 Sep 2015 11:27:35 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <55F2BA99.8090005@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Fri, 11 Sep 2015 07:27:21 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: 2 FreeType issues
To: oss-security@lists.openwall.com

Hello,

I don't believe these two FreeType issues have assigned CVEs:

1- Use of uninitialized memory in ps_parser_load_field, t42_parse_font_matrix
and t1_parse_font_matrix

https://savannah.nongnu.org/bugs/?41309
http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=8b281f83e8516535756f92dbf90940ac44bd45e1

https://bugs.launchpad.net/ubuntu/+source/freetype/+bug/1449225
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=798619


2- infinite loop in parse_encoding (t1load.c)

https://savannah.nongnu.org/bugs/index.php?41590
http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=df14e6c0b9592cbb24d5381dfc6106b14f915e75

https://bugs.launchpad.net/ubuntu/+source/freetype/+bug/1492124
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=798620


Could CVEs please be assigned to them?

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
