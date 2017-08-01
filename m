X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3321" "Tuesday" "1" "August" "2017" "13:36:07" "-0700" "akuster" "akuster@mvista.com" "<a8482eb5-f245-9a3a-0fe2-5ba206358205@mvista.com>" "62" "Re: [oss-security] CoreOS membership to linux-distros (updated)" nil nil nil "8" "2017080120:36:07" "[oss-security] CoreOS membership to linux-distros (updated)" (number mark "U       akuster@mvis Aug  1   62/3321  " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros (updated)\"\n") "<20170731205316.GA12811@openwall.com>" ("<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" "<20170721132647.GA4223@openwall.com>" "<20170731205316.GA12811@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30669 invoked by uid 550); 1 Aug 2017 20:36:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30650 invoked from network); 1 Aug 2017 20:36:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=NhTf7+EjJpKlSCToXw/RN71w4JRfWwf5U9GvTQqXrm4=;
        b=gkboYgDJSUTTqqpYMyfN1TH9zmilMBxw/t4Q6+MnllYeXQfPBRfHb2PwcEK6o4gkl6
         HN1rtcXkjvuvlBm0sPU1vHwn1/7XNV91L0PQVSXierNIbYhjTHgX9KmkyQ6oIduFqJ2q
         4ESg3valOjdjMyLJa4g8heR99no2apIUM/dsqldnOyAY88CMACq7JeNccS6+SOBxe+7p
         U3oQcOqg2OPbNxeA1rY1YoQRbxCEbUcQxsj7K8NlTa830or4mxuHZaxUmAJU447Dv1fd
         UqCTUP4LpCkSUiiS/YJpJ1zoXdAebHXibfQeEIn1rFba4V0THfnRYZUNFNvtS3xQCQ5w
         1X+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=NhTf7+EjJpKlSCToXw/RN71w4JRfWwf5U9GvTQqXrm4=;
        b=JBBIJcca0EPoe4/wXYob4fO4nh7EQyuOePxtAENlfa6f1z93SWEuaL3IvNt+U4porZ
         N6dqfY8Glmd3OzRdxE75WMclc6UXv606FbJeYv52ym7Hc21QkqfefEbV+gTUc8sBOtQB
         HwZpeWbQVbl+nyQAEuzLjQsp70ckW7kmIz2kDIsW4mUiXa97LAy8Z8DoNvX5cK1qojoj
         e/rce5Irohb2d4GB8nhYdzI5lG6yMhqrGbNeaYaRoo878oKxurrEDvRGo1WLKt8HYdaa
         FDeZJV6cu1dz1/Ax+LPU6g6X5ytqpUVUDpWdUVECvFTYWSsvYjI8Qhn/O4GwbBwvJwOm
         7GXg==
X-Gm-Message-State: AIVw1115AF5g56svcGHMtYbg0EbfPc3GyvQX3FD+3V8NKE5gU9tSJU61
	rXJdz3knzKOyfWi2SvzjAg==
X-Received: by 10.99.175.82 with SMTP id s18mr3254003pgo.406.1501619769219;
        Tue, 01 Aug 2017 13:36:09 -0700 (PDT)
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
 <20170721132647.GA4223@openwall.com> <20170731205316.GA12811@openwall.com>
From: akuster <akuster@mvista.com>
Message-ID: <a8482eb5-f245-9a3a-0fe2-5ba206358205@mvista.com>
Date: Tue, 1 Aug 2017 13:36:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170731205316.GA12811@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [oss-security] CoreOS membership to linux-distros (updated)



On 07/31/2017 01:53 PM, Solar Designer wrote:
> On Fri, Jul 21, 2017 at 03:26:47PM +0200, Solar Designer wrote:
>> I intend to add CoreOS to linux-distros in early August unless there are
>> any well-reasoned objections by then.
> I've just added CoreOS to linux-distros.
>
> On Tue, Jul 18, 2017 at 02:56:23PM -0700, Euan Kemp wrote:
>> Based on your previous messages, it sounds like it???s expected for us to
>> inherit 'primary' for the administrative tasks of:
>>> 1. Promptly review new issue reports for meeting the list's requirements and confirm receipt of the report and, when necessary, inform the reporter of any issues with their report (e.g., obviously not actionable by the distros) and request and/or propose any required yet missing information (most notably, a tentative public disclosure date) - primary: CloudLinux, backup: vacant
>>> 2. If the proposed public disclosure date is not within list policy, insist on getting this corrected and propose a suitable earlier date - primary: CloudLinux, backup: vacant
> Off-list, CloudLinux kindly offered this:
>
> On Sun, Jul 23, 2017 at 06:15:23AM -0700, Igor Seletskiy wrote:
>> We can pickup #3 & #6 as #1 & #2 are picked up by CoreOS.
> On Tue, Jul 18, 2017 at 02:56:23PM -0700, Euan Kemp wrote:
>> I???ll also volunteer us for the administrative task of:
>>> 6. If multiple issues are reported at once, see if any of them can reasonably be made public sooner than the rest, and if so help untangle them and stay on top of their disclosure process
>> We???ll be happy to be on the lookout for possible conflation of issues
>> and kick off discussion if we think something can be broken up.
> Maybe Igor had overlooked the clash on #6, but anyway this combination
> resulted in:
>
> 1. Promptly review new issue reports for meeting the list's requirements
> and confirm receipt of the report and, when necessary, inform the
> reporter of any issues with their report (e.g., obviously not actionable
> by the distros) and request and/or propose any required yet missing
> information (most notably, a tentative public disclosure date)
> - primary: CoreOS, backup: Oracle
>
> 2. If the proposed public disclosure date is not within list policy,
> insist on getting this corrected and propose a suitable earlier date
> - primary: CoreOS, backup: CloudLinux
>
> 3. Evaluate if the issue (or one of the issues) is effectively already
> public (e.g., a fix is committed upstream with a descriptive message)
> or/and is low severity and thus the report (or its portion pertaining to
> the issue) should be made public right away for one or both of these
> reasons, get a few other list members to confirm this understanding, and
> if there are no objections then communicate this strong preference to
> the reporter
> - primary: CloudLinux, backup: vacant
>
> 6. If multiple issues are reported at once, see if any of them can
> reasonably be made public sooner than the rest, and if so help untangle
> them and stay on top of their disclosure process
> - primary: CoreOS, backup: CloudLinux
>
> This looks fine to me.
>
> However, many distros still haven't picked up a task, and many tasks are
> not picked up by any distro.  That should change.

Is there a consolidated summary on where we stand on what has been 
spoken for?

regards,
Armin
> Alexander

