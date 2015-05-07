X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["372" "Thursday" "7" "May" "2015" "22:45:33" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87d22c2k2a.fsf@mid.deneb.enyo.de>" "10" "[oss-security] CVE-2015-0847 in nbd-server" nil nil nil "5" "2015050720:45:33" "[oss-security] CVE-2015-0847 in nbd-server" (number mark "        fw@deneb.eny May  7   10/372   " thread-indent "\"[oss-security] CVE-2015-0847 in nbd-server\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30520 invoked by uid 550); 7 May 2015 20:45:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30485 invoked from network); 7 May 2015 20:45:45 -0000
Message-ID: <87d22c2k2a.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 May 2015 22:45:33 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0847 in nbd-server
To: oss-security@lists.openwall.com

nbd-server uses signal handlers incorrectly, which leads to a denial
of service vulnerability.  We have assigned CVE-2015-0847 to this
vulnerability.

This was first reported to the Debian security team by Tuomas R=E4s=E4nen,
but we did not think this warranted an embargo.

More details are available upstream:

  <http://sourceforge.net/p/nbd/mailman/message/34091218/>
