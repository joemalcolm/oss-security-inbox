Received: (qmail 23662 invoked by uid 550); 5 Mar 2026 19:04:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22518 invoked from network); 5 Mar 2026 19:03:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1772737428;
	bh=TqNuUf3omGdzwefbAZDH8uliH9gHnNlVLCI4rBJQO1Y=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
	b=DorLIP2/cFWWYRYUUGitL1+iqY2I0mPv9FMPPghRsp+43aGh8JAAAjHRTJADZbSOH
	 P7ZPztnKorMEkOdcnBrAizDrDe1+9GmuphGrTj8xanVSJivbf/Svxa8EO5ZUeb5w5h
	 J9wf1YVmG2nldozAUJu7I0s5ToijQMQ1E/Hyh9X9rb+4+gklFhZfmiNfZeAtHF3Gcp
	 Q4ACasuPRIsaXMz8gqZduj7ShcFFiGgiptcGyBpTCYaDsRYBgKaYr+MMzWiqlyO3no
	 nYBd+y4No2lEdqS/2U8q/L52cnfc+/EJfXfc3vcws8qGsyPDPnK+VHvohlabhWNQDI
	 r+lABgQscypZ5FB0lk75iy7K6xj7fs50HcrR07Hx1rtjbvnjd/LOvqoahyTXrjD9yA
	 IdCYdvx21fgT0oT1eRowfMAHm8hKifniv9R5FnPtb/oRPN0XgbNFtT4Iy9oJ91Wibp
	 IQoSbEOZ7yo3w882Y3a4JRCUXWJZdx+D2NBuVFWHuu1qtOcyo5qh7W4JWTYFpkYI0q
	 EwLEEwlUNYUzZx9sXguixDUe5+0spzR+NR0qs5z9BikC34fOkmJvsgNFT7VlhhWIZx
	 FmcpFixX0IW1V8PBtWBxaN8hTjtVExsp8nMPGiPeoTzEv+LrtSu4wxEuCnD4V8SK1q
	 bqIOeOtTpP+lv9SauDukuw/Y=
ARC-Seal: i=1; a=rsa-sha256; t=1772737427; cv=none;
        d=google.com; s=arc-20240605;
        b=NwhzKe2FeWemwdMp9Z64Ju05VxDGXdUe4gSoCo0xHn97NyGRfWIzfndy7MulwnbkT9
         O/J93zXRlrIh55g8XAAJ8sLEcAgRjOfgaoyS5hhrMcP0RnvA3Bx+r5ZWrIEXRzdaonR2
         Dxov3jTcBFWF1oBwObvHYnHW/qIJjSeNdoq93gFtnpb4rHJV2/YijcJnSbVn1bnfFocU
         0JqBVSmzci2tgrgQx+dPfsjR5tyUDcO7RC10qrRSwgroIRlVzn4E6BuJjl9nUQ0h95wv
         CBjXTmth4sPJVy0Lcr3VqZP4JwhCaB1zoBfhQrYgMiH573Us288GAnimizSyRotuwlYn
         Jwaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version;
        bh=TqNuUf3omGdzwefbAZDH8uliH9gHnNlVLCI4rBJQO1Y=;
        fh=PsBJVqA2GaRkAYA8EuSXR7Zc/MH4r/AxVOHd6pmMbkw=;
        b=MEiVsImhPy+eAjlTRl4VtOo3RPK6fZnoniKE51Tm57pD7xjqN/R/2NVbwUn7U6FyAE
         f5+JJILKEvUiMwogqcw9b+oDCM4p31PAshprm8ZLgDLmXHweTAY/CkDinIryp0N5Bt7R
         RMCWEB895WTLcLPiEcB0bJOfYq+ZYWJRpOQ/j2rCCEmW95T+JrhItQmudL4DCqHa5J+p
         ii1S8Rg4EX0a+LOZ+H8c0g9Lm8HndD7nH6ZoBF8/CUtWxf9RxnqDXd3NMzRyHqzxaqfT
         QAOb3IWreOpgLCy5MTBQf9OJa4BJPuY9b4aPAK9vcEGUylYAgxaxY7VLBxbc8rJpSOks
         iI2A==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772737427; x=1773342227;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TqNuUf3omGdzwefbAZDH8uliH9gHnNlVLCI4rBJQO1Y=;
        b=f1RxYKaGvv4tLV7Xnp8y/o4NpewyhDY2Hf5K+6987g2GakMLfnlFBSGoqNJrL4KLVU
         Xuo4bCqtWyOxaZj/4h9rO9k5hUCy5I3GoRuvDi5i10iBifj+GYqmvSqfCtnvRr0DAd48
         K+Ss4zkf4uOhNop9uJkD4Xv8ttkd8wbMKw6gb756gGnfvu/3tnsvkqadGgQ5HlQrQwCv
         JcstNNyBpgm56oJcdjVUBGlEMsJAg78FaW61zgfRKCeHbcbbH7nLtLHgjtaXbOaeuUE6
         XhzQ6sBwJuoZP2pDfar+3fNBeUoPh7KJ4v70bJ2y4NhxGAOw+VcaxtrO5k0d4hWEE2bx
         dBUw==
X-Gm-Message-State: AOJu0Yx1HkF5ZI431+mOccjzb/2N9ZwRSQPK1TofWPeU+2bL+WCZ8kAS
	WRXROU/h3UQznfcsKBqR2SA1s+4/9mWG9r3x/6uheHeDFsDV21GlODxZdx4twwiDINmeWaPhFh9
	i1FIDiAqNkN/QxmhGaVp3PbFEmm/IgTO0Rg3bSjGFwyXEwTCdcZ+wfBQEjCTtQFczUAB19n5YBp
	SeUENqZ5pVlG7/zJvwfpdE2rVoN+UWY32ilwDs5aR97VQEmZU+R0JFyJw1aZTc6LZGmqUNwi0=
X-Gm-Gg: ATEYQzzqn4i8OliuwNEHipKH9KanG56w8PDUODHb4hnsIUf1+8x/sNElEPMlQ4fEXyY
	vIbFh+iMw6e4a9EIty6stSYbPhGDSTTm7IoBSMO7K8bPlIsi58F3grOQHnpWNmZ9LDjmqGMkRYC
	WLW+KWQjs6DnlJkvAp8VuSVs6meiOpBzvtqYN/1ZQTPTTamUOTNzZlj4+aCbFEw26tE5b8IjKu1
	6ZtVg==
X-Received: by 2002:a05:6122:8b10:b0:56a:9401:11eb with SMTP id 71dfb90a1353d-56ae74d2a09mr2997142e0c.2.1772737427577;
        Thu, 05 Mar 2026 11:03:47 -0800 (PST)
X-Received: by 2002:a05:6122:8b10:b0:56a:9401:11eb with SMTP id
 71dfb90a1353d-56ae74d2a09mr2997131e0c.2.1772737427117; Thu, 05 Mar 2026
 11:03:47 -0800 (PST)
MIME-Version: 1.0
From: Seth Arnold <seth.arnold@canonical.com>
Date: Thu, 5 Mar 2026 19:03:36 +0000
X-Gm-Features: AaiRm52xFsAHRzBdGkdp__7iOHjjMEogoAE5ibIpKcqAdokfPKwXyXy4d1--Zvo
Message-ID: <CAD9zwiUv6UuakBB6UWanPuqEQS8=Nbp3-Vjb9p6yxix+acTKoA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Ubuntu Security <security@ubuntu.com>
Content-Type: multipart/alternative; boundary="0000000000009fa91f064c4b989e"
Subject: [oss-security] CVE-2025-13350 for Ubuntu Linux kernel

--0000000000009fa91f064c4b989e
Content-Type: text/plain; charset="UTF-8"

Hello, today the Ubuntu Security Team published CVE-2025-13350 for the
Ubuntu packaging of the Linux kernel. The issue comes from an incorrectly
backported patch that caused us to mix an old-style with a new-style
garbage collector for Unix Domain Sockets.

Upstream kernels weren't affected because they did not cherry-pick pieces
of the transition.

I thought it worth sending a message to a widely read and widely archived
place to give everyone peace of mind: If you consume the upstream kernel
directly, you're fine. This issue only affected Ubuntu and anyone that
rebuilds Ubuntu kernels.

Thanks

--0000000000009fa91f064c4b989e--
