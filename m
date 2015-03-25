X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["546" "Wednesday" "25" "March" "2015" "13:54:38" "+0100" "Sebastian Krahmer" "krahmer@suse.de" "<20150325125438.GB3795@suse.de>" "21" "[oss-security] CVS-Request: realmd code execution/auth bypass" nil nil nil "3" "2015032512:54:38" "[oss-security] CVS-Request: realmd code execution/auth bypass" (number mark "        krahmer@suse Mar 25   21/546   " thread-indent "\"[oss-security] CVS-Request: realmd code execution/auth bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21877 invoked by uid 550); 25 Mar 2015 12:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21833 invoked from network); 25 Mar 2015 12:54:50 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150325125438.GB3795@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer=2C_Jane_Smithard=2C_Jennife?= =?utf-8?Q?r?= Guild, Dilip
 Upmanyu, Graham Norton, HRB 21284 (AG Nuernberg)
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 25 Mar 2015 13:54:38 +0100
From: Sebastian Krahmer <krahmer@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVS-Request: realmd code execution/auth bypass
To: oss-security@lists.openwall.com

Hi

Upstream has opened two bugs for issues in realmd that
could lead to remote attackers logging into the local system
by placing an evil AD server in the LAN or by offering \r in
LDAP responses that are treated by sssd and winbind as newline
separator; therefore allowing to smuggle options into the config
files used for startup:

https://bugs.freedesktop.org/show_bug.cgi?id=89205
https://bugs.freedesktop.org/show_bug.cgi?id=89207

Sebastian


-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.de - SuSE Security Team

