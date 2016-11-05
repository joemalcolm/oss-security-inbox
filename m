X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["133" "Saturday" "5" "November" "2016" "00:05:35" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUD7KH_ZyfsCePr7YXd-VR2OjrZySLM0Wx-g34eD2q41JQ@mail.gmail.com>" "5" "[oss-security] Re: [FD] [oss-security] CVE request:Lynx invalid URL parsing with '?'" nil nil nil "11" "2016110507:05:35" "[oss-security] Re: [FD] [oss-security] CVE request:Lynx invalid URL parsing with '?'" (number mark "U       lcamtuf@core Nov  5    5/133   " thread-indent "\"[oss-security] Re: [FD] [oss-security] CVE request:Lynx invalid URL parsing with '?'\"\n") "<20161104120722.GA10421@vmw-debian7-64.jexium-island.net>" ("<CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>" "<20161104120722.GA10421@vmw-debian7-64.jexium-island.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12014 invoked by uid 550); 5 Nov 2016 11:42:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17584 invoked from network); 5 Nov 2016 07:06:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KkVyiVDMx2MK60JyEBNOzVkAVt/AWJpj4mIlF9ibrio=;
        b=gi5K1n4rADCySFOEmb4qDE7fLANAnF1g+uctUlNP8WuHwEqxC66vA6TBNF0hxkxZeV
         sTMZ6/smzNQBJl70Ut7XaYvOtlegLCkR7arADHnY+eRQeZfoktKVzs/vF3Nr95TnzYob
         /K62fr1Ov7rSLMa1r+SNC9WMGY4hIZKsa9ezv3wrijPxFqE5GwRrIhxV75f+9rHYVY2N
         MZtBj2Fske6itJ65TY+gM5x2Vnu1H03j3rNV6L8gF1vhubtHOSpvH+MpzzX3ZJoDrUEn
         eT/Ea1kqaNv83U5pKWOHsrBwZ1UNhoaUhENKzy4W8RO8aLnMN0S7QtgNAbfzuCqfSEg5
         6fCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KkVyiVDMx2MK60JyEBNOzVkAVt/AWJpj4mIlF9ibrio=;
        b=QT9dvyCC/oh56IJR8N/hoKZAyB5hCjEc48XjiK/6Gu8eG9EB1mDuAkR2t8qqsABCp9
         Jkxh4r6Al0PwqcVIX0Vmptqb/Cj0ZtUfLZAFhRRlqL3DCSg5L0Q4HDPexIEiKaZEoG/Y
         1ISrtw0PS4S6k7aNpzWOhmF390JzBlUigatDpFmS1Vburx4KsDDBn2JPR8EH0geZzM+V
         aoCo/jrmVw/QSvtv1mOtDt+ZpwO7QsIZNIOV+XGRdYNRAH8A+idySS/YnvtGsaZPJZP0
         OGWfFeiUJpD0h1mRb6rPvD45fgiIIWdRYZUw6R7bdMvmLnnHXPhdYizjNCR8Yezc/NXg
         3nyg==
X-Gm-Message-State: ABUngvejD6uPuT9jpM+LCPbmrCpWbltQ2+RNbIthjP1SCwcwmUSGV1fhi6J4H24AKiKOZxQ/JimuqaWlVtQimA==
X-Received: by 10.28.125.136 with SMTP id y130mr578967wmc.112.1478329555826;
 Sat, 05 Nov 2016 00:05:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161104120722.GA10421@vmw-debian7-64.jexium-island.net>
References: <CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>
 <20161104120722.GA10421@vmw-debian7-64.jexium-island.net>
From: Michal Zalewski <lcamtuf@coredump.cx>
Date: Sat, 5 Nov 2016 00:05:35 -0700
Message-ID: <CALx_OUD7KH_ZyfsCePr7YXd-VR2OjrZySLM0Wx-g34eD2q41JQ@mail.gmail.com>
To: dickey@his.com
Cc: redrain root <rootredrain@gmail.com>, oss-security <oss-security@lists.openwall.com>, 
	Assign a CVE Identifier <cve-assign@mitre.org>, 
	"fulldisclosure@seclists.org" <fulldisclosure@seclists.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: [FD] [oss-security] CVE request:Lynx invalid URL parsing with '?'

> Actually, it does parse correctly.  Go read RFC 1738.

IIRC, RFC 3986 "fixes" that, and so does https://url.spec.whatwg.org/.

/mz
