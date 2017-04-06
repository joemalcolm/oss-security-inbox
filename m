X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["330" "Thursday" "6" "April" "2017" "08:04:47" "+0200" "Florian Weimer" "fweimer@redhat.com" "<455b67a9-6d14-b374-8140-51546a53738d@redhat.com>" "14" "Re: [oss-security] libxslt math.random issue" nil nil nil "4" "2017040606:04:47" "[oss-security] libxslt math.random issue" (number mark "U       fweimer@redh Apr  6   14/330   " thread-indent "\"Re: [oss-security] libxslt math.random issue\"\n") "<20170406054400.GC32355@suse.de>" ("<20170406054400.GC32355@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28145 invoked by uid 550); 6 Apr 2017 06:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28127 invoked from network); 6 Apr 2017 06:05:06 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 6B7BF61B8C
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 6B7BF61B8C
To: oss-security@lists.openwall.com
References: <20170406054400.GC32355@suse.de>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <455b67a9-6d14-b374-8140-51546a53738d@redhat.com>
Date: Thu, 6 Apr 2017 08:04:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170406054400.GC32355@suse.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Thu, 06 Apr 2017 06:04:54 +0000 (UTC)
Subject: Re: [oss-security] libxslt math.random issue

On 04/06/2017 07:44 AM, Marcus Meissner wrote:

> FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/

The C standard does not allow it.

”
If rand is called before any calls to srand have been made, the same 
sequence shall be generated as when srand is first called with a seed 
value of 1.
”

Thanks,
Florian
