X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1117" "Sunday" "16" "April" "2017" "19:06:07" "+0200" "Damien Regad" "dregad@mantisbt.org" "<od089o$htq$1@blaine.gmane.org>" "31" "[oss-security] Re: MantisBT - Full admin access vulnerability - CVE-2017-7615" nil nil nil "4" "2017041617:06:07" "[oss-security] Re: MantisBT - Full admin access vulnerability - CVE-2017-7615" (number mark "U       dregad@manti Apr 16   31/1117  " thread-indent "\"[oss-security] Re: MantisBT - Full admin access vulnerability - CVE-2017-7615\"\n") "<7a824313c433c54a212afb25498e8556581@guerrillamail.com>" ("<7a824313c433c54a212afb25498e8556581@guerrillamail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32611 invoked by uid 550); 16 Apr 2017 17:34:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15395 invoked from network); 16 Apr 2017 17:06:29 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Sun, 16 Apr 2017 19:06:07 +0200
Message-ID: <od089o$htq$1@blaine.gmane.org>
References: <7a824313c433c54a212afb25498e8556581@guerrillamail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
In-Reply-To: <7a824313c433c54a212afb25498e8556581@guerrillamail.com>
Subject: [oss-security] Re: MantisBT - Full admin access vulnerability - CVE-2017-7615

> A vulnerability exists in MantisBT where any users password can be reset:

This is registered as CVE-2017-7615. It was discovered and reported to
us by John Page aka hyp3rlinx from ApparitionSec
(http://hyp3rlinx.altervista.org).

We didn't post it here before, as due to the severity of the issue we
wanted to give the opportunity to our users to patch their systems
before full public disclosure, so we notified them via private e-mail.

Unfortunately someone decided to post it here (anonymously, too...) in
spite of our request to keep the embargo, so here's the rest of the story.

The issue will be fixed in versions 1.3.10, 2.2.4, and 2.3.1, to be
released shortly.

Until then, all MantisBT administrators are advised to patch their
system immediately. Fixes are availble from our GitHub repository:

- 2.3.x https://github.com/mantisbt/mantisbt/commit/cfbc5e54
- 2.2.x https://github.com/mantisbt/mantisbt/commit/46880ef6
- 1.3.x https://github.com/mantisbt/mantisbt/commit/14c61a8c

MantisBT issue tracker reference:
https://mantisbt.org/bugs/view.php?id=22690

Best regards
D. Regad
MantisBT developer


