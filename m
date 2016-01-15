X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Thursday" "14" "January" "2016" "20:46:42" "-0500" "Jan Schaumann" "jschauma@netmeister.org" "<20160115014642.GE16572@netmeister.org>" "26" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Cc:" nil nil "1" "2016011501:46:42" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        jschauma@net Jan 14   26/911   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160114223207.GB30647@localhost.localdomain>" ("<20160114171301.GH28298@localhost.localdomain>" "<20160114181128.GD16572@netmeister.org>" "<20160114223207.GB30647@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5672 invoked by uid 550); 15 Jan 2016 01:46:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5639 invoked from network); 15 Jan 2016 01:46:53 -0000
Message-ID: <20160115014642.GE16572@netmeister.org>
References: <20160114171301.GH28298@localhost.localdomain>
 <20160114181128.GD16572@netmeister.org>
 <20160114223207.GB30647@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160114223207.GB30647@localhost.localdomain>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: oss-security@lists.openwall.com
Date: Thu, 14 Jan 2016 20:46:42 -0500
From: Jan Schaumann <jschauma@netmeister.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: Qualys Security Advisory <qsa@qualys.com>

Qualys Security Advisory <qsa@qualys.com> wrote:
> On Thu, Jan 14, 2016 at 01:11:29PM -0500, Jan Schaumann wrote:
> > Why is version 5.3 not affected?
> 
> The information leak is in resend_bytes() ["if (out_start < out_last)"
> should be "if (out_start <= out_last)"], but in OpenSSH 5.3, there is no
> call to resend_bytes(), at all (roaming_client.c does not even exist).

Thanks.

I see resend_bytes() being added on 2009-06-27 in roaming_common.c:
https://github.com/openssh/openssh-portable/commit/466df219615d72e48ff9103ec67521447f23a158

"2009/06/27 09:32:43

[roaming_common.c roaming.h]
It may be necessary to retransmit some data when resuming, so add it
to a buffer when roaming is enabled.
"

That's three days before the version was bumped to 5.3.

I'm afraid I haven't had the time to test your PoC against 5.3, but I
just want to make sure that we're not overlooking a vulnerable version.

-Jan
