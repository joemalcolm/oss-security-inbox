X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1341" "Monday" "10" "January" "2022" "20:27:17" "-0500" "Bryan English" "bryan@bryanenglish.com" nil "33" "[oss-security] Fwd: Node.js security updates for all active release lines, January 2022" nil nil nil "1" nil nil (number mark "U       bryan@bryane Jan 10   33/1341  " thread-indent "\"[oss-security] Fwd: Node.js security updates for all active release lines, January 2022\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Node.js security updates for all active release lines, January 2022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29803 invoked by uid 550); 11 Jan 2022 13:03:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4057 invoked from network); 11 Jan 2022 01:27:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bryanenglish-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=MEQm4FQv8DX1sLgjv7+HcHYD0C5vshytJ1AJQc9O914=;
        b=Mm2/pQ9EfCWXadJqkd3sGevkL/kvhAdZMN8dpqjh8Vxu99CMAJzJ452oYPLOL9/q8z
         KQ+PpRxQ8d53f1xsPXV3siejLZOR++Boep7y3XtOrHiHLcXPp78fhOkv22E58wSUCTPF
         WWKk6pwqu2T/XqX0VRVfkaLyiYy7+DNPG1zPOr58s2yvoIKU9xa5knEkoBD7RPmrryPV
         q6PNwmXV1+8gIbbOjcixv0Nw0xWPxz+gxXyO0Sa/IMrHT5CIG2nxNmc4+WwqYH7pXVJj
         oxONnI+bAhNmu9V00eVTTpZzeUHtaUlPvXsBuP6b71kVIHheVgTCdYh4owyPVSDQA+XY
         Qq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=MEQm4FQv8DX1sLgjv7+HcHYD0C5vshytJ1AJQc9O914=;
        b=Vt12Gcbj7r0bDoT+HMdiZyulQlKr+0KzRIQMbLiJiWZcVEaJXNo5uur4AH3rJ+vp9l
         6BGNChv95BS8m3kdJfu6Kd2xKqZFORMRp6zo4mYVbe8Yx9WmIgPVsSjBB2gwm3cD/z8C
         Tdk96os23qJU+uI9aJ5sXro00Kp8ODJryjOLfBeRbV8tRx681zPYta6o0xw85+mCgwZf
         SuWjiUKdecYqJq3yF33H6PZ7hSt6v2aXu4z5A4/ABTi5Dur8oo9tHMsLOh0Clf7edaYo
         yXfW/EIH61QvcI8LZubd04hIxD99UN0JjP7xun0+p/fbl666Ioyrd9NEBFFRQdmLqVvz
         AuLw==
X-Gm-Message-State: AOAM530ISbzDV5jSE2JAF/RzNUQBAelS/OzGscFDabOM23IpNQg/T55y
	lEFUiQP6XZZmgBlo49l/90IBjibv2h/QqiVOMD6FW0NKlxE=
X-Google-Smtp-Source: ABdhPJz6ea4ye1lCDYRl+RKjbCY5OyVIRp5y4iPZ1hZuG3n9dgSseIYj5xycCqq8R7dVs1M5igs5F+9LbgKivjgQung=
X-Received: by 2002:a67:a409:: with SMTP id n9mr1089557vse.74.1641864447942;
 Mon, 10 Jan 2022 17:27:27 -0800 (PST)
MIME-Version: 1.0
References: <436a4bef-7d60-49a4-97af-02b90b4fbd49n@googlegroups.com> <45a29063-bf7e-4639-84f2-17d23c3d84adn@googlegroups.com>
In-Reply-To: <45a29063-bf7e-4639-84f2-17d23c3d84adn@googlegroups.com>
From: Bryan English <bryan@bryanenglish.com>
Date: Mon, 10 Jan 2022 20:27:17 -0500
Message-ID: <CA+35997895mNiHQ+3ZDY6wbbztq=qZDafJHWiH8_VkwFehn1pQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003072be05d5445b77"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, January 2022

--0000000000003072be05d5445b77
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Bryan English <bryan@bryanenglish.com>
Date: Mon, Jan 10, 2022 at 8:26 PM
Subject: Re: Node.js security updates for all active release lines, January
2022
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project has now released new versions of all supported release
lines. For more information see:
https://nodejs.org/en/blog/vulnerability/jan-2022-security-releases/

On Tuesday, January 4, 2022 at 6:40:55 PM UTC-5 Bryan English wrote:

> The Node.js project will release new versions of all supported release
> lines on or shortly after Monday, 10th of January, 2022 For more
> information see:
> https://nodejs.org/en/blog/vulnerability/jan-2022-security-releases/
>
-- 
You received this message because you are subscribed to the Google Groups
"nodejs-sec" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to nodejs-sec+unsubscribe@googlegroups.com.
To view this discussion on the web visit
https://groups.google.com/d/msgid/nodejs-sec/45a29063-bf7e-4639-84f2-17d23c3d84adn%40googlegroups.com
<https://groups.google.com/d/msgid/nodejs-sec/45a29063-bf7e-4639-84f2-17d23c3d84adn%40googlegroups.com?utm_medium=email&utm_source=footer>
.

--0000000000003072be05d5445b77--
