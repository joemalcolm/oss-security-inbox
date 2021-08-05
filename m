X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["553" "Thursday" "5" "August" "2021" "14:50:49" "-0400" "Michael Dawson" "midawson@redhat.com" nil "16" "[oss-security] Fwd: Node.js security updates for all active release lines, August 2021" nil nil nil "8" nil nil (number mark "U       midawson@red Aug  5   16/553   " thread-indent "\"[oss-security] Fwd: Node.js security updates for all active release lines, August 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Node.js security updates for all active release lines, August 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8043 invoked by uid 550); 5 Aug 2021 18:59:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5385 invoked from network); 5 Aug 2021 18:51:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628189464;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q1twuHcLHezTvrv5IM6u+7wgafs1blRQa1A+J6cK6dg=;
	b=exBnXeA7i9eNo2DbVnGUrFm5fsNjjyA+7p0mjQ/EAyM/AXFi6KD8P1IGSjGxBtyKcpAT9q
	48zWVt8iGlluRjtEx1DuEmP9PVuGsuiHm1CvLXZyzacSYNOB8FED8GEJnQ1GMk0XSAL2BW
	G6v+6hNiWoBrK9l0QbQVewe8m/16IKE=
X-MC-Unique: 1GoGeM9dNsqE7A-RykXd-w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Q1twuHcLHezTvrv5IM6u+7wgafs1blRQa1A+J6cK6dg=;
        b=LAVNwXKpZnhXUhM9p0M4yEgBAfBx6/kbD41V9hIrKr68vhpgmbjMiBDthBZi4ITg+x
         LAX8K6GNMpKkKeZRLO3BiY594U0h4uAVnWlMVZc3OvZKCh79Qcd+LY7F89yfvAXoBICe
         CL32l8yx8jdEZqawnSPqjY/1mlQx4WVuIxTAXnGzxbrSrD/Xz4vcjYQ4KM7ff5clLOV0
         +8tPLkVX69Xaa3skCLaLpxJTyMVveoHW4xnBXY9kYFlCApyPsQAiE73WxHwC35V/Izh5
         i8oust5vsSaKBt/lPALgL1fcAjeZTn4vnGWd4WDGWFXOdjNP6TmIvBWPcoFUnbGh+REh
         ay/w==
X-Gm-Message-State: AOAM533IatiZT4DOmAimWDcWlQS1GMX1lZylxGTiT1gvJiWpDbKejJZ7
	+js2H4KnEIGBNV4htQpGYUtkbvT4P9wdAvy0l5qSESwk/wpeOEWfeOrKXMImVAHtcWuNrB7Ptge
	Gz66mCvFr3N/94qqLTA/B+/keqmI41dM00PyHxpIYDfwn
X-Received: by 2002:a17:906:b5b:: with SMTP id v27mr6161739ejg.170.1628189460514;
        Thu, 05 Aug 2021 11:51:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9sXLlbHelkiu+KDocqw35b2E51aoSXTQqOIdwrJHTXPh/mOkxIop+rNT3rFnwetmbsicWI+wEpFn3jwTnHoU=
X-Received: by 2002:a17:906:b5b:: with SMTP id v27mr6161725ejg.170.1628189460296;
 Thu, 05 Aug 2021 11:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <57fdbc87-3f3e-43f6-9286-3b7206fc741fn@googlegroups.com>
In-Reply-To: <57fdbc87-3f3e-43f6-9286-3b7206fc741fn@googlegroups.com>
From: Michael Dawson <midawson@redhat.com>
Date: Thu, 5 Aug 2021 14:50:49 -0400
Message-ID: <CAH0iFcZ=byObwNkds9r0ZDOAW75kC8VqW1FzY-pM5aw3tNn5Qg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=midawson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000068867905c8d466f3"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, August 2021

--00000000000068867905c8d466f3
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: midawson <midawson@redhat.com>
Date: Thu, Aug 5, 2021 at 12:04 PM
Subject: Node.js security updates for all active release lines, August 2021
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release
lines on or shortly after August 11th 2021. For more information see:
https://nodejs.org/en/blog/vulnerability/aug-2021-security-releases/

--00000000000068867905c8d466f3--

