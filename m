X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1978" "Monday" "3" "April" "2017" "10:01:22" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87lgrhx6lp.fsf@redhat.com>" "55" "Re: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" nil nil nil "4" "2017040308:01:22" "[oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" (number mark "U       mprpic@redha Apr  3   55/1978  " thread-indent "\"Re: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring\"\n") "<20170401204457.GA12965@openwall.com>" ("<CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>" "<CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>" "<20170401204457.GA12965@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24440 invoked by uid 550); 3 Apr 2017 08:01:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24422 invoked from network); 3 Apr 2017 08:01:37 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A853BC04B924
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=mprpic@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A853BC04B924
From: Martin Prpic <mprpic@redhat.com>
To: oss-security@lists.openwall.com
References: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com> <CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com> <20170401204457.GA12965@openwall.com>
User-agent: mu4e 0.9.9.5; emacs 24.3.1
In-reply-to: <20170401204457.GA12965@openwall.com>
Date: Mon, 03 Apr 2017 10:01:22 +0200
Message-ID: <87lgrhx6lp.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 03 Apr 2017 08:01:25 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring

Solar Designer writes:

> To Red Hat folks:
>
> On Fri, Mar 31, 2017 at 07:20:20PM +0200, Andrey Konovalov wrote:
>> On Fri, Mar 31, 2017 at 2:03 PM, Andrey Konovalov <andreyknvl@google.com> wrote:
>> > CVE-2017-7308 [1] was assigned to the following issue:
>> >
>> > The packet_set_ring function in net/packet/af_packet.c in the Linux
>> > kernel through 4.10.6 does not properly validate certain block-size
>> > data, which allows local users to cause a denial of service (overflow)
>> > or possibly have unspecified other impact via crafted system calls.
>> >
>> > The fix is sent upstream [2].
>> 
>> Update: the fix actually consists of 3 patches:
>> 
>> https://patchwork.ozlabs.org/patch/744811/
>> https://patchwork.ozlabs.org/patch/744813/
>> https://patchwork.ozlabs.org/patch/744812/
>> 
>> > [1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7308
>> >
>> > [2] https://patchwork.ozlabs.org/patch/744811/
>
> Red Hat currently says all RHEL starting with RHEL5 are affected:
>
> https://access.redhat.com/security/cve/cve-2017-7308
>
> However, the corresponding Bugzilla entry has no mention of that:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1437404
>
> So is it just a better-safe-than-sorry default to list products as
> affected until known otherwise?  If so, maybe Unknown would be better?
>
> RHEL5 doesn't yet include TPACKET_V3.  I did not check RHEL6.
>
> https://github.com/torvalds/linux/commit/f6fb8f100b807378fda19e83e5ac6828b638603a
>
> Alexander

Hey Alexander,

Thanks for the note. The issue in question has not yet been fully
analyzed and I only did a quick check whether the affected code was
present in RHEL 5 when filing it and must have misread my search results
since the affected code is definitely not in RHEL 5. Sorry about that.

We do have an "Under investigation" state for the affectedness table on
the CVE pages, which is used when no triage has been done on a filed
issue.

-- 
Martin Prpič / Red Hat Product Security
