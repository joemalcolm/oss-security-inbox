X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Thursday" "13" "August" "2015" "19:44:20" "+0300" "Solar Designer" "solar@openwall.com" "<20150813164420.GA19101@openwall.com>" "23" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081316:44:20" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        solar@openwa Aug 13   23/1237  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<55CBC694.7070706@bluefrostsecurity.de>" ("<55CA41A6.600@bluefrostsecurity.de>" "<20150812161103.GA11200@openwall.com>" "<55CBA372.6080102@bluefrostsecurity.de>" "<20150812204805.GA12880@openwall.com>" "<55CBC694.7070706@bluefrostsecurity.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5704 invoked by uid 550); 13 Aug 2015 16:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5679 invoked from network); 13 Aug 2015 16:44:23 -0000
Message-ID: <20150813164420.GA19101@openwall.com>
References: <55CA41A6.600@bluefrostsecurity.de> <20150812161103.GA11200@openwall.com> <55CBA372.6080102@bluefrostsecurity.de> <20150812204805.GA12880@openwall.com> <55CBC694.7070706@bluefrostsecurity.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55CBC694.7070706@bluefrostsecurity.de>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Thu, 13 Aug 2015 19:44:20 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities
To: djm@mindrot.org, Moritz Jodeit <moritz@bluefrostsecurity.de>

On Thu, Aug 13, 2015 at 12:20:04AM +0200, Moritz Jodeit wrote:
> On 12.08.2015 22:48, Solar Designer wrote:
> > Are systems with "keyboard interactive" and "challenge-response"
> > authentication disabled (all of PAMAuthenticationViaKbdInt,
> > KbdInteractiveAuthentication, and ChallengeResponseAuthentication, as
> > applicable to a given sshd version, set to no) affected by these issues
> > as well?  The code appears to be specific to this mode, but it isn't
> > immediately clear whether or not these configuration settings prevent
> > the vulnerable code from being reached in the privsep monitor even when
> > the privsep child is compromised.  If the settings do not currently
> > prevent the code from being reached (I hope they do), then this should
> > be corrected as a hardening measure.
> 
> As long as UsePAM is enabled in the configuration, all the PAM-related
> monitor requests can be send to the monitor. This at least allows
> triggering the use-after-free even if all the settings you mentioned
> are set to "no". Not sure if a full authentication is possible in this
> case though.

Damien, are you reading this?  Looks like there's a hardening change for
you(?) to implement.  Please comment.  Thanks!

Alexander
