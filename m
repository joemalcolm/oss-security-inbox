X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["264" "Wednesday" "14" "October" "2015" "20:45:38" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<878u751e7h.fsf@mid.deneb.enyo.de>" "7" "[oss-security] CVE-2015-0856: sddm does not prevent access to the KDE crash handler" nil nil nil "10" "2015101418:45:38" "[oss-security] CVE-2015-0856: sddm does not prevent access to the KDE crash handler" (number mark "        fw@deneb.eny Oct 14    7/264   " thread-indent "\"[oss-security] CVE-2015-0856: sddm does not prevent access to the KDE crash handler\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14152 invoked by uid 550); 14 Oct 2015 18:46:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14117 invoked from network); 14 Oct 2015 18:46:01 -0000
Message-ID: <878u751e7h.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Wed, 14 Oct 2015 20:45:38 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0856: sddm does not prevent access to the KDE crash handler
To: oss-security@lists.openwall.com

Pavel Avgustinov discovered that sddm does not disable the KDE crash
handler, and certain themes would allow shell access to the sddm user
as a result in case of a crash.

Upstream fix:

https://github.com/sddm/sddm/commit/4cfed6b0a625593fb43876f04badc4dd99799d86
