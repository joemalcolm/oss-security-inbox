X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["559" "Saturday" "17" "April" "2021" "07:41:15" "-0700" "Tavis Ormandy" "taviso@gmail.com" nil "16" "[oss-security] Re: xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       taviso@gmail Apr 17   16/559   " thread-indent "\"[oss-security] Re: xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3324 invoked by uid 550); 17 Apr 2021 17:38:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15473 invoked from network); 17 Apr 2021 14:41:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=epMP+lrNgJpmOmrxBItGhCOIosBvJUecEuG0uCeMv7Y=;
        b=vElEhiZFRoNxYONWeyGjz2qVQoXPDRLVcjlzgdzOUGpkWSiuRyiMbkWl+OQkeoNiyA
         ZTWFPVeUc7DIxaxCY0shUgKN8KsqChz2E7qIwJVi3U3cq0Wmh2o6Qm/Pp9HOPOORgemy
         /w+j4oI/uOAeQ9AHVFygZOHWadAiTRum4kxCgcs+OnYPWrkmmjvx3EWsk4J3pgmWZ8Tr
         bgGAgKXtTCJW7fyTOFm1BaMvmzRPxFhyPrjRVg7epKsGhQgBVb+qzZASxdHalTi6KuK5
         cK4wxIcw2g4fOqTb3iWpB1GfUA2QdBrlf35/HoIM1f0zwWH3zNAa/MwwITgk9rhuV0NA
         2a8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=epMP+lrNgJpmOmrxBItGhCOIosBvJUecEuG0uCeMv7Y=;
        b=W2q/NNAzABqpeQOfsbBBm/BQx3ppRxGPtT0OTHH26CVAlEalUf0J0tC1ybP341sOL7
         RkNiMcJO1P64K7EBVgagoAxlCaIrxatpbIdU0Onle98o+SpZWoawTPjwaSBdaNl61bOY
         4qFkk6XvdT+GPf1Vm4YKivuVcjTNSCdKCDWfrs5lP+6mxGY4C7epr5dcfSdwPkC4ucgs
         JBV5Hmhu6MwerNIa1tZNh1VtPu5yZXPYpsvN1D3xignlkjGWSkxz8MOHycASwXy4Vpay
         HxHZWgCbS2wW6hqvFs7wmvZF3ztIC27Ywvn6nM25+F3BgvP0TfCtlfCSFNuBbT/HmxmV
         oQQA==
X-Gm-Message-State: AOAM532G5rsL4rPPVRS9okQzWNvKDOOdiBiQoRBIGeIef7uTpRYuRTNG
	R4YHenVC2ShgRHHxD3l7jI8EQ7WO1W8OM2t5
X-Google-Smtp-Source: ABdhPJxYwfIn0JW1NRvcXmzzOKSu96hrt8sSKH96CdjIhZkBoA8Qy0+cUrckq49O2Pe+O0bpria9sQ==
X-Received: by 2002:a17:902:f2c1:b029:eb:7b66:9c0a with SMTP id h1-20020a170902f2c1b02900eb7b669c0amr12949841plc.50.1618670475941;
        Sat, 17 Apr 2021 07:41:15 -0700 (PDT)
Date: Sat, 17 Apr 2021 07:41:15 -0700
From: Tavis Ormandy <taviso@gmail.com>
To: oss-security@lists.openwall.com
Cc: security@debian.org
Message-ID: <20210417144115.GA3514@thinkstation>
References: <20210417143105.GB3276@thinkstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210417143105.GB3276@thinkstation>
User-Agent: Mutt/1.13.2 (2019-12-18)
Subject: [oss-security] Re: xscreensaver package caps gets raw socket

On Sat, Apr 17, 2021 at 07:31:05AM -0700, Tavis Ormandy wrote:
> - The code could use ping sockets instead, but they're still rarely
>   enabled by default, and users have to set the ping_group_range sysctl.
>   I personally think it's time to enable them by default, but that's a
>   different discussion :-)
> 

Oh, I also pitched using popen("/bin/ping" ..), but I think nobody is
really convinced that will work, but I kinda like it :)

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso
