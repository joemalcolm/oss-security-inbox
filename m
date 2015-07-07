X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["502" "Tuesday" "7" "July" "2015" "14:18:27" "+0200" "Stefan Castille" "stefan.castille@bonnierdigital.se" "<559BC393.5000602@bonnierdigital.se>" "18" "[oss-security] CVE request CSRF in sogo" nil nil nil "7" "2015070712:18:27" "[oss-security] CVE request CSRF in sogo" (number mark "        stefan.casti Jul  7   18/502   " thread-indent "\"[oss-security] CVE request CSRF in sogo\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5381 invoked by uid 550); 7 Jul 2015 12:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24183 invoked from network); 7 Jul 2015 12:18:40 -0000
Message-ID: <559BC393.5000602@bonnierdigital.se>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.41.80.170]
X-ClientProxiedBy: EX11.bondom.bonnier.se (172.29.192.31) To
 EX11.bondom.bonnier.se (172.29.192.31)
Date: Tue, 7 Jul 2015 14:18:27 +0200
From: Stefan Castille <stefan.castille@bonnierdigital.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request CSRF in sogo
To: <oss-security@lists.openwall.com>

Hej,

I would like to request a CVE for a CSRF vulnerability in sogo, the open
groupware platform.

site: www.sogo.nu
Previously requested: no
Type: CSRF
Affected versions: up till 2.3.0 (current)
Description: The application does not protect against CSRF attacks for
most of its functions. Only change password seems to have some
protection. But functions such as sending email, setting up mail forward
and everything else is not protected.

http://www.sogo.nu/bugs/view.php?id=3246

Stefan Castille

