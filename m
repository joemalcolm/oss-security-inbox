X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["889" "Friday" "13" "January" "2017" "15:04:47" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20170113150447.6abc7f30@redhat.com>" "35" "Re: [oss-security] Re: Fuzzing jasper" "^Cc:" nil nil "1" "2017011314:04:47" "[oss-security] Re: Fuzzing jasper" (number mark "        thoger@redha Jan 13   35/889   " thread-indent "\"Re: [oss-security] Re: Fuzzing jasper\"\n") "<20161023010023.5F7236C4684@smtpvmsrv1.mitre.org>" ("<20161017010245.267aae32@pc1>" "<20161023010023.5F7236C4684@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32662 invoked by uid 550); 13 Jan 2017 14:05:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32626 invoked from network); 13 Jan 2017 14:05:03 -0000
Message-ID: <20170113150447.6abc7f30@redhat.com>
In-Reply-To: <20161023010023.5F7236C4684@smtpvmsrv1.mitre.org>
References: <20161017010245.267aae32@pc1>
	<20161023010023.5F7236C4684@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 13 Jan 2017 14:04:52 +0000 (UTC)
Cc: oss-security@lists.openwall.com, hanno@hboeck.de
Date: Fri, 13 Jan 2017 15:04:47 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fuzzing jasper
To: cve-assign@mitre.org

On Sat, 22 Oct 2016 21:00:23 -0400 (EDT) cve-assign@mitre.org wrote:

> > https://github.com/mdadams/jasper/issues/28
> > Heap overflow in jpc_dec_cp_setfromcox()  
> 
> > AddressSanitizer: heap-buffer-overflow
> > WRITE of size 1  
> 
> > malformed jpeg2000 file  
> 
> > jpc_dec_cp_setfromcox ... libjasper/jpc/jpc_dec.c:1668:32  
> 
> Use CVE-2016-8880.
> 
> 
> > https://github.com/mdadams/jasper/issues/29
> > Heap overflow in jpc_getuint16()  
> 
> > AddressSanitizer: heap-buffer-overflow
> > WRITE of size 8  
> 
> > jpc_getuint16 ... libjasper/jpc/jpc_cs.c:1572:8  
> 
> Use CVE-2016-8881.

Can the above two CVEs be rejected as duplicates of CVE-2011-4516 and
CVE-2011-4517 respectively?

https://github.com/mdadams/jasper/issues/28#issuecomment-267053875
https://github.com/mdadams/jasper/issues/29#issuecomment-267322934

Thank you!

-- 
Tomas Hoger / Red Hat Product Security
