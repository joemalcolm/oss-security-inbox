Received: (qmail 27648 invoked by uid 550); 20 Oct 2023 13:04:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11755 invoked from network); 19 Oct 2023 23:10:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697757008; x=1698361808; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=F9A4iOIueDQgN+uX9azJ6vmNczLXgAJ+N4hfi9TPjwc=;
        b=ZpXobRPoEmqNWw8EHv6J+SS8NwDfb+tVwUO4UQ0RaoOITVuSNTZCOtRD5dFiqVpF/R
         r7pr6I5SkYIyjKkNtUoNyMfPzXvbizC/vHLqlZOvfUca23a6S2152tB6hl+hE81qk1Vj
         cmpl71mJpsMBc2tYgUoOYMuoKf2w3kOFROvsM9bbCpbCVXTQ6wPSDW9KMT7/YiE7khIi
         dDO/hqwdp9CQaB2Wg6knP5XHI8Bhftfo2lGsy1w9Q2zUJiokgDI6wUKZ4gZOvV+6pQQu
         NMF5MOg4T44wKK14H4zCW8EYEXyTIVHaN0Bd01Geu5Kw9wxV/ii5XUbN96fH8MBMUd7c
         frKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697757008; x=1698361808;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F9A4iOIueDQgN+uX9azJ6vmNczLXgAJ+N4hfi9TPjwc=;
        b=X82j99t1nAqGWieF/CxrslCSrKxqL9PSC72mT3u6dJFxq+5NSwUQtaaMuPn9U4L/ee
         Y81jJE64+3I3uG5FqLSwtjTCy9pLOrOGBVH+yXz+ofiv3OqQyMeQvkws/6NxXl96VCj9
         x6YZN8Q44w9R1bDX900IGJQ687aFDWqTwG9VnOX8QunaPO69+u8qXh4dYO912ZkxeHL/
         Dpopx7OsQKR07n5b5OMd/2TvMHVtuzP7Gxr2nAUBo168FsRC7899pOtaE1jG6PwkH6kl
         LVnBu0Eet5p/xy5zoACvZzP8A18Vdn/blQmhPlBbQ8vJ2Akfw4/hm7E6TGDA5lfUT7ka
         Pdaw==
X-Gm-Message-State: AOJu0YxiG/uxsoggdwI0wlfBcNukJXEY5Ns057o7+BdLLT1zflfVc1j1
	0/fyMCI3NolM9GDbx4I1pADz5p9B4VA=
X-Google-Smtp-Source: AGHT+IFuHO8uHfJ4nlJ+/6+JsLj/ZobmzCR8lNXsl7HTziwZjzG9kUK4ikF/O15thKEAUdH8b8UQXQ==
X-Received: by 2002:a17:906:db0d:b0:9bf:b8f7:1fc4 with SMTP id xj13-20020a170906db0d00b009bfb8f71fc4mr71532ejb.43.1697757008034;
        Thu, 19 Oct 2023 16:10:08 -0700 (PDT)
Message-ID: <3a2a90f88bf54fd7687234a8f5a92c43.49e9d693@crystals.bloom>
Date: Fri, 20 Oct 2023 02:10:06 +0300
From: Turistu <turistu@gmail.com>
To: oss-security@lists.openwall.com
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Tue, Oct 17, 2023 at 03:17:36AM +0300, turistu wrote:
> In firefox running on X11, any script from any page can freely write to the
> primary selection, and that can be easily exploited to run arbitrary code
> on the user's machine.

OK this was probably too technical and terse for people not familiar
with X11 programming and terminology, so thing goes like this:

1. If you're a user who has first learned to use a GUI on e.g. Windows,
and who is used to copy & paste with Ctrl-C Ctrl-V (or with left-click,
choose Copy from the menu, and then again left-click, choose Paste),
then congratulations! this DOES NOT AFFECT YOU.

(Unless you're using some clipboard tools which merges the primary and
clipboard selection, but I guess you don't ;-))

2. But if you're a *native* X11 user who is used to just select the text and
then paste it with a middle-click or shift-Insert, then this means you're
pretty much done, and you should immediately either stop using firefox or
try the workaround and patch described in my report. This also includes
Wayland users.

I have no idea (nor do I really care) how many of us are in 2. According
to their telemetry, probably none at all. According to their prejudices,
probably just a couple of insignificant trolls.
