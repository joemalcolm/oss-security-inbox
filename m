X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2077" "Sunday" "22" "March" "2015" "20:23:00" "+0300" "Solar Designer" "solar@openwall.com" "<20150322172300.GA21110@openwall.com>" "38" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032217:23:00" "[oss-security] CVE for Kali Linux" (number mark "        solar@openwa Mar 22   38/2077  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31772 invoked by uid 550); 22 Mar 2015 17:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31753 invoked from network); 22 Mar 2015 17:23:05 -0000
Message-ID: <20150322172300.GA21110@openwall.com>
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 22 Mar 2015 20:23:00 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On Sun, Mar 22, 2015 at 12:54:57PM -0400, David A. Wheeler wrote:
> On 2015-02-26 I reported to Cygwin that they had a similar man-in-the-middle issue.
> The Cygwin package manager (which downloaded all other packages) was unprotected
> and downloaded using http (as http://cygwin.com/setup-x86.exe or http://cygwin.com/setup-x86_64.exe).
> They changed it to load with HTTPS, and later added HTTP Strict Transport Security (HSTS).

IMO, http vs. https is a red herring.  We shouldn't be focusing on
security of software downloads, but rather on authenticity of the
software.  If the distribution web server gets compromised, https
doesn't help.  Thus, GPG signatures and the like.

I find it ridiculous if we primarily complain that some site serves
downloads over http, and I find it ridiculous if we say they fixed "the
problem" when they move to https.

> Should I have requested a CVE?

I don't care about CVEs much, but if CVEs start being assigned to
anything like this, they should be for lack of signatures or lack of
signature verification in the vendor's recommended software installation
or update mechanism or lack of a way to verify the signing key or lack
of key verification in the vendor's recommended procedures (where
applicable).  (With key verification, it gets tricky.  So probably those
issues are not CVE-worthy yet, except in extreme cases where e.g. new
signing keys would be downloaded automatically with no verification.)

They should not be for use of http, nor for https vulnerabilities.

https does offer a security aspect that signatures don't: it hides from
some observers which exact software is being downloaded (and maybe that
it's a software download at all).  It doesn't do that perfectly because
the target address and transfer timings and sizes may be revealing, but
I do acknowledge there's some subtle improvement over http here.  I just
think this is far less important than ensuring authenticity of the
software.  So let's demand signatures and signature verification first,
and let's not be distracted by http vs. https.

Alexander
