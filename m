Received: (qmail 32044 invoked by uid 550); 13 May 2025 22:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27659 invoked from network); 13 May 2025 22:48:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chainguard.dev; s=google; t=1747176523; x=1747781323; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1oR8HYTdl63Ne+1D0Nfi0SPFjhf8X655RYqRT1xF6uE=;
        b=iM5qQaAHEH3xrl0EAk3zdSjNHduN0KngpHq9xjLpw/V1F/noho7rndOLVl/76rhkuT
         jAKNj/2Sbkmu2cW3g+F7FnTcFEKZIrzmNVwnyymch986RewVsaX924SzHm7m6gszuVGI
         ZgUSyAuOZobT47HCIjrxeGfhncrS19xsp707hAp70fFsyN2YVFdhzys+Xiln8BN8GvRD
         fE1fBPJIW8Q27fTgxVkAgUPBXZXUWS7fbolY5U5n1vszMcyq9zGmoxEUwMa1XItPD8UP
         TlC0oyOg69w7Ne31OGR390OzVpqMnCZQseeVY+cYKFJd7OaG+Jh7p6GQbvZhtsziVSA8
         qClw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747176523; x=1747781323;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oR8HYTdl63Ne+1D0Nfi0SPFjhf8X655RYqRT1xF6uE=;
        b=ZDUe3c+u/CCkopI9OM2zsJUGoO6AI3S0aNOwiRDcZ5mENahmLr4NoBOl3EAANvM2Mf
         FLQRSI1PHUpNmMZYoKVc5E775qARW52ZmTeppvGOgpf0OSIhlByZscQ5lDOYZUJrbBZN
         JgCPYm22zuoEcaAjFvenhpaMCejyudJ1+Sh1ZE/ikO/nvInk27CdiwvwU6MgfWyQszVE
         CrJ7t0lg+sziCq2HfqIhVtg0OyJhBqkg9dEI+h9LbuXDXXgTewb2F1IOJ4Rzf7Gny/po
         mPg5T/qcrx6z9jRzDN/HHIlnUCxcvSj7DzaeFRss0iu/JaQfLryCLXluxhgZ/YCHAUxh
         I0NQ==
X-Gm-Message-State: AOJu0Yw6k7HBn/7Y2tFhW8bfakyMM9HWW8cX8M8fcVlQxmbeLrBKfo3D
	Td1fGT//H2UGdfkjV3U3Qg7SAlN3o0KLH7LZ4oImdNjV1+wSce6Zmal58HfGlww4ZwO7IGcZtTF
	EKSVRtLTQtEFeTVLvhAWYTpglwv314bV+E9eaENugFqLHjNleMBw=
X-Gm-Gg: ASbGnct+tBDQKeDFc9OVn5jB16nKyJbZZAEQLXtP2n0Dk4VKx0QP/+zZMgFdLmnxx72
	yiql/b68KWVY2ahqqm9tMSOSE6dpSnQ4NAzsr1ov+D9hK+juz31qp/+bsaJGA7B5wTPoi09+5hy
	itmzVhWs92UxRpw+HRr8QyYls46Ox6GPNT0sLocgZQz3YUQg==
X-Google-Smtp-Source: AGHT+IF20wr+B0i7M/FowYMhjUkqE3y6rz8QzZaTm9GaFOS/t4PZtLKVGMTrWYpO6qkz/ZeQfG1pd59iaRgTbPnVY2w=
X-Received: by 2002:a05:620a:2551:b0:7ca:efbd:f4f4 with SMTP id
 af79cd13be357-7cd28863985mr195613985a.56.1747176522507; Tue, 13 May 2025
 15:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
In-Reply-To: <aCISrQTbLQjaxBZS@kasco.suse.de>
From: Mark Esler <mark.esler@chainguard.dev>
Date: Tue, 13 May 2025 15:48:31 -0700
X-Gm-Features: AX0GCFsGBdrd0McasWmbCTBSt2W2KgmpkhbacsFCYraAWq8-2slqMzxnoZl5yyE
Message-ID: <CAK84RTXnye4-qBA0Yfachi-8gQHZc2bdcSS=9Zi4cfpaDhCFmg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fbfb9406350c3b90"
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen (mostly
 affecting release 5.0.0 and setuid-root installations)

--000000000000fbfb9406350c3b90
Content-Type: text/plain; charset="UTF-8"

Cheers for the report Matthias and SUSE Security!

Could you please comment on the affectedness of upstream screen 5.0.1?

https://git.savannah.gnu.org/cgit/screen.git/commit/?h=screen-v5&id=464c8d8f945f53f8cbb854517279349e09d74756

This version was released ~an hour before your initial oss post. It appears
that upstream landed the patches, which may be worth mentioning in your
timeline.

Kind regards,
Mark

--000000000000fbfb9406350c3b90--
