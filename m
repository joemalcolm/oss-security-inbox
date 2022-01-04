X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1079" "Tuesday" "4" "January" "2022" "18:46:24" "-0500" "Bryan English" "bryan@bryanenglish.com" nil "26" "[oss-security] Fwd: Node.js security updates for all active release lines, January 2022" nil nil nil "1" nil nil (number mark "U       bryan@bryane Jan  4   26/1079  " thread-indent "\"[oss-security] Fwd: Node.js security updates for all active release lines, January 2022\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Node.js security updates for all active release lines, January 2022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19545 invoked by uid 550); 5 Jan 2022 01:42:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21700 invoked from network); 4 Jan 2022 23:46:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bryanenglish-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=X9TGWTddL8jvwYHLgUuDvm4QV+mQZqKOiO0q/4UzL/8=;
        b=ypnvQr/2Dox+y5lUSnZ65rI0AzUzT/EyHWjDk/g5sQdPyUd7JDso5zsWN/7Mt9nRd8
         ij0ZIlBIrceVA7ycOO5vH85lVBQgB6xdijAGEvWLvVEhRKkeVtV+sYdUk6/cOAFhND9i
         gTRQQthqE4sKB3GMvOPDFHk+nVXQXuu5/N5jtQnDvYS2ka7Z8LqlyIGYpSiqWZvZfaBZ
         9b54I1ORFN7WtuJBZHAejWE1i4Rvge+7oAwdrLX3fNzuME9LgUg/X0JN4yefFOOKGu9Z
         0M8X5GjWykTOcyJOMCkEgFzHOfzADSRJuO+YZ2AIVIqpsl0sPTnSgXPd1//35cg7lPAQ
         jYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=X9TGWTddL8jvwYHLgUuDvm4QV+mQZqKOiO0q/4UzL/8=;
        b=uRBUTghuhc8H49Frm5anxc/ezFF7n/OUr7seHHzjz0orJwr/+gwy3jLJzNUn/wg4DS
         R0m9zRByIExVrOQ4vCgsSGiSQ1iVhJvX6ggY+u3YgMfIKthSUFjBJt7c9mvZ2k/hqmfi
         yApD0vbRoGx/ige2eTYZCes5lGvzZVO62IaqKsqMJjcYLzJfCUlpcjMk8hRUMHSuIuQk
         WY1dYEPp3W+wEtYdboNiuwLaVJDSruvlvzQ1QSijOQvru8iIluQAtpojNzI2oZyPxHJY
         mBWB+2NNU5/9zzzt1OT3+SDdJ+tM1BoBcFBil7TxSltxLuMgQbWGuduslqU68rqHQ7RF
         N6Pg==
X-Gm-Message-State: AOAM533ma0GuRqjyH4oj0XLqvtbL1bJnI4HmTr3v0Fg2GZWto/0gb4Us
	Pgj4FVE+pHVgigasF//k8F6aULxbGWaYf6tLmLM2hHIGVf8=
X-Google-Smtp-Source: ABdhPJwl3Vo/Vs5Z34flN6CYgE/lFM4ETjIdDqzp2/abAoy5oCSLPtnRP0QCamWWkZ3YcEU7qKEYYUYE2dhJQ4CKoic=
X-Received: by 2002:a67:fb81:: with SMTP id n1mr15732398vsr.65.1641339995567;
 Tue, 04 Jan 2022 15:46:35 -0800 (PST)
MIME-Version: 1.0
References: <436a4bef-7d60-49a4-97af-02b90b4fbd49n@googlegroups.com>
In-Reply-To: <436a4bef-7d60-49a4-97af-02b90b4fbd49n@googlegroups.com>
From: Bryan English <bryan@bryanenglish.com>
Date: Tue, 4 Jan 2022 18:46:24 -0500
Message-ID: <CA+35996-YwwZzKuLhnXxBT55GSzQV5fLjZT3YC7Mn8=gnMxULQ@mail.gmail.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000644e3d05d4ca3f13"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, January 2022

--000000000000644e3d05d4ca3f13
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Bryan English <bryan@bryanenglish.com>
Date: Tue, Jan 4, 2022 at 6:40 PM
Subject: Node.js security updates for all active release lines, January 2022
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release
lines on or shortly after Monday, 10th of January, 2022 For more
information see:
https://nodejs.org/en/blog/vulnerability/jan-2022-security-releases/

-- 
You received this message because you are subscribed to the Google Groups
"nodejs-sec" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to nodejs-sec+unsubscribe@googlegroups.com.
To view this discussion on the web visit
https://groups.google.com/d/msgid/nodejs-sec/436a4bef-7d60-49a4-97af-02b90b4fbd49n%40googlegroups.com
<https://groups.google.com/d/msgid/nodejs-sec/436a4bef-7d60-49a4-97af-02b90b4fbd49n%40googlegroups.com?utm_medium=email&utm_source=footer>
.

--000000000000644e3d05d4ca3f13--
