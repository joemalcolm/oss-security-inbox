X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1401" "Wednesday" "18" "November" "2015" "05:10:08" "+0300" "Solar Designer" "solar@openwall.com" "<20151118021008.GB31188@openwall.com>" "30" "[oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111802:10:08" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       solar@openwa Nov 18   30/1401  " thread-indent "\"[oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B6536.2030908@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17580 invoked by uid 550); 18 Nov 2015 02:10:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17549 invoked from network); 18 Nov 2015 02:10:11 -0000
Date: Wed, 18 Nov 2015 05:10:08 +0300
From: Solar Designer <solar@openwall.com>
To: Jeff Law <law@redhat.com>
Cc: Bernd Schmidt <bschmidt@redhat.com>, oss-security@lists.openwall.com,
	Florian Weimer <fweimer@redhat.com>
Message-ID: <20151118021008.GB31188@openwall.com>
References: <20151117153951.GA28672@openwall.com> <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com> <564B6536.2030908@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <564B6536.2030908@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Fwd: x86 ROP mitigation

On Tue, Nov 17, 2015 at 10:34:46AM -0700, Jeff Law wrote:
> I don't think anyone believes this stuff will make a significant 
> difference *at this stage*.  Thus, we aren't planning announcements or 
> any promotion of the work.
> 
> The obvious idea is to keep knocking off sources of ROP gadgets, 
> hopefully reaching a point where ROP gadgets are reasonably hard to find 
> & exploit in GCC generated code at some point in the future.
> 
> As each bundle of work reaches completion, it will be submitted to the 
> appropriate project (GCC & binutils).  There's no value in holding back 
> any particular mitigation technique.  They'll just keep dropping as 
> they're completed.

This approach makes sense to me, but I think we should have a better
idea of whether and how "a point where ROP gadgets are reasonably hard
to find & exploit" is potentially reachable.  If it is not even
potentially reachable, then this undermines the effort, unfortunately.

Also, "hard" might be a wrong goal.  More important is making attacks
less reliable or/and less generic, such as through forcing them to be
more complex or/and to rely on more aspects of the target system.

Overall, this might be a worthwhile effort - it's just that I'd like to
see a more convincing potential plan early on, even if the individual
mitigations would be getting upstreamed one by one (as they should be).

Thanks,

Alexander
