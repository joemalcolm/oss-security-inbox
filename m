X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["762" "Thursday" "22" "October" "2015" "12:25:12" "+0200" "Raphael Hertzog" "hertzog@debian.org" "<20151022102512.GA23523@home.ouaza.com>" "24" "[oss-security] CVE Request: invalid curve attack on bouncycastle" nil nil nil "10" "2015102210:25:12" "[oss-security] CVE Request: invalid curve attack on bouncycastle" (number mark "U       hertzog@debi Oct 22   24/762   " thread-indent "\"[oss-security] CVE Request: invalid curve attack on bouncycastle\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1767 invoked by uid 550); 22 Oct 2015 11:02:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15880 invoked from network); 22 Oct 2015 10:25:27 -0000
Date: Thu, 22 Oct 2015 12:25:12 +0200
From: Raphael Hertzog <hertzog@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20151022102512.GA23523@home.ouaza.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Virus-Scanned: clamav-milter 0.98.7 at mail
X-Virus-Status: Clean
Subject: [oss-security] CVE Request: invalid curve attack on bouncycastle

Hello,

bouncycastle versions older than 1.51 are vulnerable to an
invalid curve attack as described in this article:
http://web-in-security.blogspot.ca/2015/09/practical-invalid-curve-attacks.html

The attack allows to extract private keys used in elliptic curve
crytpography with a few thousands queries.

According to upstream developer Peter Dettman, the issue has been fixed
with those two commits:
https://github.com/bcgit/bc-java/commit/5cb2f05
https://github.com/bcgit/bc-java/commit/e25e94a

Could a CVE be assigned to this issue?

Thank you.

PS: Please CC me as I'm not subscribed.
-- 
Raphaël Hertzog ◈ Debian Developer

Support Debian LTS: http://www.freexian.com/services/debian-lts.html
Learn to master Debian: http://debian-handbook.info/get/
