X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["546" "Tuesday" "30" "May" "2017" "14:52:58" "+0200" "Florian Weimer" "fweimer@redhat.com" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" "13" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053012:52:58" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        fweimer@redh May 30   13/546   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<1496145073.1459.1.camel@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5192 invoked by uid 550); 30 May 2017 12:53:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5167 invoked from network); 30 May 2017 12:53:12 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BE4388124D
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com BE4388124D
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
 <1496145073.1459.1.camel@gmail.com>
Message-ID: <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <1496145073.1459.1.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 30 May 2017 12:53:00 +0000 (UTC)
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 14:52:58 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com, Daniel Micay <danielmicay@gmail.com>

On 05/30/2017 01:51 PM, Daniel Micay wrote:
> It's unreasonable to consider the kernel line untrusted. A CVE being
> issued for one of these issues didn't make sense.

It's a potential Secure Boot bypass, so it matters in some theoretical
sense to some downstreams which carry those Secure Boot patches.

(Although I have yet to see anyone to revoke a signature on a kernel
with known root-to-ring-0 escalations, so the practical impact isn't
large because an attack could still downgrade to a kernel with an
exploitable vulnerability.)

Florian
