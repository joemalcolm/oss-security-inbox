X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1224" "Tuesday" "22" "September" "2015" "10:42:11" "+0200" "Florian Weimer" "fweimer@redhat.com" "<56011463.9060705@redhat.com>" "29" "Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" nil nil nil "9" "2015092208:42:11" "[oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" (number mark "        fweimer@redh Sep 22   29/1224  " thread-indent "\"Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities\"\n") "<56005039.1040701@gmail.com>" ("<55FFC9BD.6030503@quarkslab.com>" "<5600451D.5060404@gmail.com>" "<56005039.1040701@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24169 invoked by uid 550); 22 Sep 2015 08:42:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24141 invoked from network); 22 Sep 2015 08:42:25 -0000
References: <55FFC9BD.6030503@quarkslab.com> <5600451D.5060404@gmail.com>
 <56005039.1040701@gmail.com>
Message-ID: <56011463.9060705@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <56005039.1040701@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 22 Sep 2015 10:42:11 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel
 vulnerabilities
To: oss-security@lists.openwall.com

On 09/21/2015 08:45 PM, Daniel Micay wrote:
>> CVE-2015-1800 is prevented by the STRUCTLEAK GCC plugin.
> 
> So I'm wrong about this part, as pipacs pointed out the __user marking
> is missing here, so it won't memset it in this case.
> 
> The missing __user would be found by upstream's sparse tool or the PaX
> checker plugin though.
> 
> The STRUCTLEAK plugin could also be extended to zero based on the
> copy_*_user calls, but that's probably not very useful since the missing
> __user markings could just be found via the existing tooling and fixed.

Did you measure the performance impact of initializing *all* local
variables to zero?  If the variable is not addressible (that is, if it
is an SSA_NAME), this is essentially free.

In our testing, we only saw a performance loss in socket address
handling, where a large placeholder struct is allocated, and the
performance loss is quite noticeable when processing small packets.
Unfortunately, this is were information disclosure happens in the past,
so excluding this very spot for performance reasons is not very satisfying.

The GCC patch we used is here:

<https://gcc.gnu.org/ml/gcc-patches/2014-06/msg00615.html>

-- 
Florian Weimer / Red Hat Product Security
