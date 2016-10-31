X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["647" "Monday" "31" "October" "2016" "12:22:36" "+0100" "Solar Designer" "solar@openwall.com" "<20161031112236.GA6816@openwall.com>" "15" "[oss-security] Re: Stack guard canary massaging" nil nil nil "10" "2016103111:22:36" "[oss-security] Re: Stack guard canary massaging" (number mark "U       solar@openwa Oct 31   15/647   " thread-indent "\"[oss-security] Re: Stack guard canary massaging\"\n") "<14b76703-8185-dadb-7605-10496331452c@redhat.com>" ("<14b76703-8185-dadb-7605-10496331452c@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23744 invoked by uid 550); 31 Oct 2016 11:23:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22018 invoked from network); 31 Oct 2016 11:22:49 -0000
Date: Mon, 31 Oct 2016 12:22:36 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: kernel-hardening@lists.openwall.com
Message-ID: <20161031112236.GA6816@openwall.com>
References: <14b76703-8185-dadb-7605-10496331452c@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14b76703-8185-dadb-7605-10496331452c@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Stack guard canary massaging

On Mon, Oct 31, 2016 at 11:48:45AM +0100, Florian Weimer wrote:
> Sorry for cross-posting.

Sorry to bikeshed, but I think this isn't a kernel-hardening topic at
all, so the thread should continue on oss-security only, please.

Florian, if there's a reason why you think it's kernel-hardening
related, please let me know.  To me, it looks like userspace hardening
that is not even kernel-assisted (at least not directly in this place,
even though the kernel may have helped provide the random numbers).

If your cross-posting was to reach more of the right people, then you
have already done so, and they can join oss-security now. ;-)

Alexander
