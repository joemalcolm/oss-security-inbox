X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["818" "Wednesday" "13" "May" "2015" "18:43:24" "+0200" "Philipp Kern" "pkern@debian.org" "<28b86c79335873d36c900e0ddc3fd981@hub.kern.lc>" "22" "[oss-security] Re: CVE request: libinfinity did not correctly check certificates for validity" nil nil nil "5" "2015051316:43:24" "[oss-security] Re: CVE request: libinfinity did not correctly check certificates for validity" (number mark "        pkern@debian May 13   22/818   " thread-indent "\"[oss-security] Re: CVE request: libinfinity did not correctly check certificates for validity\"\n") "<20150512064406.GA4254@home.philkern.de>" ("<20150512064406.GA4254@home.philkern.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13695 invoked by uid 550); 13 May 2015 16:58:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21974 invoked from network); 13 May 2015 16:43:42 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Organization: Debian
In-Reply-To: <20150512064406.GA4254@home.philkern.de>
References: <20150512064406.GA4254@home.philkern.de>
Message-ID: <28b86c79335873d36c900e0ddc3fd981@hub.kern.lc>
X-Sender: pkern@debian.org
User-Agent: Roundcube Webmail/1.0.2
Cc: armin@arbur.net, cve-assign@mitre.org
Date: Wed, 13 May 2015 18:43:24 +0200
From: Philipp Kern <pkern@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: libinfinity did not correctly check certificates
 for validity
To: oss-security@lists.openwall.com

[Adding MITRE's cve-assign alias to the Cc]

On 2015-05-12 08:44, Philipp Kern wrote:
> Debian bug #783601[1] reported that Gobby - a collaborative text editor
> - silently accepted expired certificates. The upstream bug report is
> [2]. The bug is actually in libinfinity and the fix is available on 
> [2].
> 
> libinfinity does support certificate pinning and hence contains the
> ability to disable some checks like trusted issuer and hostname
> verification. However the catch-all validity check was in the wrong
> location.
> 
> Please assign a CVE ID for this.
> 
> Kind regards and thanks
> Philipp Kern
> 
> [1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=783601
> [2] https://github.com/gobby/gobby/issues/61
> [3]
> https://github.com/gobby/libinfinity/commit/c97f870f5ae13112988d9f8ad464b4f679903706
