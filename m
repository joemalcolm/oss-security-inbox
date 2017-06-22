X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["570" "Thursday" "22" "June" "2017" "12:19:35" "+0200" "Florian Weimer" "fweimer@redhat.com" "<a6f98d7e-7cc4-46f4-3cb9-743950c90a86@redhat.com>" "13" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062210:19:35" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        fweimer@redh Jun 22   13/570   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<1498111252.32057.3.camel@gmail.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170621214006.GB28151@localhost.localdomain>" "<6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>" "<1498111252.32057.3.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7302 invoked by uid 550); 22 Jun 2017 10:19:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7282 invoked from network); 22 Jun 2017 10:19:50 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C335961982
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com C335961982
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
 <20170621214006.GB28151@localhost.localdomain>
 <6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>
 <1498111252.32057.3.camel@gmail.com>
Message-ID: <a6f98d7e-7cc4-46f4-3cb9-743950c90a86@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <1498111252.32057.3.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 22 Jun 2017 10:19:38 +0000 (UTC)
Date: Thu, 22 Jun 2017 12:19:35 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Daniel Micay <danielmicay@gmail.com>,
 Qualys Security Advisory <qsa@qualys.com>

On 06/22/2017 08:00 AM, Daniel Micay wrote:
> Is it planned to have glibc use a larger 1M gap for secondary stacks
> rather than a single guard page? That would be a *lot* easier than it
> was to set it up for the main thread stack. It follows the main thread
> stack rlimit as a guideline so it seems to make sense to use the same
> guard region size too. If it ends up exposed as a sysctl, it could read
> the current value from there.

On the glibc side, we are waiting for the kernel interface for the
configurable gap size to materialize upstream.

Thanks,
Florian
