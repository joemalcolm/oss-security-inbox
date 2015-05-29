X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["987" "Friday" "29" "May" "2015" "16:19:30" "-0700" "Andy Lutomirski" "luto@kernel.org" "<5568F402.2050904@kernel.org>" "28" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "5" "2015052923:19:30" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "U       luto@kernel. May 29   28/987   " thread-indent "\"[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<alpine.LFD.2.11.1505292156260.17180@wniryva>" ("<alpine.LFD.2.11.1505292156260.17180@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5349 invoked by uid 550); 29 May 2015 23:19:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5331 invoked from network); 29 May 2015 23:19:45 -0000
Message-ID: <5568F402.2050904@kernel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <alpine.LFD.2.11.1505292156260.17180@wniryva>
In-Reply-To: <alpine.LFD.2.11.1505292156260.17180@wniryva>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: ClamAV using ClamSMTP
CC: drew@sandstorm.io
Date: Fri, 29 May 2015 16:19:30 -0700
From: Andy Lutomirski <luto@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic
To: oss-security@lists.openwall.com

On 05/29/2015 09:35 AM, P J P wrote:
>     Hello,
>
> Linux kernel built with the user namespaces support(CONFIG_USER_NS) is
> vulnerable to a NULL pointer dereference flaw. It could occur when users
> in user namespaces do unmount mounts.
>
> An unprivileged user could use this flaw to crash the system resulting
> in DoS.
>
> Upstream fixes:
> ---------------
>    -> https://git.kernel.org/linus/820f9f147dcce2602eefd9b575bbbd9ea14f0953
>    -> https://git.kernel.org/linus/cd4a40174b71acd021877341684d8bb1dc8ea4ae
>
> It was introduced by:
> ---------------------
>    -> https://git.kernel.org/linus/ce07d891a0891d3c0d0c2d73d577490486b809e1
>
> Thank you Drew Fisher for reporting this issue to Fedora Security Team.

To clarify further: this is a regression in Linux 4.0.2 and will be 
fixed in Linux 4.0.5.  It has been independently reported by at least 
Kenton Varda and Alexander Larsson.  I think that Eric Biederman also 
reported it to linux-stable at some point.

--Andy

