Received: (qmail 7277 invoked by uid 550); 23 Jan 2025 23:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5554 invoked from network); 23 Jan 2025 23:57:39 -0000
Date: Fri, 24 Jan 2025 00:57:36 +0100
From: Solar Designer <solar@openwall.com>
To: Bruce Lowenthal <bruce.lowenthal@oracle.com>
Cc: "Olle E. Johansson" <oej@edvina.net>, oss-security@lists.openwall.com
Message-ID: <20250123235736.GA22781@openwall.com>
References: <20250123024222.GA16803@openwall.com> <31A9EE0D-3415-46F5-BDC0-8AF758D9A0AC@edvina.net> <5c74b424-0c6d-49e8-b53e-bd637a1f9ebb@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5c74b424-0c6d-49e8-b53e-bd637a1f9ebb@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: [External] : Fwd: [oss-security] Oracle January 2025 Critical Patch Update

Bruce,

Thank you very much for your reply.  My reading of it is that Oracle is
already doing a lot (publication in 3 formats) and isn't willing to do
more (also separately send info pertaining to Oracle's Open Source
projects to oss-security).  Is that correct?

If so, maybe someone external should start doing that... or someone from
Oracle on one's own time... or people with the individual projects
(e.g., someone involved in MySQL and someone involved in VirtualBox
development)?

Related to the last point/idea, I notice that the individual projects do
not appear to include security/CVE info in their release announcements.
For example, here are the recent ones for MySQL and VirtualBox with no
mention of the security issues/fixes at all:

https://dev.mysql.com/doc/relnotes/mysql/9.2/en/news-9-2-0.html
https://dev.mysql.com/doc/refman/9.2/en/mysql-nutshell.html

https://www.virtualbox.org/wiki/Changelog-7.1
https://www.virtualbox.org/wiki/Changelog-7.0

Maybe that's because the embargo end is coordinated centrally for the
Critical Patch Update, and the projects end up never being given a green
light to release the info on their own as well?  Or just do not go back
and add previously-suppressed change log entries?  If so, could this be
corrected?  Just guessing here, I could as well be wrong about it.

Thanks again,

Alexander

On Thu, Jan 23, 2025 at 06:47:29AM -0800, Bruce Lowenthal wrote:
> Olle, Solar Designer, oss-security list:
> 
> I am responsible for the content and publication of Oracle Critical 
> Patch Updates.   These are published quarterly in three formats: Tabular 
> format HTML "AKA risk matrix", English Language HTML format and Oasis 
> Standard CSAF format via references at Oracle's Critical Patch Updates, 
> Security Alerts and Bulletins home page at
> 
>  * https://www.oracle.com/security-alerts/
> 
> This home page references individual quarterly reports and provides 
> other information regarding our security program.   In addition, that 
> page provides instructions allowing anyone to sign up to receive eMail 
> announcing when Oracle Critical Patch Updates and other security 
> advisories are published.    See:
> 
>  * Instructions for subscribing to email notifications
>    <https://www.oracle.com/security-alerts/securityemail.html>of
>    Critical Patch Update Advisories and Security Alerts.
> 
> If you have any questions, feel free to contact me directly.
> 
> Bruce
> -----
> 
> On 1/22/25 11:50 PM, Olle E. Johansson wrote:
> >Bruce,
> >For your information.
> >
> >/O
> >
> >>Begin forwarded message:
> >>
> >>*From: *Solar Designer <solar@openwall.com>
> >>*Subject: **[oss-security] Oracle January 2025 Critical Patch Update*
> >>*Date: *23 January 2025 at 03:42:22 CET
> >>*To: *oss-security@lists.openwall.com
> >>*Reply-To: *oss-security@lists.openwall.com
> >>
> >>Hi,
> >>
> >>Once in a while, Oracle publishes what they call Critical Patch Update
> >>documents, which list many vulnerabilities addressed across many Oracle
> >>products, some of them Open Source and some not.  This is great, but it
> >>would be even better if Oracle also communicated to oss-security about
> >>those vulnerabilities in its Open Source products, perhaps one message
> >>per product (e.g., MySQL separately from VirtualBox).  I hope someone
> >>from Oracle reads this and will get the wheels moving.  Anyone?
> >>
> >>Meanwhile, the latest Critical Patch Update is:
> >>
> >>https://blogs.oracle.com/security/post/january-2025-cpu-released
> >>https://www.oracle.com/security-alerts/cpujan2025.html
> >>
> >>For MySQL, it says:
> >>
> >>https://www.oracle.com/security-alerts/cpujan2025.html#AppendixMSQL
> >>
> >>"Oracle MySQL Risk Matrix
> >>
> >>This Critical Patch Update contains 39 new security patches, plus
> >>additional third party patches noted below, for Oracle MySQL.  4 of
> >>these vulnerabilities may be remotely exploitable without
> >>authentication, i.e., may be exploited over a network without requiring
> >>user credentials.  The English text form of this Risk Matrix can be
> >>found here."
> >>
> >>and links to:
> >>
> >>https://www.oracle.com/security-alerts/cpujan2025verbose.html#MSQL
> >>
> >>and lists additional information on some CVEs not included in the matrix
> >>itself (duplicate or not vulnerable).  With so many CVEs, all of this is
> >>rather long, but I imagine someone from Oracle - or someone external -
> >>could copy-paste the "English text form of this Risk Matrix" and the
> >>extra notes on a few CVEs to a separate message focusing on MySQL.
> >>
> >>Similarly, there's info on a couple of VirtualBox CVEs here, which would
> >>ideally be a separate message with copy-pasted detail:
> >>
> >>https://www.oracle.com/security-alerts/cpujan2025.html#AppendixOVIR
> >>https://www.oracle.com/security-alerts/cpujan2025verbose.html#OVIR
> >>
> >>Perhaps there's more Open Source software listed in there, which needs
> >>similar treatment.  Not only this time, but each time, please.
> >>
> >>Alexander
