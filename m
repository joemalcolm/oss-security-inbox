X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["370" "Sunday" "25" "September" "2016" "17:11:38" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUDn=wBw4XdZw6YJdRTHQigpHqYHoED6JUNEx9LppY0ERA@mail.gmail.com>" "11" "Re: [oss-security] ffmpeg afl bugs" "^Cc:" nil nil "9" "2016092600:11:38" "[oss-security] ffmpeg afl bugs" (number mark "        lcamtuf@core Sep 25   11/370   " thread-indent "\"Re: [oss-security] ffmpeg afl bugs\"\n") "<20160925233516.GA10278@openwall.com>" ("<trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>" "<20160925233516.GA10278@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18220 invoked by uid 550); 26 Sep 2016 00:20:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14166 invoked from network); 26 Sep 2016 00:12:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WIjg2pVDygNMmFXfp1JUc9pktKg/1twODEP64lcO++4=;
        b=QZdRXNYFiaTAEkGSJF916rsxUXhaTJgM/8hJntQYXE1CJFI8cngQWO2mL8EayCGgAW
         Bjcy6TEt+urGTB2eAZOxHxxcTWw4gWY3Evk9Y9d6ZTtqyai5cdijjMy/jioJRbp0LlRX
         T5rOshSvd6fHjWrazSbc8dtagGbeh29TWP2MmfJLJkaokmIgB4LBJF/AwzJ6TovYh30A
         uuGtJgYkGG/xDcciYJyENZ/UWGys3cMSIoXinScsmBP7hih3v5iCRQsZItR1jpg0vuk3
         HxsYNdz6H4FIFk/KZPx+oXTeK24BTKwZmnxP5nu9Yjubisi1bensGS3coY/0kxHvj/1p
         h5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WIjg2pVDygNMmFXfp1JUc9pktKg/1twODEP64lcO++4=;
        b=IlYWjB685JDiKDcMh3Yu/VqOdMKeVRZkOXEPFFUUQvSHwRIBm0A4Xa9eYx5p/AGhZt
         hlBwjFgp+75hU52L9UhdOCecMstAFCIxFK0hFVrNlzpV4TZ7I5iwJUKbHWRLdkyzHS8b
         phTEPqtljXFPETX8A8tsp+EgFCgSsM6oMlYpb0T+nKbvO4YmogaT1Idp8/aRAjaZ9YRy
         j2XtBX2+27yh2GhxiRrhPsWhCv8TaGe3uR8r0Sagm9mJ0lK8yep3oYqkaYVNdNZlcZXf
         IsV6Lz937PwRJFT7uAh3Wv0yu2MuGSpXmWEw3InhK2sZH+dgk+DMyxo4LfjrQgoGzjww
         IBfQ==
X-Gm-Message-State: AE9vXwPDJt38Wu5+g/55H9NIDuTOx6mle5O+rtjpniG+Gn10P0rNQaBvV6oP0nMUN3ajBS7kwDrTCGaJb513Kw==
X-Received: by 10.194.178.65 with SMTP id cw1mr15568700wjc.215.1474848718483;
 Sun, 25 Sep 2016 17:11:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160925233516.GA10278@openwall.com>
References: <trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>
 <20160925233516.GA10278@openwall.com>
Message-ID: <CALx_OUDn=wBw4XdZw6YJdRTHQigpHqYHoED6JUNEx9LppY0ERA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cookieopfer@gmx.net
Date: Sun, 25 Sep 2016 17:11:38 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ffmpeg afl bugs
To: oss-security <oss-security@lists.openwall.com>

>> Have fun with ffmpeg-h264-call-stack-overflow.mp4
>
> Perhaps you meant to share this file with this community?

Hmm... I think that
docs/vuln_samples/ffmpeg-h264-call-stack-overflow.mp4 is just a sample
file that comes with AFL (and dates back to December 2014). I doubt it
still crashes anything, and I'm not sure what the original reporter
was trying to say.

/mz
