X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1081" "Tuesday" "26" "October" "2021" "14:30:18" "+0200" "Solar Designer" "solar@openwall.com" nil "23" "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil "10" nil nil (number mark "U       solar@openwa Oct 26   23/1081  " thread-indent "\"Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30233 invoked by uid 550); 26 Oct 2021 12:30:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30110 invoked from network); 26 Oct 2021 12:30:23 -0000
Date: Tue, 26 Oct 2021 14:30:18 +0200
From: Solar Designer <solar@openwall.com>
To: Lin Horse <kylin.formalin@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20211026123018.GA30888@openwall.com>
References: <CAJjojJsrNyz+ML+Q81JB9iF2-DTKfAEkUP1cSTgyvCL6NebhzQ@mail.gmail.com> <20211026115947.GA29482@openwall.com> <CAJjojJu4y96+mMEWQ_Qg1Bb+z=SP0FYqMBi24dBryr=7aQ9kWg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJjojJu4y96+mMEWQ_Qg1Bb+z=SP0FYqMBi24dBryr=7aQ9kWg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object

On Tue, Oct 26, 2021 at 08:14:20PM +0800, Lin Horse wrote:
> The commit for the fix is 1b1499a817c90fd1ce9453a2c98d2a01cca0e775 (link:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=1b1499a817c90fd1ce9453a2c98d2a01cca0e775
> )

Thanks.  Looks like the same fix you already shared on September 1.

I also found this was (first?) made public on Linux kernel mailing lists
(linux-nfc, netdev, linux-kernel) on October 7 by someone from Canonical
(and Lin was CC'ed):

https://lists.openwall.net/netdev/2021/10/07/239

Canonical didn't break the embargo there because it was supposed to be
already over by then, however I think it was their opportunity to remind
about the need to make the oss-security posting, or to make the posting
themselves.  Speaking of which, I think SUSE (as they first reminded) or
Gentoo or Amazon (as they're tasked with this) could and should have
brought this to oss-security shortly after Lin didn't reply to the
September 17 reminder.  To send a reminder and forget for another month
isn't a reliable approach.

Alexander
