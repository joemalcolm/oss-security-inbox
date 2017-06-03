X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Saturday" "3" "June" "2017" "12:06:23" "+0200" "Florian Weimer" "fweimer@redhat.com" "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>" "29" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "6" "2017060310:06:23" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        fweimer@redh Jun  3   29/1465  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<20170530165015.GA4884@openwall.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32006 invoked by uid 550); 3 Jun 2017 10:06:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31977 invoked from network); 3 Jun 2017 10:06:38 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 926904E4CB
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 926904E4CB
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
 <20170530165015.GA4884@openwall.com>
Message-ID: <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170530165015.GA4884@openwall.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Sat, 03 Jun 2017 10:06:25 +0000 (UTC)
Date: Sat, 3 Jun 2017 12:06:23 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

On 05/30/2017 06:50 PM, Solar Designer wrote:
> I guess Daniel might be associating the other side's arguments with Red
> Hat's because Florian was posting from a redhat.com address.  I have no
> idea whether Florian actually spoke on behalf of Red Hat or not, but

I'm not a Red Hat spokesperson, and I did not speak for Red Hat.  I hope
I don't have to include a silly disclaimer in every message to counter
such assumptions.

> either way I think the focus on Red Hat is excessive - e.g., in the
> distros list thread on the previous issue, another distro vendor
> inquired about the proposed public disclosure date, implying they also
> might care.  A better summary would be: understanding & opinions vary.

Right, I think those distributions that strive to boot under the
Microsoft trust root for UEFI Secure Boot may also have concerns about
this issue.  Part of the problem with UEFI Secure Boot is that no one
has documented clear security objectives for UEFI Secure Boot.  Fedora
sort of evolved into “no unsigned code running in ring 0 without
virtualization”.  From what I can tell, Microsoft picked that up and
urged other distributions under their trust root to implement that as well.

If restricted access to ring 0 is the goal (and I think it currently
is), then Linux kernel command line parsing bugs exploitable for code
execution can be used to bypass an intended security policy, and
qualifies as a security vulnerability.

Thanks,
Florian
