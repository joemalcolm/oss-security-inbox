Received: (qmail 16194 invoked by uid 550); 4 Apr 2024 11:26:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13756 invoked from network); 4 Apr 2024 11:15:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712229314; x=1712834114; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=66PaCkSx/JuXcECyvC3kTepLqFzzgZUgIQDXmm4KPxE=;
        b=UzjI9Mu7GdMO1cIvrWF4iUG553mMPR7RiZUkjZNMZR054kzK8J8xMYkG5pn4X0ioGp
         wgy5FbFFm4w+qiqgOaVuzxpV39y0S7l4if+0YX90Jhds9ZE9WwDTXGw7SXe1xXG+R/LB
         qmgnJww5FqEkngkSp6hJyANNZgj1teZV6bL+dujXV1HqRd5gFzKZ3rRwS7EWj9w92DBp
         dL8RiPHMmihNprxCVh9h8TdoQxri3DwZdjSw2bJR8Aq5y+h67DEGvFh7+8XUJM81k0It
         WzfQKs/WluURkwMeF6G0M+nrLen30kap+Y1Z+myj6K/OAXuwCKpMWPNnJsBBV7XwoE/9
         juNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712229314; x=1712834114;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=66PaCkSx/JuXcECyvC3kTepLqFzzgZUgIQDXmm4KPxE=;
        b=E70hMxV4DBURBZyrT/4N+ZxOUeCw1Gc7+bNv8UALmXsDTVSz6UWtHn1sTiGfIxKfLF
         eTaUZjE/V95NMs4xCIHcWqkhTCT7zdFAFORI8ty6DPIyO9ADengOFT/Yvx2ZueaoikSq
         RLcjgRUSGDuUJTSiLMY0nPpR/wVjpJJA3/oGX/nDNxQG1vBMIz2uMTUeBd8BmXMzdJ9U
         nJyZxWKjBljDDf5ZLQpgzaHcsyueXw9UrOYFJgOnfmNy/xK/JI8DzBaUuS8KEuy/iG5H
         CjMrfpv8IVd1RtwZtuwyDw+d0eWe6ZkKfskyQjNzTkxD7p0GnEAPpcKAgAiWM2EpIq4p
         oC/A==
X-Gm-Message-State: AOJu0YyaG4NKVxAWRRHzbFi8cmhsgqFKzMWoZAU//6EM8aVqAhBontBf
	6m+6BWF7qcxX+srUPIplgVesyDt805R+7N0toZTrpr6sSS5p83q516nURHYBLKWdvKEnC6+ufv2
	yTaD2+gIWDrpyJy795qaT0BOlv0WwsPZlirg=
X-Google-Smtp-Source: AGHT+IHzjsweNiGZ+00fVKN9xQ6/evSC+omyyUDrAM2PgcJsqbkW0LFDMIlHCt0aEhSznoywYEepeoTLHBXEkxcNTGo=
X-Received: by 2002:a05:6122:2b0:b0:4d4:1a1a:6db7 with SMTP id
 16-20020a05612202b000b004d41a1a6db7mr1706238vkq.2.1712229314435; Thu, 04 Apr
 2024 04:15:14 -0700 (PDT)
MIME-Version: 1.0
From: Alex Sarum <rum.274.4@gmail.com>
Date: Thu, 4 Apr 2024 15:14:58 +0400
Message-ID: <CAF69u5qz-WPQq_-5_Mbybe9cDGcHOHJyjY1qLKOJzq+tfXnDQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000fa5b4061543742c"
Subject: [oss-security] opusfile by Xiph.Org Foundation, DoS vulnerability (SIGFPE)

--0000000000000fa5b4061543742c
Content-Type: text/plain; charset="UTF-8"

Hi,

I was doing vulnerability research on a project that uses the library as a
dependency. During the research, I found a vulnerability that I have
already informed the vendor about. It's been a long time, but the vendor
hasn't passed the information on to Xiph.Org Foundation, so I decided to do
it myself. I created an issue[1], but still have not received a comment
about reproducibility or fixing the vulnerability.

A copy of the vulnerability details below.

One of the possible paths of execution:

./opusfile/opusfile.c: op_open_file -> op_open_close_on_failure ->
op_open_callbacks -> op_open2 -> op_open_seekable2 ->
op_open_seekable2_impl -> op_bisect_forward_serialno ->
op_predict_link_start

SIGFPE:
https://github.com/xiph/opusfile/blob/9d718345ce03b2fad5d7d28e0bcd1cc69ab2b166/src/opusfile.c#L1089

Trigger: crash.zip[2]

[1]: https://github.com/xiph/opusfile/issues/48
[2]: https://github.com/xiph/opusfile/files/14397558/crash.zip

--0000000000000fa5b4061543742c--
