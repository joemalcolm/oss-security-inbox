X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1424" "Tuesday" "12" "January" "2021" "09:55:26" "-0800" "Anthony Liguori" "aliguori@amazon.com" "<cig332o8hut4z5.fsf@u54e1add816995a33037d.ant.amazon.com>" "38" "RE: [oss-security] Gentoo's \"contributing back\" linux-distros tasks" nil nil nil "1" "2021011217:55:26" "[oss-security] Gentoo's \"contributing back\" linux-distros tasks" (number mark "U       aliguori@ama Jan 12   38/1424  " thread-indent "\"RE: [oss-security] Gentoo's \"contributing back\" linux-distros tasks\"\n") "<20210112174919.GA2815@openwall.com>" ("<20201012123020.GA26643@openwall.com>" "<cig3321ri3ihti.fsf@u54e1add816995a33037d.ant.amazon.com>" "<20210110184458.GA2808@openwall.com>" "<f74590e7-e57b-08cf-aec0-9ebd251ca9ac@gentoo.org>" "<20210112174919.GA2815@openwall.com>") nil nil nil nil nil nil nil "RE: [oss-security] Gentoo's \"contributing back\" linux-distros tasks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18068 invoked by uid 550); 12 Jan 2021 17:58:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17574 invoked from network); 12 Jan 2021 17:55:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1610474144; x=1642010144;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=+S5P+9VvPV+KlqFGIGuLsuPWp36h9KfCUBB/ELPiub8=;
  b=dH//9hEy4zDteBek6VfubgMY4dWpjlnkznuWj5K8kvbUY2ai5ZTolBZW
   rafIF9aeIY6ofiRlSX02uk6nKreNW7xN0sjC5IY9/uanHkscnlKyfLFQI
   1o2wBCsvsbbmRUjWxNgpvJ7jU1LA8C74yfeiKZOzus7ZKcAdLAx5iDSWE
   A=;
X-IronPort-AV: E=Sophos;i="5.79,342,1602547200"; 
   d="scan'208";a="77093045"
From: Anthony Liguori <aliguori@amazon.com>
To: Solar Designer <solar@openwall.com>, Thomas Deutschmann
	<whissi@gentoo.org>
CC: <oss-security@lists.openwall.com>
In-Reply-To: <20210112174919.GA2815@openwall.com>
References: <20201012123020.GA26643@openwall.com>
 <cig3321ri3ihti.fsf@u54e1add816995a33037d.ant.amazon.com>
 <20210110184458.GA2808@openwall.com>
 <f74590e7-e57b-08cf-aec0-9ebd251ca9ac@gentoo.org>
 <20210112174919.GA2815@openwall.com>
User-Agent: Notmuch/0.21 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Date: Tue, 12 Jan 2021 09:55:26 -0800
Message-ID: <cig332o8hut4z5.fsf@u54e1add816995a33037d.ant.amazon.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: RE: [oss-security] Gentoo's "contributing back" linux-distros tasks

Solar Designer <solar@openwall.com> writes:
> On Mon, Jan 11, 2021 at 10:09:18PM +0100, Thomas Deutschmann wrote:
>> On 2021-01-10 19:44, Solar Designer wrote:
>> >Gentoo, please let us all know whether you'd like to stay primary for
>> >these tasks, be moved to backup, or something else?
>>
>> I think we will be able to act as backup.
>
> If possible, please stay or become primary for at least one task.  We've
> been asking the same from newly joining distros lately.
>
>> We will need to figure out a workflow to ensure we notice when we are on
>> call but I am sure we will find a way. I'll contact Anthony directly for
>> the details.
>
> Great to know you're coordinating with Anthony (Amazon), but a meaning
> of backup is that you'd also need to take over when the primary fails to
> handle a task without notifying you first.

Current thinking is to setup a private git repository with the various
scripts for generating the wiki report + a running tally of stats from
the list.

This allows for a backup to watch the repo and make sure the stats are
being gathered and backfill/publish if necessary.

This isn't something we had before and I think it will help solve this
problem and also let the infrastructure be carried forward.

We can probably also publish the repository publicly as long as it
trails by two weeks so no on-going issues are disclosed prematurely.

Regards,

Anthony Liguori

>
> Alexander
