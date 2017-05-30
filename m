X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["256" "Tuesday" "30" "May" "2017" "15:47:02" "+0200" "Florian Weimer" "fweimer@redhat.com" "<ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>" "8" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053013:47:02" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        fweimer@redh May 30    8/256   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<1496150738.941.5.camel@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" "<1496149333.941.1.camel@gmail.com>" "<099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>" "<1496150738.941.5.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28193 invoked by uid 550); 30 May 2017 13:47:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28172 invoked from network); 30 May 2017 13:47:16 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BEB60804E0
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com BEB60804E0
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
 <1496145073.1459.1.camel@gmail.com>
 <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
 <1496149333.941.1.camel@gmail.com>
 <099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>
 <1496150738.941.5.camel@gmail.com>
Message-ID: <ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <1496150738.941.5.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 30 May 2017 13:47:04 +0000 (UTC)
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 15:47:02 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: Daniel Micay <danielmicay@gmail.com>, oss-security@lists.openwall.com

On 05/30/2017 03:25 PM, Daniel Micay wrote:
> Secure boot means verifying boot chain from a root of trust in hardware.

My comments were specifically about UEFI Secure Boot, which apparently
behaves quite differently from what you expect.

Thanks,
Florian
