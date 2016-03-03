X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1442" "Thursday" "3" "March" "2016" "14:07:37" "+0100" "Marcus Meissner" "meissner@suse.de" "<20160303130737.GN22595@suse.de>" "42" "[oss-security] CVE-2004-0230 additions and Linux Kernel fix" "^Date:" nil nil "3" "2016030313:07:37" "[oss-security] CVE-2004-0230 additions and Linux Kernel fix" (number mark "        meissner@sus Mar  3   42/1442  " thread-indent "\"[oss-security] CVE-2004-0230 additions and Linux Kernel fix\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23634 invoked by uid 550); 3 Mar 2016 13:07:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23616 invoked from network); 3 Mar 2016 13:07:49 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160303130737.GN22595@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 3 Mar 2016 14:07:37 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2004-0230 additions and Linux Kernel fix
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org

Hi,

CVE-2004-0230 is an old standing TCP protocol issue complained about by shitty network vulnerability scanners (I am looking at you Nessus).

There has been however some progress since 2004...

It has new references to add:

RFC 5961 was written to address this CVE: https://tools.ietf.org/html/rfc5961

And the Linux Kernel has implemented this in

http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=282f23c6ee343126156dd41218b22ece96d747e3

commit 282f23c6ee343126156dd41218b22ece96d747e3
Author: Eric Dumazet <edumazet@google.com>
Date:   Tue Jul 17 10:13:05 2012 +0200

    tcp: implement RFC 5961 3.2
    
    Implement the RFC 5691 mitigation against Blind
    Reset attack using RST bit.
    
    Idea is to validate incoming RST sequence,
    to match RCV.NXT value, instead of previouly accepted
    window : (RCV.NXT <= SEG.SEQ < RCV.NXT+RCV.WND)
    
    If sequence is in window but not an exact match, send
    a "challenge ACK", so that the other part can resend an
    RST with the appropriate sequence.
    
    Add a new sysctl, tcp_challenge_ack_limit, to limit
    number of challenge ACK sent per second.
    
    Add a new SNMP counter to count number of challenge acks sent.
    (netstat -s | grep TCPChallengeACK)
    
    Signed-off-by: Eric Dumazet <edumazet@google.com>
    Cc: Kiran Kumar Kella <kkiran@broadcom.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

Ciao, Marcus
