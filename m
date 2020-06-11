X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1133" "Thursday" "11" "June" "2020" "19:35:57" "+0100" "Ian Jackson" "ijackson@chiark.greenend.org.uk" "<24290.31117.921352.498399@chiark.greenend.org.uk>" "28" "[oss-security] adns (dns resolver library) multiple vulns" "^Date:" nil nil "6" "2020061118:35:57" "[oss-security] adns (dns resolver library) multiple vulns" (number mark "U       ijackson@chi Jun 11   28/1133  " thread-indent "\"[oss-security] adns (dns resolver library) multiple vulns\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] adns (dns resolver library) multiple vulns" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8133 invoked by uid 550); 11 Jun 2020 19:47:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19656 invoked from network); 11 Jun 2020 18:36:10 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <24290.31117.921352.498399@chiark.greenend.org.uk>
X-Mailer: VM 8.2.0b under 24.4.1 (i586-pc-linux-gnu)
Date: Thu, 11 Jun 2020 19:35:57 +0100
From: Ian Jackson <ijackson@chiark.greenend.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] adns (dns resolver library) multiple vulns
To: oss-security@lists.openwall.com 

Hi.  I'm the upstream maintainer for adns.  There were outstanding
security problems which I have sat on for far too long, but I have now
finally dealt with them properly.  My apologies.

The fixes have incorporated in adns 1.5.2 and 1.6.0.  See the release
announcement here:
  https://www.chiark.greenend.org.uk/pipermail/adns-announce/2020/000004.html

If you prefer to apply specific patches, the relevant commits are
in my git repository:
  https://www.chiark.greenend.org.uk/ucgi/~ianmdlvl/git/adns.git/
  https://www.chiark.greenend.org.uk/ucgi/~ianmdlvl/githttp/adns.git
in this commit range
  2f6e879e0fca1715d5c5946bcedb4f821ce64d77..bb4e05849170034447d60a6f7cb71d5f255b0ecc
(which you will find is covered by the signed tag adns-1.5.2).

The most serious problems are remote code execution, within the
adns-using application, exploitable by the local recursive resolver.

Thanks for your attention.

Ian.

-- 
Ian Jackson <ijackson@chiark.greenend.org.uk>   These opinions are my own.  

Pronouns: they/he.  If I emailed you from @fyvzl.net or @evade.org.uk,
that is a private address which bypasses my fierce spamfilter.
