X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1227" "Wednesday" "21" "June" "2017" "10:06:39" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<03350a09-72ae-6feb-9d2f-982f1de6fe63@redhat.com>" "30" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062116:06:39" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        kseifried@re Jun 21   30/1227  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>" "<20170621143631.GA13275@openwall.com>" "<20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15552 invoked by uid 550); 21 Jun 2017 16:10:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15524 invoked from network); 21 Jun 2017 16:10:38 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+JlM9KYnTCJp2jtBlbmK4fcse5TYIaxYoDHCchatrs0=;
        b=OrCFbnR6RSAl895X6ZRsWMW2kEWhUs8MXk3w7sL3EP/f6bQFJ8bCBU12K4BnzuvZIC
         fBYPORDxC76QcBiNrfQuCm/p5u+LlXYB4NTyPCgJrn9bvecu5shX+8yCMe3HoDOWOpzP
         wEtITLzSF8zompdh0yjzrGgeKoIIVqF4IQgcJXkxMItP+PmHV0R2qq1DeCX4AOrmcQ+C
         xdlZLhNe66ocFI84wqOjwboLPaR/iPQmpzphXxjgyFUBhm/drArGBCC1YU7VRMVWz+tB
         DJIElcS/Kn5+ojubWQmiTY93hmh2j+r90TG1aSP8DTTTGOO9IM5dFhOLIKH3A2foz30X
         Hpzw==
X-Gm-Message-State: AKS2vOxA5X8FiUJVL1zRTWqf1FJC17/8kAtP9nm2dUYtWCwI+m/dpP8B
	MZT19FEWzAp+VjDdZmT32A==
X-Received: by 10.55.214.84 with SMTP id t81mr41355943qki.38.1498061426843;
        Wed, 21 Jun 2017 09:10:26 -0700 (PDT)
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
 <CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>
 <20170621143631.GA13275@openwall.com>
 <20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>
Message-ID: <03350a09-72ae-6feb-9d2f-982f1de6fe63@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Wed, 21 Jun 2017 10:06:39 -0600
From: "kseifried@redhat.com" <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Stuart Henderson <stu@spacehopper.org>



On 06/21/2017 09:15 AM, Stuart Henderson wrote:
> On 2017/06/21 16:36, Solar Designer wrote:
>>                                                 Granted, they can now
>> prepare their updates within hours or days due to the work done by SUSE,
>> Red Hat, and others on the distros list, hopefully in time before
>> attacks using the Qualys findings start or become widespread, but
>> nevertheless they are at a disadvantage.
> 
> People doing this might want to note that Icinga ran into problems
> with the fix in RHEL/Centos kernels when using setrlimit to restrict
> the stack size below the default.
> 
> The Red Hat ticket is currently locked but there's some information at
> https://bugs.centos.org/view.php?id=13453.

Ah sorry about that, I've made

https://bugzilla.redhat.com/show_bug.cgi?id=1463241

public, kernel bugs default to private and then typically get opened up
(mostly because people have a tendency to put traces/dumps with
sensitive information in them and we don't want someone accidentally
exposing their SSH host keys or whatever).

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
