X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2164" "Wednesday" "20" "November" "2019" "13:44:25" "+0100" "Solar Designer" "solar@openwall.com" "<20191120124425.GA25554@openwall.com>" "46" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019112012:44:25" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "  z     solar@openwa Nov 20   46/2164  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 5665 invoked by uid 550); 20 Nov 2019 12:44:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5516 invoked from network); 20 Nov 2019 12:44:31 -0000
Message-ID: <20191120124425.GA25554@openwall.com>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 20 Nov 2019 13:44:25 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

On Tue, Nov 19, 2019 at 01:33:48PM +0200, Georgi Guninski wrote:
> As end user and contributor of gnu/linux, I am concerned about malicious
> packages (either hostile developers or hacked developers or another reason)
> and have two questions:
> 
> * What do linux vendors to avoid malicious packages?

Back when Openwall GNU/*/Linux was being actively developed, I used to
review each contributor's changes before making them public.  I also
(re-)verified authenticity of third-party source tarballs instead of
blindly trusting whatever the contributor could have uploaded to us.
(I'd do the same now, but without active development there's simply
nothing to review lately.)

Of course, this approach doesn't scale as-is (with just one person to
review and publish everything) to larger distros, but some kind of peer
review can and should be present.

> * As end user what can I do to mitigate malicious packages?

Try to install only what's needed, or not a lot more than what's needed.
(Can't be done perfectly with larger distros and their dependency hell.)

Contrary to traditional best practices, update only what and when needs
to be updated.  (Of course, you take responsibility to watch for any
relevant security updates, or accept the risk if you neglect to do that.
You also miss silent security fixes, but on the other hand you similarly
miss newly introduced vulnerabilities.)

Use a long-term support distro, preferably starting half-way into its
lifetime when updates are already infrequent.  (Similar risk of missing
silent security fixes in new upstream versions, but also avoiding new
vulnerabilities.)

Setup packet filters with blocking and logging of unexpected outbound
packets, including to console so that you'd notice.

Setup custom anomaly detection and actually watch it - e.g., for new
programs running that haven't ever run before, etc.

Use multiple pseudo-user accounts (doesn't protect against issues in
packages' pre/post-install scripts, etc.), containers, VMs - but even
then you have the risk of getting the same malicious package in multiple
VMs, which e.g. on Qubes OS could happen through updating a template VM.

Alexander
