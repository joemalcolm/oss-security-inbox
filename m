X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["607" "Tuesday" "24" "November" "2020" "19:20:21" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201124182021.GB13107@suse.de>" "20" "[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil "11" "2020112418:20:21" "[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" (number mark "U       meissner@sus Nov 24   20/607   " thread-indent "\"[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5204 invoked by uid 550); 24 Nov 2020 17:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5168 invoked from network); 24 Nov 2020 17:20:42 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 24 Nov 2020 19:20:21 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20201124182021.GB13107@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions

Hi,

(via IRC, spotted by Foxboron)

PAM 1.5.0 had a potential auth bypass, if a user did not exist and the root password was
empty (but root locked down).

The reporters usecase was spammers pretending to be unknown users with a PAM enabled dovecot.

This issue affected only pam 1.5.0.

News entry:
https://github.com/linux-pam/linux-pam/commit/28b8c7045ac8ea4ea080bce02a2df9e3b9e98f06

CVE-2020-27780

github issue reporting the problem: https://github.com/linux-pam/linux-pam/issues/284
Fixing commit: https://github.com/linux-pam/linux-pam/commit/af0faf666c5008e54dfe43684f210e3581ff1bca

Ciao, Marcus
