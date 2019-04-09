X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["700" "Tuesday" "9" "April" "2019" "02:26:07" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" nil "15" nil nil nil nil "4" nil nil (number mark "U       Jason@zx2c4. Apr  9   15/700   " thread-indent "\"[oss-security] DLL injection in Go < 1.12.2 [CVE-2019-9634]\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] DLL injection in Go < 1.12.2 [CVE-2019-9634]" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26507 invoked by uid 550); 9 Apr 2019 00:26:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26488 invoked from network); 9 Apr 2019 00:26:33 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=6gq/GO
	JW/SHoHSM1QlzIjab6eaw=; b=ariPfaKFOWv8EyJQfogdFFBJ3jai56lqsImcMf
	M68gIO+8ihuWISRufPhMEeaPb2e+CZqDeAjShFpW6g7gZtYThEw+OZj6oM85A6Su
	v3xhYd41eGtAz71usWaJOrv5a7HYbMeH7+PP5ysqZ6Y40nevl7FIt7ePcpSeiqEf
	RjIP/EFC621uWia7R2Qx0kzHsMeCPUK1AXRgzr79uaAPakR7lXGyS3F1FFKPa8r4
	9SMZet9nhgN2NmdMwvZyhhglpEulgLvuhyxfHNckkzKaGxbADxxFbp2mvb3K0iwx
	TaBAckOshgeCm12maMiXEr20TxJhq/yWDovV+FsCxT0LZNJw==
X-Gm-Message-State: APjAAAWxqTmRWhOB0WzG3Irj04BN4wgCegAXXGIAGWa98N1UDJkJPvBk
	i2RmYjW0uAzJZkbYFMfE+oQk4Fja66pWHkx8its=
X-Google-Smtp-Source: APXvYqwTLSuObygAEK45THlPsnUIzyaCbVhpNb3IZl770+PSOESzc899LJEShQt8FnKEwn/pD+sQoRdAtzb4tuugmN0=
X-Received: by 2002:aca:480e:: with SMTP id v14mr17698915oia.66.1554769580486;
 Mon, 08 Apr 2019 17:26:20 -0700 (PDT)
MIME-Version: 1.0
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 9 Apr 2019 02:26:07 +0200
X-Gmail-Original-Message-ID: <CAHmME9qiC2+1T3zGtgt43ibCzzm-+=VGwUMAWPJcWjgOGDfN6w@mail.gmail.com>
Message-ID: <CAHmME9qiC2+1T3zGtgt43ibCzzm-+=VGwUMAWPJcWjgOGDfN6w@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] DLL injection in Go < 1.12.2 [CVE-2019-9634]

Hey folks,

Golang before 1.12.2 linked against various DLLs that were
same-directory injectable and generally its library loading mechanism
did not use LoadLibraryEx, allowing the classic DLL injection attacks,
especially with regards to executables saved to the Downloads/ folder
[1]. It was assigned CVE-2019-9634 and fixed in [2] and [3]. It wasn't
mentioned in the 1.12.2 release notes, so I'm mentioning it here
instead.

Jason

[1] https://user-images.githubusercontent.com/10643/53921755-eb9e1a00-4071-11e9-83a7-058ceb008e55.gif
[2] https://github.com/golang/go/commit/9b6e9f0c8c66355c0f0575d808b32f52c8c6d21c
[3] https://github.com/golang/sys/commit/10058d7d4faa7dd5ef860cbd31af00903076e7b8
