Received: (qmail 18330 invoked by uid 550); 17 May 2026 14:33:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32351 invoked from network); 17 May 2026 13:48:18 -0000
Message-ID: <282213fe-14f1-408b-86f4-d880fd800d8c@molgen.mpg.de>
Date: Sun, 17 May 2026 15:48:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20260516150545.7570323b@hboeck.de>
 <agiIlGxE-XCWbpVp@client.brlink.eu>
Content-Language: en-US
From: Donald Buczek <buczek@molgen.mpg.de>
In-Reply-To: <agiIlGxE-XCWbpVp@client.brlink.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Recent Kernel exploits, attack surface reduction,
 example IPSEC

On 5/16/26 17:09, Bernhard R. Link wrote:
> Security wise, supporting allow-lists instead of only deny-lists
> would make it easier for systems where you know beforehand what you
> want (I guess many server systems might end up in there). Of course
> you can just load everything and disable module loading, but then
> you'll need a restart whenever what you load needs to be changed.

By the way, I've just added such a feature to kmod for us:

https://github.molgen.mpg.de/mariux64/kmod/compare/v34.2...v34.2-mpi

Previously, we experimented with a wrapper script for /proc/sys/kernel/modprobe:

https://github.molgen.mpg.de/mariux64/mxtools/pull/532

But this would guard only the modules requested by the kernel, not the modules
pulled in as dependencies. So I think we'll discontinue that approach and use
the kmod modification instead.

Best
Donald
-- 
Donald Buczek
buczek@molgen.mpg.de
Tel: +49 30 8413 1433

