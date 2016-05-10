X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1164" "Wednesday" "11" "May" "2016" "08:36:48" "+1000" "Brian May" "brian@linuxpenguins.xyz" "<87d1otk0an.fsf@prune.linuxpenguins.xyz>" "43" "Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" "^Cc:" nil nil "5" "2016051022:36:48" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" (number mark "        brian@linuxp May 11   43/1164  " thread-indent "\"Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions\"\n") "<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>" ("<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29969 invoked by uid 550); 10 May 2016 22:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29948 invoked from network); 10 May 2016 22:37:10 -0000
X-Virus-Scanned: amavisd-new at kolabnow.com
In-Reply-To: <20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
References: <20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
Message-ID: <87d1otk0an.fsf@prune.linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Wed, 11 May 2016 08:36:48 +1000
From: Brian May <brian@linuxpenguins.xyz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions
To: gustavo.grieco@gmail.com

Just did a git bisect against the source. Assuming I got this right, the
following commits fixed the issue.

>> They affect the following functions:
>
>> * rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
>> rsvg_cairo_generate_mask: reproducible using circular-1.svg
>
> Use CVE-2016-4347.

Fixed in:

commit a51919f7e1ca9c535390a746fbf6e28c8402dc61
Author: Benjamin Otte <otte@redhat.com>
Date:   Wed Oct 7 08:45:37 2015 +0200

    rsvg: Add rsvg_acquire_node()
    
    This function does proper recursion checks when looking up resources
    from URLs and thereby helps avoiding infinite loops when cyclic
    references span multiple types of elements.


>> * _rsvg_css_normalize_font_size: reproducible using circular-2.svg
>
> Use CVE-2016-4348.

Fixed in:

commit d1c9191949747f6dcfd207831d15dd4ba00e31f2
Author: Benjamin Otte <otte@redhat.com>
Date:   Wed Oct 7 05:31:08 2015 +0200

    state: Store mask as reference
    
    Instead of immediately looking up the mask, store the reference and look
    it up on use.


This fix is two commits before the other commit.
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
