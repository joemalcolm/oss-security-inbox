X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2153" "Tuesday" "2" "February" "2021" "21:44:20" "+0100" "Solar Designer" "solar@openwall.com" "<20210202204420.GA28811@openwall.com>" "45" "Re: [oss-security] Gentoo's \"contributing back\" linux-distros tasks" nil nil nil "2" "2021020220:44:20" "[oss-security] Gentoo's \"contributing back\" linux-distros tasks" (number mark "U       solar@openwa Feb  2   45/2153  " thread-indent "\"Re: [oss-security] Gentoo's \"contributing back\" linux-distros tasks\"\n") "<cig332v9bacnlt.fsf@u54e1add816995a33037d.ant.amazon.com>" ("<20201012123020.GA26643@openwall.com>" "<cig3321ri3ihti.fsf@u54e1add816995a33037d.ant.amazon.com>" "<cig332v9bacnlt.fsf@u54e1add816995a33037d.ant.amazon.com>") nil nil nil nil nil nil nil "Re: [oss-security] Gentoo's \"contributing back\" linux-distros tasks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18244 invoked by uid 550); 2 Feb 2021 20:44:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18115 invoked from network); 2 Feb 2021 20:44:26 -0000
Date: Tue, 2 Feb 2021 21:44:20 +0100
From: Solar Designer <solar@openwall.com>
To: Anthony Liguori <aliguori@amzn.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20210202204420.GA28811@openwall.com>
References: <20201012123020.GA26643@openwall.com> <cig3321ri3ihti.fsf@u54e1add816995a33037d.ant.amazon.com> <cig332v9bacnlt.fsf@u54e1add816995a33037d.ant.amazon.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cig332v9bacnlt.fsf@u54e1add816995a33037d.ant.amazon.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Gentoo's "contributing back" linux-distros tasks

On Tue, Feb 02, 2021 at 10:48:30AM -0800, Anthony Liguori wrote:
> Anthony Liguori <aliguori@amzn.com> writes:
> 
> > Solar Designer <solar@openwall.com> writes:
> >
> >> 13. Keep track of per-report and per-issue handling and disclosure
> >> timelines (at least times of notification of the private list and of
> >> actual public disclosure), at regular intervals produce and share
> >> statistics (most notably, the average embargo duration) as well as the
> >> raw data (except on issues that are still under embargo) by posting to
> >> oss-security - primary: Gentoo, backup: Amazon
> >>
> >> and we saw some contributions from Gentoo on these, most notable being
> >> their work on the statistics (task 13 above):
> >>
> >> https://oss-security.openwall.org/wiki/mailing-lists/distros/stats
> >>
> >> Unfortunately, the last update of these statistics ("Last modified:
> >> 2019/10/15 01:52 by kristianf") is also when the contributions ceased.
> 
> As part of planning on getting this going again, I want to just review
> the cadence and update duration.
> 
> I think this is easiest to do on the 15th of every month for the
> previous month.  As example, on 2/15, we would post the statistics for
> February.  Since the maximum embargo duration is 2-weeks, this would not
> disclose any embargoed information.
> 
> Does this seem reasonable?

You mean for January.  Yes.

Occasionally there will be an issue that should have already been made
public but actually wasn't yet, or not on oss-security.  An issue where
others responsible failed to ensure its timely and proper public
disclosure.  In such cases, I expect the person working on the
statistics task would notice that and help ensure this issue is made
public without further delay and properly (such as by pinging others to
do it), and only then will post the statistics including the issue.  In
fact, if the statistics task is correctly worked on, such issues with
issues are impossible not to notice: every issue in the published raw
data for the statistics should have its corresponding oss-security
posting referenced.  So you'd notice when trying to fill in that field.

Alexander
