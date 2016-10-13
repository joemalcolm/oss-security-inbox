X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1728" "Thursday" "13" "October" "2016" "18:10:41" "+0200" "Marcus Meissner" "meissner@suse.de" "<20161013161041.GR25134@suse.de>" "42" "[oss-security] CVE Request: another recursion in GRE" nil nil nil "10" "2016101316:10:41" "[oss-security] CVE Request: another recursion in GRE" (number mark "U       meissner@sus Oct 13   42/1728  " thread-indent "\"[oss-security] CVE Request: another recursion in GRE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25903 invoked by uid 550); 13 Oct 2016 16:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25885 invoked from network); 13 Oct 2016 16:10:53 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 13 Oct 2016 18:10:41 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20161013161041.GR25134@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: another recursion in GRE

Hi,

While debugging the issue CVE-2016-7039, SUSE engineer Michal Kubecek also spotted
a similar problem fixed earlier this year.

If a packet has the layout: | IPv4 header | GRE header | IPv4 header | GRE header | ...
depending on left over stack it could run the kernel out of stack due to
recursion and so crash the kernel.
This might be hard to hit with regular Ethernet MTUs, but easier with Jumbo frames.

Michal has a testcase in 
https://bugzilla.suse.com/show_bug.cgi?id=1001486#c5


As far as I see fixed in 4.6, introduced in 3.13 (bf5a755f).

commit fac8e0f579695a3ecbc4d3cac369139d7f819971
Author: Jesse Gross <jesse@kernel.org>
Date:   Sat Mar 19 09:32:01 2016 -0700

    tunnels: Don't apply GRO to multiple layers of encapsulation.
    
    When drivers express support for TSO of encapsulated packets, they
    only mean that they can do it for one layer of encapsulation.
    Supporting additional levels would mean updating, at a minimum,
    more IP length fields and they are unaware of this.
    
    No encapsulation device expresses support for handling offloaded
    encapsulated packets, so we won't generate these types of frames
    in the transmit path. However, GRO doesn't have a check for
    multiple levels of encapsulation and will attempt to build them.
    
    UDP tunnel GRO actually does prevent this situation but it only
    handles multiple UDP tunnels stacked on top of each other. This
    generalizes that solution to prevent any kind of tunnel stacking
    that would cause problems.
    
    Fixes: bf5a755f ("net-gre-gro: Add GRE support to the GRO stack")
    Signed-off-by: Jesse Gross <jesse@kernel.org>
    Signed-off-by: David S. Miller <davem@davemloft.net>

Ciao, Marcus
