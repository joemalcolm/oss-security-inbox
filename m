X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1628" "Sunday" "22" "March" "2015" "20:50:40" "+0300" "Solar Designer" "solar@openwall.com" "<20150322175040.GA21383@openwall.com>" "29" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032217:50:40" "[oss-security] CVE for Kali Linux" (number mark "        solar@openwa Mar 22   29/1628  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322172300.GA21110@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28361 invoked by uid 550); 22 Mar 2015 17:50:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28343 invoked from network); 22 Mar 2015 17:50:43 -0000
Message-ID: <20150322175040.GA21383@openwall.com>
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150322172300.GA21110@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 22 Mar 2015 20:50:40 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On Sun, Mar 22, 2015 at 08:23:00PM +0300, Solar Designer wrote:
> On Sun, Mar 22, 2015 at 12:54:57PM -0400, David A. Wheeler wrote:
> > On 2015-02-26 I reported to Cygwin that they had a similar man-in-the-middle issue.
> > The Cygwin package manager (which downloaded all other packages) was unprotected
> > and downloaded using http (as http://cygwin.com/setup-x86.exe or http://cygwin.com/setup-x86_64.exe).
> > They changed it to load with HTTPS, and later added HTTP Strict Transport Security (HSTS).
> 
> IMO, http vs. https is a red herring.  We shouldn't be focusing on
> security of software downloads, but rather on authenticity of the
> software.  If the distribution web server gets compromised, https
> doesn't help.  Thus, GPG signatures and the like.

I think I need to add that Cygwin's setup-*.exe was special, and that it
actually needed the switch to https.  (In addition to having proper
signatures for it.)  Thank you, David!

Other software downloads also benefit from https slightly - not only in
the way I mentioned (partially hiding from some observers which exact
software is being downloaded), but also through providing some limited
security from MITM attacks for people's manual downloads even when those
people wouldn't bother to verify signatures.  This is not limited to
just Cygwin, although with Cygwin's setup-*.exe I think it mattered more
than for most other software.

However, I think this is an operations best practices issue and not a
software issue, whereas lack of proper signatures in a software update
mechanism is much closer to being an issue with the software itself.

Alexander
