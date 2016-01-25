X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1876" "Monday" "25" "January" "2016" "09:02:07" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<87oaca9jeo.fsf@mid.deneb.enyo.de>" "44" "[oss-security] Linux potential division by zero in TCP code" "^Date:" nil nil "1" "2016012508:02:07" "[oss-security] Linux potential division by zero in TCP code" (number mark "        fw@deneb.eny Jan 25   44/1876  " thread-indent "\"[oss-security] Linux potential division by zero in TCP code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26125 invoked by uid 550); 25 Jan 2016 08:02:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26073 invoked from network); 25 Jan 2016 08:02:19 -0000
Message-ID: <87oaca9jeo.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Mon, 25 Jan 2016 09:02:07 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux potential division by zero in TCP code
To: oss-security@lists.openwall.com

While looking for something else entirely, I came across this commit,
initially reported at <https://lkml.org/lkml/2015/12/21/435>:

commit 8b8a321ff72c785ed5e8b4cf6eda20b35d427390
Author: Yuchung Cheng <ycheng@google.com>
Date:   Wed Jan 6 12:42:38 2016 -0800

    tcp: fix zero cwnd in tcp_cwnd_reduction
    
    Patch 3759824da87b ("tcp: PRR uses CRB mode by default and SS mode
    conditionally") introduced a bug that cwnd may become 0 when both
    inflight and sndcnt are 0 (cwnd = inflight + sndcnt). This may lead
    to a div-by-zero if the connection starts another cwnd reduction
    phase by setting tp->prior_cwnd to the current cwnd (0) in
    tcp_init_cwnd_reduction().
    
    To prevent this we skip PRR operation when nothing is acked or
    sacked. Then cwnd must be positive in all cases as long as ssthresh
    is positive:
    
    1) The proportional reduction mode
       inflight > ssthresh > 0
    
    2) The reduction bound mode
      a) inflight == ssthresh > 0
    
      b) inflight < ssthresh
         sndcnt > 0 since newly_acked_sacked > 0 and inflight < ssthresh
    
    Therefore in all cases inflight and sndcnt can not both be 0.
    We check invalid tp->prior_cwnd to avoid potential div0 bugs.
    
    In reality this bug is triggered only with a sequence of less common
    events.  For example, the connection is terminating an ECN-triggered
    cwnd reduction with an inflight 0, then it receives reordered/old
    ACKs or DSACKs from prior transmission (which acks nothing). Or the
    connection is in fast recovery stage that marks everything lost,
    but fails to retransmit due to local issues, then receives data
    packets from other end which acks nothing.


I haven't analyzed this, but it looks potentially security-relvant
(although the last paragraph above suggests it's not entirely
straightforward to trigger).
