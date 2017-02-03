X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["306" "Friday" "3" "February" "2017" "18:26:35" "+1000" "Justin Steven" "justin@justinsteven.com" "<20170203082635.7htlwilcixrd4l3p@diablo>" "10" "Re: [oss-security] curiosity for CVE-2016-10000" nil nil nil "2" "2017020308:26:35" "[oss-security] curiosity for CVE-2016-10000" (number mark "U       justin@justi Feb  3   10/306   " thread-indent "\"Re: [oss-security] curiosity for CVE-2016-10000\"\n") "<20170203071134.GB5666@suse.de>" ("<834080593.18312469.1486030496674.JavaMail.zimbra@redhat.com>" "<1403781878.18312805.1486030686130.JavaMail.zimbra@redhat.com>" "<20170203071134.GB5666@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13979 invoked by uid 550); 3 Feb 2017 09:10:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22183 invoked from network); 3 Feb 2017 08:26:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinsteven-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UWgtg61G6TjxKdB3ua2sCMxtHN31/BgMfOwwXLkvd7U=;
        b=RQ1pmEJrZ3iC778iiIYRQJDaRbSgDC8GJ22ssnGfP1GcngngV2JuGq15rgZtdlVHwy
         MSgLzI5eWpWh9MmK1I/5kOuurG9Y37V72psTNw43GFoUnXwMhbsnalctsp6tDJ5FY5ba
         NUYy965iOHNjDDfDiStvMwVENL6tSryryAu6b/nosc837YNKxWYyj+ZwXq3qs+oWxxz8
         n1GGqNiOTTCcl1yxW0coeLzR+qkWUm+/VGjfJciFvSFpRiTlqF+ot1KT7h6uXY0PZV3x
         HmKhzIagSW6nKOLvCyk+ZzxDbHuckuGcSbXWpSWZwjU0ijTGquvFxA0GKPQW8E4ALVGj
         Sw+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UWgtg61G6TjxKdB3ua2sCMxtHN31/BgMfOwwXLkvd7U=;
        b=HpgxsXvE/5C7avBLpX2FiyncefNRTO9T4bzYy6ohgJ6CyUudoNw6XILafUXDxnkCO9
         kQQGG9idfu71DG3FKB7LYIr2LNR3Y9Af/Kq1v+1r1Hs+RMu9euYBcKtGHBzvRWVJfKra
         OX3YoCarbyHMbGyyK1a+IPsrP9zl4pynGdgKt4c+rJa/uioyDc1oc/ZGAEaGifLo6f33
         vQIEYa3wc6S7VG9x4O3J1AekPCvlkDkwxLqMLXel6Uj9vIoKOz6oO6NTch7LzkTDWTN4
         zxTz4HPziibRRNElH/LfiXqhGMgfJgwlI/AoKg6y2zVZsY6GqHRwpRPeEYz7KEp4l4qw
         wAcQ==
X-Gm-Message-State: AIkVDXIp75UCqwmcw1H+fdJN54/RaAsgOwR6NTKwG0pOSto5ZP2Bpbq9Dkke6aPKE552Vw==
X-Received: by 10.98.149.93 with SMTP id p90mr16593392pfd.72.1486110400737;
        Fri, 03 Feb 2017 00:26:40 -0800 (PST)
Date: Fri, 3 Feb 2017 18:26:35 +1000
From: Justin Steven <justin@justinsteven.com>
To: oss-security@lists.openwall.com
Message-ID: <20170203082635.7htlwilcixrd4l3p@diablo>
References: <834080593.18312469.1486030496674.JavaMail.zimbra@redhat.com>
 <1403781878.18312805.1486030686130.JavaMail.zimbra@redhat.com>
 <20170203071134.GB5666@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170203071134.GB5666@suse.de>
User-Agent: NeoMutt/20161104 (1.7.1)
Subject: Re: [oss-security] curiosity for CVE-2016-10000

As I understand, it is indeed DWF which I believe is a bona fide CNA.

See
<https://github.com/distributedweaknessfiling/DWF-Database/blob/master/DWF-Database-2016.csv>

Do these allcoations (as well as the 2015 and 2017 allocations) need to be
pushed upstream and synced with Mitre's dataset?

-- 
Justin
