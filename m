X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["478" "Monday" "25" "January" "2016" "10:57:53" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRD=BJLkxwv5AGm+Nod_tNfkND9M0C6n3kr37ZDDywSjg@mail.gmail.com>" "22" "[oss-security] Re: use-after-free in tidy-html5" nil nil nil "1" "2016012513:57:53" "[oss-security] Re: use-after-free in tidy-html5" (number mark "U       gustavo.grie Jan 25   22/478   " thread-indent "\"[oss-security] Re: use-after-free in tidy-html5\"\n") "<CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>" ("<CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32344 invoked by uid 550); 25 Jan 2016 13:58:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32291 invoked from network); 25 Jan 2016 13:58:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=z9BBOJlB2zscaTzNy46fBYgCHjNudNavZgIdS4qLN6M=;
        b=iALSW68zBUUA6q9udMH6u+4FrL72Tttfa1IlqciuHYEUPLI19iqWORepo/ZwfD3GTz
         3OLMsvWUlIU2dztc9+6IgXvPA3vm4TDYA4mPQFtHmEYAPlrpk4QNqeWjW/X5UTWQDuXX
         6sqE2hGEsFqiJ4ubqS0Kcd42sQX8Cz6vwBiOCftZa/TYduFH322hFZ9oZ1cckbL2+4gf
         nGGTqfcsFCZY76UNtL6MsyrFOFx+SY0xaz5RD++3SZkWv+wPAIVvrBuEwhSYzr6cjC7D
         zv8V5SWM6irFckkmLZobjS9nR/fuFBZQaEuDRXGw/4MKogiWOQt0BJIXlcUDA9RBaG9G
         biqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=z9BBOJlB2zscaTzNy46fBYgCHjNudNavZgIdS4qLN6M=;
        b=ZmRJsA7BrFqYLKFqUh/gAO94XEyz2v6H9kXRyDbjqM+jr7jwvpp3KukEYpYGN5mu7f
         Iu1sUscl4R8vjVbz9o+dHkMPuKk1lOD4cIU/0DIpd9Ya/SSVnW6KyWbrjn9kTbrM3ZU/
         JdCcGgSiw+6XHYBUxSIvHDeAQ9zMqUMRbDNhL84xkLv1oMQmQzm43+M0c1BwIR0kUmp3
         et5SI3gjgR4UJCEhpba4vMjvsvhi4+27hmXWLuQrtb0+2XRjpp8Nlgn9PbMhYwVmnw86
         i+GVHvJHzPttDqNAq42qOwiex5xD7P7MFzF4Q0A0FKdrtHSDKSpKumjSzaeNeswFYQmD
         GEmQ==
X-Gm-Message-State: AG10YOTO07BgfhCX8EX8gwFsChjJ0wine4+eyj285/HMWLVSyADRi3Sil9HB0XVdbMkTzApaiDMuljSZbKIWZg==
MIME-Version: 1.0
X-Received: by 10.112.145.131 with SMTP id su3mr6431530lbb.19.1453730274037;
 Mon, 25 Jan 2016 05:57:54 -0800 (PST)
In-Reply-To: <CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>
References: <CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>
Date: Mon, 25 Jan 2016 10:57:53 -0300
Message-ID: <CACn5sdRD=BJLkxwv5AGm+Nod_tNfkND9M0C6n3kr37ZDDywSjg@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7b3a87cc95567a052a28f417
Subject: [oss-security] Re: use-after-free in tidy-html5

--047d7b3a87cc95567a052a28f417
Content-Type: text/plain; charset=UTF-8

Hi,

The tidy-html5 developers are still not sure how to fix this security
issue. Any feedback is appreciated.

Thanks!

2016-01-03 20:24 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> A use-after-free was discovered in tidy-html5 (5.1.25) using afl.
> Technical details are available here:
>
> https://github.com/htacg/tidy-html5/issues/341
>
> Regards,
> Gus
>

--047d7b3a87cc95567a052a28f417--
