X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Wednesday" "20" "November" "2019" "09:06:57" "-0800" "Russ Allbery" "eagle@eyrie.org" "<87wobumq8e.fsf@hope.eyrie.org>" "30" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019112017:06:57" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        eagle@eyrie. Nov 20   30/1624  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<20191120124425.GA25554@openwall.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191120124425.GA25554@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24187 invoked by uid 550); 20 Nov 2019 17:07:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24169 invoked from network); 20 Nov 2019 17:07:11 -0000
In-Reply-To: <20191120124425.GA25554@openwall.com> (Solar Designer's message
	of "Wed, 20 Nov 2019 13:44:25 +0100")
Organization: The Eyrie
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
	<20191120124425.GA25554@openwall.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Message-ID: <87wobumq8e.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Date: Wed, 20 Nov 2019 09:06:57 -0800
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

Solar Designer <solar@openwall.com> writes:

> Contrary to traditional best practices, update only what and when needs
> to be updated.  (Of course, you take responsibility to watch for any
> relevant security updates, or accept the risk if you neglect to do that.
> You also miss silent security fixes, but on the other hand you similarly
> miss newly introduced vulnerabilities.)

I'm very reluctant to give this advice, not because it's wrong, but
because the failure mode is misaligned for most people.

The average user of a distribution (personal or professional) is at much
greater risk of a compromise due to an unpatched security vulnerability
than due to malicious code introduced in the distribution package update
stream.  Both are *possible*, but one of them is far more common (I would
even say by orders of magnitude).  Determining which updates are security
updates is tedious and requires a lot of discipline; it's something that
humans are generally bad at, and the failure mode is usually to not apply
the update.  Many security updates are not explicitly flagged as such (see
all the recent discussions on this list about CVEs).

The average user is therefore best served by applying all distribution
updates.  Choosing not to update to reduce your risk of a supply chain
attack is a very advanced technique, and I would tell people to think very
hard about whether they want to sign up for the necessary cognitive load
and disciplined decision-making required to identify relevant security
updates that they need to apply.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
