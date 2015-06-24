X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["744" "Wednesday" "24" "June" "2015" "11:46:51" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20150624094650.GA26654@suse.de>" "26" "[oss-security] OpenVPN hardening patches" nil nil nil "6" "2015062409:46:51" "[oss-security] OpenVPN hardening patches" (number mark "U       krahmer@suse Jun 24   26/744   " thread-indent "\"[oss-security] OpenVPN hardening patches\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8186 invoked by uid 550); 24 Jun 2015 09:47:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7982 invoked from network); 24 Jun 2015 09:47:03 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150624094650.GA26654@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer=2C_Jane_Smithard?= =?utf-8?Q?=2C?= Dilip Upmanyu, Graham
 Norton, HRB 21284 (AG Nuernberg)
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 24 Jun 2015 11:46:51 +0200
From: Sebastian Krahmer <krahmer@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenVPN hardening patches
To: oss-security@lists.openwall.com

Hi

As required per list policy, I am forwarding the patch that
I sent to distros list two weeks ago, as well as to upstream.

It is available here:

https://bugzilla.suse.com/show_bug.cgi?id=934237

I am still discussing some points with upstream, but most of the issues
should have no/little impact; for example the FD_SETSIZE checks are good
to have but mostly appear on client side code that should not outrun
the fdset; or the _exit() in the assert is in place just to ensure
termination in case someone "creates" an non-exit path in the msg(M_FATAL)
function by changing the muting-code or alike.

I am not requesting any CVEs.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

