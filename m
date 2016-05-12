X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["519" "Thursday" "12" "May" "2016" "23:16:48" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20160512211648.GA18760@pisco.westfalen.local>" "16" "Re: [oss-security] CVE Request : Use-after-free in openjpeg" nil nil nil "5" "2016051221:16:48" "[oss-security] CVE Request : Use-after-free in openjpeg" (number mark "U       jmm@debian.o May 12   16/519   " thread-indent "\"Re: [oss-security] CVE Request : Use-after-free in openjpeg\"\n") "<55F83A63.3040208@gmail.com>" ("<55F83A63.3040208@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27926 invoked by uid 550); 12 May 2016 21:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27908 invoked from network); 12 May 2016 21:17:06 -0000
Date: Thu, 12 May 2016 23:16:48 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160512211648.GA18760@pisco.westfalen.local>
References: <55F83A63.3040208@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55F83A63.3040208@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
X-SA-Exim-Connect-IP: 95.33.119.82
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] CVE Request : Use-after-free in openjpeg

On Tue, Sep 15, 2015 at 05:33:55PM +0200, FEIST Josselin wrote:
> Hi,
> 
> Use-after-free was found in openjpeg
> (https://github.com/uclouvain/openjpeg). The vuln is fixed in version
> 2.1.1 and was located in opj_j2k_write_mco function. More details are
> available here : https://github.com/uclouvain/openjpeg/issues/563.
> Is it possible to get a CVE for this ?
> 
> Credit goes to the static analyzer Gueb.

Explicitly adding cve-assign to CC, this seems to have fallen through
the cracks.

Cheers,
        Moritz
