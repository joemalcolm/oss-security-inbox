X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2675" "Friday" "29" "July" "2016" "20:42:03" "-0700" "lazytyped" "lazytyped@gmail.com" "<83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>" "65" "Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" "^Cc:" nil nil "7" "2016073003:42:03" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        lazytyped@gm Jul 29   65/2675  " thread-indent "\"Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)\"\n") "<20160729115843.386c87dc@pc1>" ("<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>" "<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>" "<20160729115843.386c87dc@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25859 invoked by uid 550); 30 Jul 2016 03:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25841 invoked from network); 30 Jul 2016 03:42:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=fjXCweEliU4qcvqDNZPlDLOLq3ve5rFDnY1/0Hu7iiA=;
        b=xQ/2tH8ebYgU1gXDgXYyviJ//A30Va1tdlvJl2otUJvMCA+LLO+KqHEbexlF1PfniU
         wFqJLvidYz/cHrOAdJOCXRGMNmR6Z5zG9hO5RCRGq5r3OCzzPwuE+vbt0J4bNjRRgUNW
         N7o8mFpYIzr2MW3+qsUqPytLFWrTK/BWxeeK0TgG7RFeDdFSCcw7hfo3Lxt/22RpkwFC
         GVeVgfzEgeD7zkpByI2xKz5VH5QHjOJ5CzO6/lZnM+sE7BanlkFaIT41nBNm+svSzI/z
         SB8FA4AcQQ5wWT7Z6601Zb0imUhrq7z+mzGLB9z7o1n6fcpqoVNlrOc10BzMvIyzL8Ti
         dKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=fjXCweEliU4qcvqDNZPlDLOLq3ve5rFDnY1/0Hu7iiA=;
        b=muP1HC99XJd80fe8Vpp4Ctj87b8fRtdybgnKUo42W8aACUw/25hSwKJaRP4pngd5hS
         vYvst8DnqHXRpCTubjTiAnyFVRLxkb9qTCh2SxXAq1NZEbDIGswxFwvqK0Eh5OVldGRL
         ymxWEy+wC8HVC8W3WFuB0LkFQmEQhdfPmWEGUGt51D6szZ5LpPZ9+gEQTFYg5hDIc+5o
         DFsg2rn9Otwql+XZGnXlDSvrwuvmscCKX4BfSD9NMrfjVrrxYDJJfZ2IqAABx7CUg35a
         Pv1CvBn7kk0pz8L/5BVuFaWZ8ZFM3ieukYkPp3gBhtPymi/Zk8bxroPBjCnymJCvtHF/
         XV4A==
X-Gm-Message-State: AEkoouvBb4E+9HKadAYJXO4frvPf5fl4LClcrUPiZiWm7tI4zoL2dcxTDH2Y3pxm4YM3ag==
X-Received: by 10.55.69.69 with SMTP id s66mr55073277qka.100.1469850129831;
        Fri, 29 Jul 2016 20:42:09 -0700 (PDT)
References: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
 <abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>
 <20160729115843.386c87dc@pc1>
Message-ID: <83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160729115843.386c87dc@pc1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: oss-security@lists.openwall.com
Date: Fri, 29 Jul 2016 20:42:03 -0700
From: lazytyped <lazytyped@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Use after free in my_login() function of
 DBD::mysql (Perl module)
To: =?UTF-8?Q?Hanno_B=c3=b6ck?= <hanno@hboeck.de>



On 7/29/16 8:58 AM, Hanno Böck wrote:
> On Thu, 28 Jul 2016 06:31:20 -0700
> lazytyped <lazytyped@gmail.com> wrote:
>
>> Quick question:
>>
>> - I guess the affecting function call is the following:
>>
>>     do_error(dbh, mysql_errno(imp_dbh->pmysql),
>>                    mysql_error(imp_dbh->pmysql)
>> ,mysql_sqlstate(imp_dbh->pmysql));
>>
>> which one of those calls provides an exploitation path? They seem all
>> reads off the free'd structure.
>>
>> I see in the bug report: " (I think use after free's can be serious
>> and potentially lead to malfunction and security issues)" and would
>> like to understand more about the rationale.
> Hi,
>
> I don't have a practical exploit scenario, thus my careful wording (the
> best answer to "is this exploitable?" is often simply "I don't know").
>
> It's a use after free, should be undeniable that it should be fixed.

Yes, but whether this is a security bug or not is a different matter. 
The main reason why I'm bringing this up is that security bugs have a 
significantly different treatment by OS teams and a quite different 
expectation of turnaround time by users/customers.

But once a CVE is out (as is in this case), the bug has been officially 
declared as a security issue, there is no turning back.

So, yes, a use-after-free is a bug, but not necessarily a security one, 
yet the CVE makes it as much, with all the associated process. It would 
be great if we could get a bit more triaging by the owner of the code or 
the submitter before declaring the bug one thing or the other 
(especially in these days of projects like yours that bring in a lot of 
reports -- and don't get me wrong, this is a very valuable effort).

>
> But my highlevel understanding of what could happen in such a case: In a
> multithreaded application using that module it may be possible that
> another thread is allocating the free'd memory before do_error is
> called and may fill the memory of the struct with attacker-controlled
> content. Would require careful analysis of what do_error does exactly
> whether that could lead to further bad things.

Well, AddressSanitizer should have told you whether the access is a read 
access (as I suspect) or a write access. A bit of code inspection (or 
follow up from the code maintainer) should add to the picture.

As things stand right now, it seems that this could be turned into an 
infoleak (despite some CVSS high scores I've seen around). But 
notwithstanding this, I think it might help the community in general if 
we do not just blindly characterize bugs based on what class they 
belong, but we get a bit more information/effort around them.


        -  Enrico

>

