X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Friday" "17" "August" "2018" "10:03:40" "+0200" "Florian Weimer" "fweimer@redhat.com" "<a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>" "22" "Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling" nil nil nil "8" "2018081708:03:40" "[oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling" (number mark "U       fweimer@redh Aug 17   22/707   " thread-indent "\"Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling\"\n") "<20180817005105.GB3712@sin.redhat.com>" ("<20180817005105.GB3712@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18317 invoked by uid 550); 17 Aug 2018 08:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18136 invoked from network); 17 Aug 2018 08:03:54 -0000
To: Doran Moppert <dmoppert@redhat.com>
References: <20180817005105.GB3712@sin.redhat.com>
Cc: oss-security@lists.openwall.com, Frediano Ziglio <fziglio@redhat.com>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>
Date: Fri, 17 Aug 2018 10:03:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180817005105.GB3712@sin.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Fri, 17 Aug 2018 08:03:42 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Fri, 17 Aug 2018 08:03:42 +0000 (UTC) for IP:'10.11.54.5' DOMAIN:'int-mx05.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'fweimer@redhat.com' RCPT:''
Subject: Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential
 heap corruption when demarshalling

On 08/17/2018 02:51 AM, Doran Moppert wrote:
>      +        if (SPICE_UNLIKELY((start + 2) > message_end)) {
>      +            goto error;
>      +        }

These checks are still technically invalid because start + 2 is not a 
valid pointer if it points past the allocated object.

This is more problematic here:

>     +            if (SPICE_UNLIKELY((start2 + 2 + cursor_u__nw_size) > message_end)) {
>     +                goto error;
>     +            }

If cursor_u__nw_size results in pointer wraparound, the check might fail 
incorrectly.

The commit message quotes the right pattern, nw_size > (uintptr_t) 
(message_end - start), but it is not used in the actual code AFAICS.

Thanks,
Florian
