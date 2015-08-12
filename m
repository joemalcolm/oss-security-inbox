X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Wednesday" "12" "August" "2015" "23:48:05" "+0300" "Solar Designer" "solar@openwall.com" "<20150812204805.GA12880@openwall.com>" "37" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081220:48:05" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        solar@openwa Aug 12   37/1697  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<55CBA372.6080102@bluefrostsecurity.de>" ("<55CA41A6.600@bluefrostsecurity.de>" "<20150812161103.GA11200@openwall.com>" "<55CBA372.6080102@bluefrostsecurity.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9268 invoked by uid 550); 12 Aug 2015 20:48:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9230 invoked from network); 12 Aug 2015 20:48:13 -0000
Message-ID: <20150812204805.GA12880@openwall.com>
References: <55CA41A6.600@bluefrostsecurity.de> <20150812161103.GA11200@openwall.com> <55CBA372.6080102@bluefrostsecurity.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55CBA372.6080102@bluefrostsecurity.de>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Aug 2015 23:48:05 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities
To: Moritz Jodeit <moritz@bluefrostsecurity.de>

On Wed, Aug 12, 2015 at 09:50:10PM +0200, Moritz Jodeit wrote:
> The vulnerable code for the two privsep issues was introduced with the merge of the
> FreeBSD PAM code in 2003:
> 
> https://github.com/openssh/openssh-portable/commit/4f9f42a9bb6a6aa8f6100d873dc6344f2f9994de
> 
> The user impersonation issue was fixed by the following commit:
> 
> https://github.com/openssh/openssh-portable/commit/d4697fe9a28dab7255c60433e4dd23cf7fce8a8b
> 
> While the use-after-free is fixed by this commit:
> 
> https://github.com/openssh/openssh-portable/commit/5e75f5198769056089fb06c4d738ab0e5abc66f7

Thank you!

Are systems with "keyboard interactive" and "challenge-response"
authentication disabled (all of PAMAuthenticationViaKbdInt,
KbdInteractiveAuthentication, and ChallengeResponseAuthentication, as
applicable to a given sshd version, set to no) affected by these issues
as well?  The code appears to be specific to this mode, but it isn't
immediately clear whether or not these configuration settings prevent
the vulnerable code from being reached in the privsep monitor even when
the privsep child is compromised.  If the settings do not currently
prevent the code from being reached (I hope they do), then this should
be corrected as a hardening measure.

And this is another reminder to all of us that enabling "keyboard
interactive" or "challenge-response" authentication in sshd is extra
risk, and it shouldn't be done unless necessary on a given system.

Upstream sshd_config man page lists ChallengeResponseAuthentication
as enabled by default, whereas Debian/Ubuntu (at least some versions)
have it set to no in their default /etc/ssh/sshd_config (and enable
UsePAM instead).

Alexander
