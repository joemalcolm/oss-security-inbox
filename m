Received: (qmail 26136 invoked by uid 550); 7 Apr 2022 09:07:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25985 invoked from network); 7 Apr 2022 09:06:32 -0000
Date: Thu, 7 Apr 2022 11:06:24 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: kangel <kangel@zju.edu.cn>, pgn@zju.edu.cn, qiuhao@sysec.org,
	Pedro Sampaio <psampaio@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <20220407090624.GA17007@openwall.com>
References: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn> <20220407083543.GA16833@openwall.com> <6e8a1fe2-b07f-b5b7-0bac-495f70c88e12@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e8a1fe2-b07f-b5b7-0bac-495f70c88e12@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: x86/kvm: null-ptr-deref in kvm_dirty_ring_push

On Thu, Apr 07, 2022 at 10:53:17AM +0200, Paolo Bonzini wrote:
> indeed it doesn't cross guest-host boundaries.  However, /dev/kvm is 
> accessible by unprivileged users, so it should be treated like any other 
> unprivileged NULL pointer dereference in Linux.  I do not apply an 
> embargo for those bugs, but whether to assign a CVE is not my choice.

Oh, indeed.  So it's a local DoS for systems with user-accessible
/dev/kvm and panic_on_oops=1, like RHEL and its rebuilds.  Makes sense
to have a CVE ID, then.  (I assume that mmap_min_addr works.)

Alexander
