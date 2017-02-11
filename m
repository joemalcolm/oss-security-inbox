X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1569" "Saturday" "11" "February" "2017" "10:42:24" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20170211094224.qbecethlziyj5i43@pisco.westfalen.local>" "31" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" nil nil nil "2" "2017021109:42:24" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "U       jmm@debian.o Feb 11   31/1569  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<94029e4d-6a6b-94d4-d62c-5aa922b1fb22@oracle.com>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>" "<94029e4d-6a6b-94d4-d62c-5aa922b1fb22@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8133 invoked by uid 550); 11 Feb 2017 09:42:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8115 invoked from network); 11 Feb 2017 09:42:37 -0000
Date: Sat, 11 Feb 2017 10:42:24 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170211094224.qbecethlziyj5i43@pisco.westfalen.local>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>
 <94029e4d-6a6b-94d4-d62c-5aa922b1fb22@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <94029e4d-6a6b-94d4-d62c-5aa922b1fb22@oracle.com>
User-Agent: NeoMutt/20161126 (1.7.1)
X-SA-Exim-Connect-IP: 93.204.222.111
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process

On Fri, Feb 10, 2017 at 04:09:12PM +0000, John Haxby wrote:
> On 10/02/17 15:40, Priedhorsky, Reid wrote:
> > To more efficiently assign and publish CVE IDs and to enable
> > automation and data sharing within CVE operations, MITRE is changing
> > the way it accepts CVE ID requests on the oss-security mailing list.
> > Starting today, please direct CVE ID requests to this web form
> > <https://cveform.mitre.org/>
> > 
> > I’ve been using the CVE requests on oss-security to maintain a reasonably comprehensive and timely list of vulnerabilities for specific products. It’s not clear to me how to do this when CVE requests happen offline in a web form.
> > 
> > Has this use case been considered? Is there an alternate way to accomplish my goal?
> 
> I'm glad someone else mentioned this -- I've been wondering too.
> 
> What would be nice is if the web form forwarded the request and CVE-ID
> (suitably formatted) to oss-security or a similar list.

For me the value of the oss-security mailing list to have a public
mailing list which is read by all the relevant open source security
stakeholders. Thats's why we're bringing all non-critical vulnerabilities
reported privately to the Debian security team to the attention of
this mailing list.

Having CVEs assigned is of lesser importance, this was never primarily
why we posted security vulnerabilities here. Obtaining CVE IDs caused
little overhead on our side, but if that changes (and the announced
changes sound like that), then there will simply be less CVE coverage
I'm afraid.

Cheers,
        Moritz
