X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Friday" "10" "February" "2017" "23:29:53" "+0100" "Guido Berhoerster" "guido+openwall.com@berhoerster.name" "<20170210222953.GA30129@hal>" "38" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Date:" nil nil "2" "2017021022:29:53" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "        guido+openwa Feb 10   38/1694  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<20170210205916.GB28439@hunt>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>" "<20170210205916.GB28439@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15985 invoked by uid 550); 10 Feb 2017 23:18:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32474 invoked from network); 10 Feb 2017 22:30:07 -0000
Message-ID: <20170210222953.GA30129@hal>
Mail-Followup-To: oss-security@lists.openwall.com
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>
 <20170210205916.GB28439@hunt>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170210205916.GB28439@hunt>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 10 Feb 2017 23:29:53 +0100
From: Guido Berhoerster <guido+openwall.com@berhoerster.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: oss-security@lists.openwall.com

* Seth Arnold <seth.arnold@canonical.com> [2017-02-10 21:59]:
> On Fri, Feb 10, 2017 at 03:40:45PM +0000, Priedhorsky, Reid wrote:
> > I’ve been using the CVE requests on oss-security to maintain a
> > reasonably comprehensive and timely list of vulnerabilities for specific
> > products. It’s not clear to me how to do this when CVE requests happen
> > offline in a web form.
> > 
> > Has this use case been considered? Is there an alternate way to
> > accomplish my goal?
> 
> Another part of the email from MITRE included "When you enter a
> vulnerability description on the web form, the CVE and description will
> typically be available on the NVD and CVE web sites at the same time or
> shortly after we email the CVE ID to you."
> 
> While the oss-security list has been the best resource of information for
> CVEs for us, part of our CVE ingestion is to download data from NVD and
> MITRE directly:
> 
> https://nvd.nist.gov/download
> https://cve.mitre.org/data/downloads/allitems.xml
> 
> Debian's database is also very useful to us:
> https://anonscm.debian.org/viewvc/secure-testing/data/CVE/
> 
> And of course our database is freely available as well:
> https://code.launchpad.net/~ubuntu-security/ubuntu-cve-tracker/master
> 
> I hope this can help you adapt your processes as MITRE adapts theirs.

One significant advantage of monitoring this list was that requests
were immediately visible and there are sometimes significant
delays between a CVE request and the response from MITRE. Or in some
cases requests were rejected with a rationale or did not receive a
response at all -- with the web form such cases will now just
disappear in a black hole.
-- 
Guido Berhoerster
