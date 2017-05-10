X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1031" "Wednesday" "10" "May" "2017" "18:37:42" "+0200" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+zA4QumKnwDCMtXPPpbUb=WObQnV1hKJ-yAA8z8HHpi2Q@mail.gmail.com>" "29" "[oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" nil nil nil "5" "2017051016:37:42" "[oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" (number mark "U       andreyknvl@g May 10   29/1031  " thread-indent "\"[oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring\"\n") "<CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>" ("<CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>" "<CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3654 invoked by uid 550); 10 May 2017 16:37:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3633 invoked from network); 10 May 2017 16:37:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=wOWyPmjyn2BBtn3N/4CiH6oGdoHBVx1+5qg1FFMvTB0=;
        b=o6K2oZTh0piZJBD+qMT/r7Kgrioc3b2bfyyNxhawCaG2J2UoVriedL7yIs9R2v/EsR
         CjPBYC1GEW5rfrb+OVh5ng/F1x01dHG9VF7o1YPMdiVXTY1yOWcTTQ1rmmliIGHlypfO
         4W9F2JLd9uK7sS+JCCaL43OLKGJVLZCqguogMJh8ITrZBSKMGE7uyKB+cvH5H1xsPEi9
         DDxGwEQcY+tIa2YKDAtjRTmq+/NjEqTPfWTUyhrSSv4xWlutnDB+nrmNwKPjxeyS4jRA
         Lc/+lohkWoDFFgJoNUog1OxpoNCY60v0yLeaD/9V8SereRAy8LkzkiLisZJo6z2RIhF0
         30gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=wOWyPmjyn2BBtn3N/4CiH6oGdoHBVx1+5qg1FFMvTB0=;
        b=q2QxgVOOLRIHD3ye0xfKh7b34zDXA5sjp0LJXweWDL3tgGPq1cWX6z+3eIDp7KcWnk
         g8PBVz9XlYpRKNECQ8aGZxHBqqs5HgX23N2d60H3j+sQ0wTerO6/1Un6FtEQkrTLV/mT
         SxbcRx2kmvRtj1BqSsf+mfAk/XWgUF6te2oT+30isJVbtw7hgUOXnOSb6EGwdXA1x209
         9YO/U6yX5TdmX22DW7r97FAs/V6XD7YPvCld09OKqXUe8+c/u9JhKHxQwZj5OATgwElY
         jb8xfqkGmSr/T/i+rgP87e7xZvKCRB/8vwHpParB/oI67VIGUcxY1w49naO1IGQy5QZn
         wsZw==
X-Gm-Message-State: AODbwcCgO2h8ADLNlA+K1lnULTJjIPUfaNj16pjW3XK7c0vm3E+7RrC6
	bIXaa6+fOYdEGj6gmXvBVU4K4Bl6y023/UYIgg==
X-Received: by 10.37.113.87 with SMTP id m84mr5760998ybc.70.1494434263281;
 Wed, 10 May 2017 09:37:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>
References: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>
 <CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 10 May 2017 18:37:42 +0200
Message-ID: <CAAeHK+zA4QumKnwDCMtXPPpbUb=WObQnV1hKJ-yAA8z8HHpi2Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring

On Fri, Mar 31, 2017 at 7:20 PM, Andrey Konovalov <andreyknvl@google.com> wrote:
> On Fri, Mar 31, 2017 at 2:03 PM, Andrey Konovalov <andreyknvl@google.com> wrote:
>> Hi,
>>
>> CVE-2017-7308 [1] was assigned to the following issue:
>>
>> The packet_set_ring function in net/packet/af_packet.c in the Linux
>> kernel through 4.10.6 does not properly validate certain block-size
>> data, which allows local users to cause a denial of service (overflow)
>> or possibly have unspecified other impact via crafted system calls.
>>
>> The fix is sent upstream [2].
>
> Update: the fix actually consists of 3 patches:
>
> https://patchwork.ozlabs.org/patch/744811/
> https://patchwork.ozlabs.org/patch/744813/
> https://patchwork.ozlabs.org/patch/744812/

Another update: this turned out to be exploitable.

Details are here:
https://googleprojectzero.blogspot.com/2017/05/exploiting-linux-kernel-via-packet.html

>
>>
>> [1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7308
>>
>> [2] https://patchwork.ozlabs.org/patch/744811/
