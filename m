X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1546" "Monday" "6" "June" "2016" "15:54:13" "+0200" "Adam Maris" "amaris@redhat.com" "<0d0061c0-7c51-98cd-e62b-073743e31d25@redhat.com>" "49" "Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" "^Cc:" nil nil "6" "2016060613:54:13" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" (number mark "        amaris@redha Jun  6   49/1546  " thread-indent "\"Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions\"\n") "<CACn5sdSBwUpHD6KVqNnGfRj_7ofzmG0VHxz=xTBfe3vSVNmW0g@mail.gmail.com>" ("<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>" "<87d1otk0an.fsf@prune.linuxpenguins.xyz>" "<CACn5sdSBwUpHD6KVqNnGfRj_7ofzmG0VHxz=xTBfe3vSVNmW0g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25889 invoked by uid 550); 6 Jun 2016 13:54:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25865 invoked from network); 6 Jun 2016 13:54:28 -0000
References: <20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
 <87d1otk0an.fsf@prune.linuxpenguins.xyz>
 <CACn5sdSBwUpHD6KVqNnGfRj_7ofzmG0VHxz=xTBfe3vSVNmW0g@mail.gmail.com>
Message-ID: <0d0061c0-7c51-98cd-e62b-073743e31d25@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <CACn5sdSBwUpHD6KVqNnGfRj_7ofzmG0VHxz=xTBfe3vSVNmW0g@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------268B802B2B95401A4F8A2495"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 06 Jun 2016 13:54:16 +0000 (UTC)
Cc: cve-assign@mitre.org
Date: Mon, 6 Jun 2016 15:54:13 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with
 circular definitions
To: oss-security@lists.openwall.com

--------------268B802B2B95401A4F8A2495
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 15/05/16 09:05, Gustavo Grieco wrote:
> 2016-05-11 0:36 GMT+02:00 Brian May <brian@linuxpenguins.xyz>:
>> Just did a git bisect against the source. Assuming I got this right, the
>> following commits fixed the issue.
> Thanks for taking the time to do the git bisect!
>
>>>> They affect the following functions:
>>>> * rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
>>>> rsvg_cairo_generate_mask: reproducible using circular-1.svg
>>> Use CVE-2016-4347.
>> Fixed in:
>>
>> commit a51919f7e1ca9c535390a746fbf6e28c8402dc61
>> Author: Benjamin Otte <otte@redhat.com>
>> Date:   Wed Oct 7 08:45:37 2015 +0200
>>
>>     rsvg: Add rsvg_acquire_node()
>>
>>     This function does proper recursion checks when looking up resources
>>     from URLs and thereby helps avoiding infinite loops when cyclic
>>     references span multiple types of elements.
>
> I think CVE-2016-4347 and CVE-2015-7558 (stack exhaustion due to
> cyclic dependency, reported here:
> http://www.openwall.com/lists/oss-security/2015/12/21/5) are in fact,
> the same issue. This is probably my fault (sorry!).
>
> MITRE: We should reject the the newly assigned one?
>
> Regards,
> Gustavo.

CC'ing MITRE in case they missed this question. We confirm it is a
duplication. Which CVE should be rejected?

Thanks!

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


--------------268B802B2B95401A4F8A2495--
