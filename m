X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["486" "Friday" "11" "November" "2016" "19:37:44" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20161111183744.nwribaatdctrb3kv@jwilk.net>" "11" "[oss-security] Pipelight: broken validation of dependency installer signature" nil nil nil "11" "2016111118:37:44" "[oss-security] Pipelight: broken validation of dependency installer signature" (number mark "U       jwilk@jwilk. Nov 11   11/486   " thread-indent "\"[oss-security] Pipelight: broken validation of dependency installer signature\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11723 invoked by uid 550); 11 Nov 2016 18:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11688 invoked from network); 11 Nov 2016 18:37:59 -0000
Date: Fri, 11 Nov 2016 19:37:44 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20161111183744.nwribaatdctrb3kv@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: NeoMutt/20161104 (1.7.1)
X-Ovh-Tracer-Id: 1151514131322427302
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrtdeigdduudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: [oss-security] Pipelight: broken validation of dependency installer signature

Pipelight <http://pipelight.net/cms/about.html> is a wrapper for using Windows 
plugins in Linux browsers. The software comes with an option to update the 
install-dependency script, which contains the plugin database. The downloaded 
code was supposed to be verified against a GPG key, but the verification code 
was broken.

Bug report: https://bugs.launchpad.net/pipelight/+bug/1632502
Committed fix: https://bitbucket.org/mmueller2012/pipelight/commits/c9fc745d46be

-- 
Jakub Wilk
