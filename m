X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["569" "Thursday" "10" "March" "2016" "10:25:49" "+0100" "Marcus Meissner" "meissner@suse.de" "<20160310092549.GB4470@suse.de>" "12" "[oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption" "^Date:" nil nil "3" "2016031009:25:49" "[oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption" (number mark "U       meissner@sus Mar 10   12/569   " thread-indent "\"[oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26326 invoked by uid 550); 10 Mar 2016 09:26:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26308 invoked from network); 10 Mar 2016 09:26:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160310092549.GB4470@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 10 Mar 2016 10:25:49 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory
 corruption
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org

Hi,

>From the P0 team at Google:

https://code.google.com/p/google-security-research/issues/detail?id=758

A memory corruption vulnerability exists in the IPT_SO_SET_REPLACE ioctl in the netfilter code for iptables support. This ioctl is can be triggered by an unprivileged user on PF_INET sockets when unprivileged user namespaces are available (CONFIG_USER_NS=y). Android does not enable this option, but desktop/server distributions and Chrome OS will commonly enable this to allow for containers support or sandboxing.
...

I think this needs a CVE.

Ciao, Marcus
