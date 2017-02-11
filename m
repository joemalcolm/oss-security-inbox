X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2439" "Friday" "10" "February" "2017" "20:43:45" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20170211044344.tcni4punke6z2a5v@sentinelchicken.org>" "48" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Date:" nil nil "2" "2017021104:43:45" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "U       tim-security Feb 10   48/2439  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<CAFJuDmNbvyh=qy__VTjOP9PuL158E8ENeRN+Fx7ciSCwTCoc4w@mail.gmail.com>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>" "<20170210205916.GB28439@hunt>" "<D999895D83BF47489B7647E60E228B4702FE7609@EX10MBOX05.pnnl.gov>" "<20170210224910.neeqi3e5265dgnxh@sentinelchicken.org>" "<MWHPR01MB2237C510B601793B63595572F1440@MWHPR01MB2237.prod.exchangelabs.com>" "<20170211001023.cfe5enzugromqdm6@sentinelchicken.org>" "<CAFJuDmNbvyh=qy__VTjOP9PuL158E8ENeRN+Fx7ciSCwTCoc4w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15559 invoked by uid 550); 11 Feb 2017 04:44:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15541 invoked from network); 11 Feb 2017 04:44:03 -0000
Message-ID: <20170211044344.tcni4punke6z2a5v@sentinelchicken.org>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>
 <20170210205916.GB28439@hunt>
 <D999895D83BF47489B7647E60E228B4702FE7609@EX10MBOX05.pnnl.gov>
 <20170210224910.neeqi3e5265dgnxh@sentinelchicken.org>
 <MWHPR01MB2237C510B601793B63595572F1440@MWHPR01MB2237.prod.exchangelabs.com>
 <20170211001023.cfe5enzugromqdm6@sentinelchicken.org>
 <CAFJuDmNbvyh=qy__VTjOP9PuL158E8ENeRN+Fx7ciSCwTCoc4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFJuDmNbvyh=qy__VTjOP9PuL158E8ENeRN+Fx7ciSCwTCoc4w@mail.gmail.com>
User-Agent: NeoMutt/20161104 (1.7.1)
Date: Fri, 10 Feb 2017 20:43:45 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: oss-security@lists.openwall.com


> Once it's completely up and running, DWF should address these issues.
> Researchers and organizations can easily become CNAs under DWF, with
> assigned CVE blocks. For OSS, the process of getting a CVE (including
> pre-publication) should be much simpler than it has been, especially
> in recent years. It's not quite there yet, but Kurt and team have put
> a lot of effort into laying the groundwork for a much better solution
> than the ad-hoc "send an email and hope" process that we've become
> accustomed to.
> 
> The old system was far from perfect, as is the interim MITRE web form
> - hopefully with the help of the community, DWF will be able to
> provide a better process for all involved. For OSS, DWF is the
> solution we need to be focused on, and helping it to evolve to suit
> the needs of everyone.

Thanks for the update on where that is going.  I'm cautiously hopeful
that this will be what open source folks need in the future.


> > - The most telling though is the entire CNA program, particularly when
> >   it allowed only commercial vendors.  If a vendor decides something
> >   isn't a problem, they can block or slow CVE assignment.  It's a
> >   corruption of service that ought to be for the public benefit.  (And
> >   yes, this does happen.)
> 
> While I believe that DWF represents a substantial step forward for
> OSS, and getting CVEs to those that need them, when they need them; my
> feelings on CVEs for commercial software remain rather negative. I've
> stopped requesting CVEs for commercial software due to all of the
> issues - if I discover something where I believe a CVE is especially
> important, I direct the request through CERT/CC or another
> origination. But, this is getting off-topic.

I'm glad I'm not the only one who is frustrated with this.  I too have
given up on putting my effort into getting CVEs for most things.  If
someone else gets it assigned in a timely manner and I happen to
notice, fine I'll put it in an advisory, but I'm no longer requesting
CVEs for vulns in commercial software.  (Were this resignation to be
widespread, it should be a huge red flag for MITRE.)

Corporate vendor vuln assignment does seem like this is a completely
different animal than open source assignment now, based on how MITRE
is (and has been) structuring things.  The fact that the two are
treated differently is a big source of my loss of faith in their
ability to run the program.

tim
