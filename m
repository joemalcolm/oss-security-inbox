X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["515" "Tuesday" "15" "December" "2015" "15:30:02" "+0100" "Marcus Meissner" "meissner@suse.de" "<20151215143002.GM11263@suse.de>" "13" "[oss-security] CVE Request: Linux Kernel: information leak from getsockname" "^Date:" nil nil "12" "2015121514:30:02" "[oss-security] CVE Request: Linux Kernel: information leak from getsockname" (number mark "        meissner@sus Dec 15   13/515   " thread-indent "\"[oss-security] CVE Request: Linux Kernel: information leak from getsockname\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11298 invoked by uid 550); 15 Dec 2015 14:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11270 invoked from network); 15 Dec 2015 14:30:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20151215143002.GM11263@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 15 Dec 2015 15:30:02 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux Kernel: information leak from getsockname
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

spotted by grsecurity
https://twitter.com/grsecurity/status/676744240802750464

https://lkml.org/lkml/2015/12/14/252
http://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=09ccfd238e5a0e670d8178cf50180ea81ae09ae1

getsockname() for some socket families did not check the length of the passed sockaddr,
copying out more kernel memory than required, leaking information from the kernel stack,
including kernel addresses. This can be used for KASLR bypass or other information leaks. 

Ciao, Marcus
