X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1642" "Friday" "2" "September" "2016" "15:52:06" "+1000" "Damien Miller" "djm@mindrot.org" "<alpine.BSO.2.20.1609021547560.46085@natsu.mindrot.org>" "37" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" "^cc:" nil nil "9" "2016090205:52:06" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        djm@mindrot. Sep  2   37/1642  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<55CBC694.7070706@bluefrostsecurity.de>" ("<55CA41A6.600@bluefrostsecurity.de>" "<20150812161103.GA11200@openwall.com>" "<55CBA372.6080102@bluefrostsecurity.de>" "<20150812204805.GA12880@openwall.com>" "<55CBC694.7070706@bluefrostsecurity.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19884 invoked by uid 550); 2 Sep 2016 09:49:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3668 invoked from network); 2 Sep 2016 05:52:24 -0000
In-Reply-To: <55CBC694.7070706@bluefrostsecurity.de>
Message-ID: <alpine.BSO.2.20.1609021547560.46085@natsu.mindrot.org>
References: <55CA41A6.600@bluefrostsecurity.de> <20150812161103.GA11200@openwall.com> <55CBA372.6080102@bluefrostsecurity.de> <20150812204805.GA12880@openwall.com> <55CBC694.7070706@bluefrostsecurity.de>
User-Agent: Alpine 2.20 (BSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.73 on UQ Mailhub
X-Scanned-By: MIMEDefang 2.75 on 130.102.60.17
X-UQ-FilterTime: 1472795530
cc: Solar Designer <solar@openwall.com>
Date: Fri, 2 Sep 2016 15:52:06 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation
 vulnerabilities
To: oss-security@lists.openwall.com

On Thu, 13 Aug 2015, Moritz Jodeit wrote:

> On 12.08.2015 22:48, Solar Designer wrote:
> > Thank you!
> > 
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

Solar just reminded me of this branch of this old thread, prompting
me to tighten up OpenSSH's privilege separation monitor process:

https://anongit.mindrot.org/openssh.git/commit/?id=775f8a23f235
https://anongit.mindrot.org/openssh.git/commit/?id=7fd0ea8a1db4
https://anongit.mindrot.org/openssh.git/commit/?id=b38b95f5bcc5

(there'll be another one for GSSAPI once I can find someone to test it)

Together these more rigorously and explicitly enforce the expected
request flow in the monitor process.

Thanks for the reminder :)

-d
