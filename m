X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1669" "Thursday" "23" "July" "2020" "13:56:45" "+0200" "Solar Designer" "solar@openwall.com" nil "37" nil "^Date:" nil nil "7" nil nil (number mark "        solar@openwa Jul 23   37/1669  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5787 invoked by uid 550); 23 Jul 2020 11:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5678 invoked from network); 23 Jul 2020 11:56:50 -0000
Message-ID: <20200723115645.GA20752@openwall.com>
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com> <20200711175842.GA8907@openwall.com> <3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com> <20200720184054.GA11135@openwall.com> <CAC5HUDxonM84K=q2+gsVhOuYBuM_dESB5VZqb5kDAQ2zYy=U_g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC5HUDxonM84K=q2+gsVhOuYBuM_dESB5VZqb5kDAQ2zYy=U_g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 23 Jul 2020 13:56:45 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com

On Thu, Jul 23, 2020 at 01:51:17PM +0530, Mohammad Tausif Siddiqui wrote:
> I think the ball is on the CNA: Hackerone side to get it published to
> MITRE, so that they can show it up on their page.
> 
> CNAs are provided with weekly reports by the root CNA: MITRE, which lists
> Reserved But Public "RBP" CVEs owned by that CNA, irrespective of whether
> the CVE was assigned on distros list or elsewhere. That closes the reminder
> loop.
> 
> There's no pull request for CVE-2020-8177 at
> https://github.com/CVEProject/cvelist/pulls
> We cannot determine if they used the alternative, web form:
> https://cveform.mitre.org/
> 
> You may want to reach Hackerone from the CNA contacts
> <https://cve.mitre.org/cve/request_id.html#cna_participants>, for this
> exception of delay.

Most of the above is once again too specific to the given CVE ID,
whereas we need a general understanding of whether the task Xiao
proposes and volunteers for is worthwhile or not.  I'd appreciate a
direct answer to that.

Do I interpret this paragraph correctly as implying the answer is no? -

> CNAs are provided with weekly reports by the root CNA: MITRE, which lists
> Reserved But Public "RBP" CVEs owned by that CNA, irrespective of whether
> the CVE was assigned on distros list or elsewhere. That closes the reminder
> loop.

In other words, CNAs receive their reminders from MITRE weekly, so
there's no need for anyone else reminding them, correct?  However, can
it happen that MITRE wouldn't recognize a CVE ID as "Reserved But
Public", continuing to treat it as merely reserved, in which case there
would be no reminder to correct that?  Could Xiao help with this?

Alexander
