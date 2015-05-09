X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["815" "Sunday" "10" "May" "2015" "00:22:30" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20150509222230.GA1268@jwilk.net>" "22" "[oss-security] CVE requests: didjvu, pdf2djvu: insecure use of /tmp" nil nil nil "5" "2015050922:22:30" "[oss-security] CVE requests: didjvu, pdf2djvu: insecure use of /tmp" (number mark "        jwilk@jwilk. May 10   22/815   " thread-indent "\"[oss-security] CVE requests: didjvu, pdf2djvu: insecure use of /tmp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9434 invoked by uid 550); 9 May 2015 22:22:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9413 invoked from network); 9 May 2015 22:22:46 -0000
Message-ID: <20150509222230.GA1268@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Ovh-Tracer-Id: 9847402060497016743
X-Ovh-Remote: 5.172.247.204 (ip-5-172-247-204.free.aero2.net.pl)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrleefucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrleefucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Date: Sun, 10 May 2015 00:22:30 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE requests: didjvu, pdf2djvu: insecure use of /tmp
To: oss-security@lists.openwall.com

didjvu and pdf2djvu are DjVu encoders that both use c44 (a command-line 
IW44 encoder, part of DjVuLibre) under the hood. More precisely, this is 
what they do:

* create a unique temporary file directly in /tmp (or in $TMPDIR)
* pass name of this file to c44 as the output file name

Unfortunately, it turns out that c44 deletes the output file, and then 
creates a new one under the same name (without O_EXCL). This opens a 
race window, during which malicious user could their own file under this 
name.

The bugs were fixed in didjvu 0.4 and pdf2djvu 0.7.21.
Please assign CVEs to these vulnerabilities.

References:
https://bitbucket.org/jwilk/didjvu/issue/8
https://bitbucket.org/jwilk/pdf2djvu/issue/103
http://sourceforge.net/p/djvu/djvulibre-git/ci/release.3.5.27.1/tree/tools/c44.cpp#l769

-- 
Jakub Wilk
