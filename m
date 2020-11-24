X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["867" "Tuesday" "24" "November" "2020" "21:43:38" "+0300" "Dmitry V. Levin" "ldv@altlinux.org" "<20201124184338.GA29068@altlinux.org>" "29" "Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil "11" "2020112418:43:38" "[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" (number mark "U       ldv@altlinux Nov 24   29/867   " thread-indent "\"Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions\"\n") "<20201124182021.GB13107@suse.de>" ("<20201124182021.GB13107@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10131 invoked by uid 550); 24 Nov 2020 19:12:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18063 invoked from network); 24 Nov 2020 18:43:49 -0000
Date: Tue, 24 Nov 2020 21:43:38 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <20201124184338.GA29068@altlinux.org>
References: <20201124182021.GB13107@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201124182021.GB13107@suse.de>
Subject: Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some
 conditions

Hi,

On Tue, Nov 24, 2020 at 07:20:21PM +0100, Marcus Meissner wrote:
> Hi,
> 
> (via IRC, spotted by Foxboron)
> 
> PAM 1.5.0 had a potential auth bypass, if a user did not exist and the root password was
> empty (but root locked down).
> 
> The reporters usecase was spammers pretending to be unknown users with a PAM enabled dovecot.
> 
> This issue affected only pam 1.5.0.

I'd like to note that the issue affects pam_unix module only,
those who use other authentication modules instead of pam_unix
are not effected.

Nevertheless, Linux-PAM 1.5.1 is going to be released shortly
to address this issue.

Just for the record, the bug was introduced by commit
https://github.com/linux-pam/linux-pam/commit/af0faf666c5008e54dfe43684f210e3581ff1bca
and fixed by commit
https://github.com/linux-pam/linux-pam/commit/30fdfb90d9864bcc254a62760aaa149d373fd4eb


-- 
ldv
