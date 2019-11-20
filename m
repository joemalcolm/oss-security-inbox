X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1829" "Wednesday" "20" "November" "2019" "18:49:15" "+0100" "Solar Designer" "solar@openwall.com" "<20191120174915.GA27616@openwall.com>" "35" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019112017:49:15" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "  z     solar@openwa Nov 20   35/1829  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<87wobumq8e.fsf@hope.eyrie.org>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191120124425.GA25554@openwall.com>" "<87wobumq8e.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 21710 invoked by uid 550); 20 Nov 2019 17:49:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21601 invoked from network); 20 Nov 2019 17:49:21 -0000
Message-ID: <20191120174915.GA27616@openwall.com>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com> <20191120124425.GA25554@openwall.com> <87wobumq8e.fsf@hope.eyrie.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wobumq8e.fsf@hope.eyrie.org>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 20 Nov 2019 18:49:15 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

On Wed, Nov 20, 2019 at 09:06:57AM -0800, Russ Allbery wrote:
> Solar Designer <solar@openwall.com> writes:
> 
> > Contrary to traditional best practices, update only what and when needs
> > to be updated.  (Of course, you take responsibility to watch for any
> > relevant security updates, or accept the risk if you neglect to do that.
> > You also miss silent security fixes, but on the other hand you similarly
> > miss newly introduced vulnerabilities.)
> 
> I'm very reluctant to give this advice, not because it's wrong, but
> because the failure mode is misaligned for most people.
> 
> The average user of a distribution (personal or professional) is at much
> greater risk of a compromise due to an unpatched security vulnerability
> than due to malicious code introduced in the distribution package update
> stream.  Both are *possible*, but one of them is far more common (I would
> even say by orders of magnitude).  Determining which updates are security
> updates is tedious and requires a lot of discipline; it's something that
> humans are generally bad at, and the failure mode is usually to not apply
> the update.  Many security updates are not explicitly flagged as such (see
> all the recent discussions on this list about CVEs).
> 
> The average user is therefore best served by applying all distribution
> updates.  Choosing not to update to reduce your risk of a supply chain
> attack is a very advanced technique, and I would tell people to think very
> hard about whether they want to sign up for the necessary cognitive load
> and disciplined decision-making required to identify relevant security
> updates that they need to apply.

I fully agree.

Yet I think it's an option that people with a background and concerns
like Georgi's would want to at least consider.  Not typical end-users.

Alexander
