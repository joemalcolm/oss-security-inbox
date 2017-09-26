X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2673" "Tuesday" "26" "September" "2017" "14:40:44" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1709261422390.12755@scrappy.simplesystems.org>" "52" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092619:40:44" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        bfriesen@sim Sep 26   52/2673  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>" "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12248 invoked by uid 550); 26 Sep 2017 19:40:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12218 invoked from network); 26 Sep 2017 19:40:57 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1709261422390.12755@scrappy.simplesystems.org>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov> <1978278.8CZP0B31Sj@wanheda> <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org> <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 26 Sep 2017 14:40:45 -0500 (CDT)
Date: Tue, 26 Sep 2017 14:40:44 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security <oss-security@lists.openwall.com>

On Tue, 26 Sep 2017, Kurt Seifried wrote:

> On Tue, Sep 26, 2017 at 11:31 AM, Bob Friesenhahn <
>>
>> It is incredibly difficult for most non-commercial upstreams to do this
>> since they have limited manpower, they are not informed of all the
>> applicable CVEs, and the CVE information received is essentially hearsay,
>> received from unknown/unverifiable sources.  I am thinking that it is best
>> for most non-commercial upstreams to not mention CVEs at all.
>>
>
> Uhm. Where to begin. Ok, well for one thing just because we can't have 100%
> perfect coverage doesn't mean we should simply give up. Also CVE's aren't
> "hearsay", they are claims based, with evidence being needed (the stronger
> the claim, the more likely you are to get a CVE), especially in the open
> source world where I typically require a link to either the vuln code, or
> the code patch in order to give a CVE to something (if you can't tell me
> what code is vuln, in open source, then chances are you need to understand
> the vuln more before we CVE it up, exceptions of course can be made, e.g.
> when someone has a reproducer that works reliably).

I did not mean that the CVE itself is "hearsay".  What I meant is the 
way an upstream maintainer is informed about a CVE is often no better 
than "hearsay".  In some cases the information comes from someone who 
is already known and trusted while in other cases it is impossible to 
even tell who is providing the information since the person providing 
the information has intentionally obfusticated their identity.

If an upstream maintainer reports that a release resolves a particular 
CVE, then he could easily have provided wrong information given that 
the upstream maintainer does not have access to the technical details 
of the report and analysis which initiated the CVE and may confuse one 
issue with another.

It may be that the upstream maintainer fixes a problem and some weeks 
later the CVE is created related to the problem which was fixed.

> You can check the CVE Database? There is the official MITRE one:
> cve.mitre.org and the DWF for Open Source (and yes, I lag in submissions to
> MITRE) at https://github.com/distributedweaknessfiling/DWF-CVE-Database/ in
> both cases the CVEs will have reference link(s) that ideally point to the
> upstream making it easy to match up.

The database entries do not contain enough information for an upstream 
maintainer to identify one issue from another similar issue.  They 
only contain sanitized information.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
