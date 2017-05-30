X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1397" "Tuesday" "30" "May" "2017" "09:29:08" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<3cdc67a2-9858-5328-1d42-baa61d0ba97d@redhat.com>" "44" "Re: [oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux" "^Date:" nil nil "5" "2017053015:29:08" "[oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux" (number mark "        kseifried@re May 30   44/1397  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux\"\n") "<20170530172511.2b795fcb@pc1>" ("<20170530151629.GA19040@localhost.localdomain>" "<20170530172511.2b795fcb@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11999 invoked by uid 550); 30 May 2017 15:29:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11981 invoked from network); 30 May 2017 15:29:22 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PXRry/a5VnK6x8W4t2zdxV9xjuV8hNN9VTJJNejBkvw=;
        b=jUIqZtzeCGLi88ihIy+l5FYokjlpIkmjLGbD2j8PKQcSsNtwJP3yybTXoDGSbiczg6
         5AOvkqSJN0n23B5CexdpZcNQBp+yLkxFrWqzisu/d4xsM1fZkdDwUnkbBqWExZA/u0AS
         uPOqCVpI0DSj1eMDd2D4ghdNhwBKTHvaP6pRV81f7t0YqKJUo35DO/WJVldV9bWP1Gv1
         pxjkPBCBkSQISsAenwmCdySR6DSI9Ys1CzGoyMWmQWWBNhFtnCBv84hZqPr+KUvO08c4
         el01obKsjgJEUDEhpvPWyK7Guf1GHOYsFhhRHH/0MIaSVoBVOrICmkpUPY5CCEukErk/
         fJ6Q==
X-Gm-Message-State: AODbwcDaBpafSQ+L19sZgf1AW9SVVHneLuGBVM7D9I8vLZkMdgaro0F1
	RndmshbC2Op5QvJfrqJ88w==
X-Received: by 10.55.4.65 with SMTP id 62mr11974224qke.198.1496158151094;
        Tue, 30 May 2017 08:29:11 -0700 (PDT)
References: <20170530151629.GA19040@localhost.localdomain>
 <20170530172511.2b795fcb@pc1>
Message-ID: <3cdc67a2-9858-5328-1d42-baa61d0ba97d@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170530172511.2b795fcb@pc1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Tue, 30 May 2017 09:29:08 -0600
From: "kseifried@redhat.com" <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2017-1000367 in
 Sudo's get_process_ttyname() for Linux
To: oss-security@lists.openwall.com, =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>



On 05/30/2017 09:25 AM, Hanno Böck wrote:
> On Tue, 30 May 2017 08:16:29 -0700
> Qualys Security Advisory <qsa@qualys.com> wrote:
> 
>> Qualys Security Advisory
>>
>> CVE-2017-1000367 in Sudo's get_process_ttyname() for Linux
> 
> Did Mitre really just add multiple new digits to CVEs or is this a typo?
> 
> AFAIR they introduced 5-digit-CVEs relatively recently, going to
> 7-digit without any public announcement seems unlikely.

We did this 3 years ago:

https://cve.mitre.org/cve/identifiers/syntaxchange.html

Examples

Examples of identifiers in the new CVE ID syntax are included below.
There is no limit on the number of arbitrary digits. Leading 0’s will
only be used in IDs 1 to 999, as shown in column one below.

IDs with 4 digits	IDs with 5 digits	IDs with 6 digits	IDs with 7 digits
CVE-2014-0001	CVE-2014-10000	CVE-2014-100000	CVE-2014-1000000
CVE-2014-3127	CVE-2014-54321	CVE-2014-456132	CVE-2014-7654321
CVE-2014-9999	CVE-2014-99999	CVE-2014-999999	CVE-2014-9999999
NOTE: Some of the CVE ID examples above have not yet been assigned.

The DWF CNA has the block CVE-YEAR-1000000 through CVE-YEAR-1999999 so
yes, these are legitimate. E.g.:

http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000001




-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
