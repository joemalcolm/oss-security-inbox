X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["598" "Friday" "23" "June" "2017" "07:37:54" "+0200" "Florian Weimer" "fweimer@redhat.com" "<af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>" "19" "Re: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions" nil nil nil "6" "2017062305:37:54" "[oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions" (number mark "U       fweimer@redh Jun 23   19/598   " thread-indent "\"Re: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions\"\n") "<20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>" ("<20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11515 invoked by uid 550); 23 Jun 2017 05:38:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11484 invoked from network); 23 Jun 2017 05:38:08 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C9E247F6AE
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com C9E247F6AE
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
References: <20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>
Date: Fri, 23 Jun 2017 07:37:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 23 Jun 2017 05:37:57 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via
 setuid/world-writable file permissions

On 06/22/2017 11:01 PM, Simon McVittie wrote:
> * If you are using Flatpak to install apps from a third-party vendor,
>   then there is already a trust relationship: the app is sandboxed, but
>   the third-party vendor chooses what parameters are used for the sandbox.

Doesn't this qualify as a vulnerability in its own right?  Flatpak
advertises countermeasures against malicious applications:

“
Secure, sandboxed applications

Flatpak's sandboxing technology prevents exploits and hinders malicious
applications.
”

But maybe it's like selling a VPN which isn't encrypted.

Thanks,
Florian
