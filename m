X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1071" "Friday" "15" "January" "2016" "13:56:33" "+0100" "Yann Droneaud" "ydroneaud@opteya.com" "<1452862593.9500.48.camel@opteya.com>" "30" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011512:56:33" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        ydroneaud@op Jan 15   30/1071  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<5698D299.6020202@redhat.com>" ("<20160114171301.GH28298@localhost.localdomain>" "<5698D299.6020202@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22424 invoked by uid 550); 15 Jan 2016 12:56:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22406 invoked from network); 15 Jan 2016 12:56:45 -0000
Message-ID: <1452862593.9500.48.camel@opteya.com>
In-Reply-To: <5698D299.6020202@redhat.com>
References: <20160114171301.GH28298@localhost.localdomain>
	 <5698D299.6020202@redhat.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.3 (3.18.3-1.fc23) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 80.12.91.199
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Date: Fri, 15 Jan 2016 13:56:33 +0100
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com

Hi,

Le vendredi 15 janvier 2016 à 12:06 +0100, Florian Weimer a écrit :
> On 01/14/2016 06:13 PM, Qualys Security Advisory wrote:
> > Internal stdio buffering is the most severe of the three problems
> > discussed in this section, although GNU/Linux is not affected
> > because the glibc mmap()s and munmap()s (and therefore cleanses)
> > stdio buffers.
> 
> This will change in glibc 2.23, stdio will use regular malloc and
> free for its buffers.  I did not expect this change to have security
> implications.  Considering that the actual bug lies elsewhere, and
> stdio usage is based on copying out of the buffer (so leaks can still
> happen elsewhere), I do not wish to revert this change.
> 

Would setvbuf(stream, NULL, _IONBF, 0); be used to disable buffer
before reading/writting sensible data to a stream ?

What about a buffering flag (_IOSBF) that would enable "secure" 
handling of the buffer, that is, on fclose() and fflush(), write
back and cleanse buffer on output stream, cleanse buffer on input
stream ?

Regards.

-- 
Yann Droneaud
OPTEYA

