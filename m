Received: (qmail 17481 invoked by uid 550); 17 Mar 2023 15:07:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28649 invoked from network); 17 Mar 2023 14:51:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679064677;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nUY9USsnanod+9yBh6BqXIJyerib1/5WXvFPRYsJsrg=;
        b=mfTeoJeCS2EkT9Dsz7Azx8sl6w85bnjAlnmX3A6WWbD4AkqFoSmKTf2PiCmiAaLmlz
         QmOaN3eqxDNdFAs2HOljtYBNKzqpZiLryKf86+HjJKAaeLQvvwKOjpH+4kwjgJU8wpi7
         /grjAel16VPoVZIY8xjU1Rc2NNLFXGbUuo2Yu2tw9R5QjmBYFFeujCEq+EPjos6FwXCg
         oehWq8ocQ6Bvzbt1zyCCY4d+OIdilURyya+sgma1iQD65RQNJdPiS3vOCYIQRFTJERq4
         KdSfWUP8OdOmH1PeH1uBgdULvM9ICOhVXncHfqnDEJ4IfI58EeQ+W7syEj3Zxs8bHdKq
         an9Q==
X-Gm-Message-State: AO0yUKW6i7LaXZdJYJ6k1gxa/K2lT20al58NKuUxM2mMRx+Pw/f07ipq
	pKhvKlWfnE23dDknAprxnD/wZPfw5bUqLrwlSpB56cgQ+Eg=
X-Google-Smtp-Source: AK7set9W63NUcWYq8Uc9julYcZme7uaBmkmdjH+BRX1QqzqY8xZHcDsLstXCbVMXY9U0DVNKMkZypJPx+4en0I8ANzw=
X-Received: by 2002:a2e:9255:0:b0:295:acea:5875 with SMTP id
 v21-20020a2e9255000000b00295acea5875mr1186430ljg.2.1679064677563; Fri, 17 Mar
 2023 07:51:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230314095103.1ed76cc0.hanno@hboeck.de> <20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd>
 <20230315094018.27d65aae@fabiankeil.de>
In-Reply-To: <20230315094018.27d65aae@fabiankeil.de>
From: Ed Maste <emaste@freebsd.org>
Date: Fri, 17 Mar 2023 10:51:05 -0400
Message-ID: <CAPyFy2AoQ_OueQR5tfmYO6fV87E6OKZSBdufeuw2F-_UN+XY=Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Wed, 15 Mar 2023 at 04:45, Fabian Keil <freebsd-listen@fabiankeil.de> wrote:
>
> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't
> noticed any problems.
>
> According to the commit message "TIOCSTI is still used in tcsh,
> but as tcsh isn't compiled on ElectroBSD we don't care".

All of tcsh's uses of TIOCSTI are in `#ifdef TIOCSTI` blocks so tcsh
should still build and function with it removed (e.g., with the ioctl
renamed) I imagine.
