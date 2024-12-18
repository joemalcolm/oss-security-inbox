Received: (qmail 5494 invoked by uid 550); 18 Dec 2024 15:08:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3385 invoked from network); 18 Dec 2024 07:36:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734507405; x=1735112205; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=enjNQ1PYtBt7cK6VicROP/B8EgWnu0svS4eATXrGlQw=;
        b=Fl5mQTs7sOrnYEg0EOYDavoQscFjLbSmDTW0GsM62FTs4rozYTLcfv9trJxZ2CjSOs
         kpMN6YqFg2SWp3mKasqmDIQdZF94oI2LGMBqWcE6GQHoTcU8VtnxDgL5NITtjo8GGBXG
         oF4rJLrTPUIIFjozcXf3DdFBUx7ucTIESqPzHVUNKhXpTDwbMFy1wjbsVQjKuwifgtzX
         v3qjEoECJKnLEUIvGwo9/arZcq1XCBrmQ67ZlIRFHHWbj/w/6dtDAiDxnX/NjXvNgHQz
         RLpANPe1eTe3ThCnt5R5lQSSyEjkZ4Q8LKmdbVkFpsoqarb94EVL7PhcZLTtphobbL+i
         B1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734507405; x=1735112205;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=enjNQ1PYtBt7cK6VicROP/B8EgWnu0svS4eATXrGlQw=;
        b=cJCmF6TPMuDi2w/stqrkyo8dY4y/p0zGJQ9XvTFAbGhnYtUdJkL7mj9KNPBS7EUvMK
         hBTx0tpWtEYGhi/nSrasRovt+XflGAYXkNBJ2LT0wiJQShTyjUjWJN+NuOrHwBo91ENy
         aBP5c7GgBDRWQV4juIIJEjjgpgzmX6BBrC/4NHcPtzYZUXZueeAewHAuLepzT1r+xWsC
         uEFp5WUzJytbu0P2Y4bYiiNALhkHXy5yZH5VI5iL4LzOnskJXvkHEaKnvfbMXbtAL+Lv
         RZhtb6op5bbS7pJW47d73yPU1FeZxReiK3ZGVjdRVKUBg95GxLaIZHa4fU3XBZWIhp90
         J9ig==
X-Gm-Message-State: AOJu0YyMXdUFhe9Wn9XqSsxUSO16CeaSD4NlX57sBJ+u62ZxcJ3+cDGe
	xaYNNkvdTmD0C4BJd2CtGucD/wKlrdjn21YE199XFHlb2+srdWYlSSKrq3m8uApj+zOpsSy98x3
	IgdYKSVm4cgTi9vOvIvdz7YArpvXPuG3+Ch0=
X-Gm-Gg: ASbGncv0BAVzMr+kVwHvXtLUCPcZh7a2LKmQiZB8GixBJkpeLOkHZS/8NokLj9RZRl3
	B/XchC7k/q2OzBQVkAqA3iTGu+l35BsmV0IVpBA==
X-Google-Smtp-Source: AGHT+IFpk8I6Lh8QhfZ4u+TY2w70UJuGeN2QtK5CQ4DSKq/cDrwV2EPc3+VpJlwxWyBGgfp345jA0iXk+Uw2C2AgNIQ=
X-Received: by 2002:a05:6512:1246:b0:540:25a6:c390 with SMTP id
 2adb3069b0e04-541e674c045mr560039e87.23.1734507404965; Tue, 17 Dec 2024
 23:36:44 -0800 (PST)
MIME-Version: 1.0
References: <9130b415-d545-4dba-8d0f-69d098f56095@apache.org>
In-Reply-To: <9130b415-d545-4dba-8d0f-69d098f56095@apache.org>
From: Nick Boyce <nick.boyce@gmail.com>
Date: Wed, 18 Dec 2024 07:36:06 +0000
Message-ID: <CACqxkWJbU2MPEiC=kEibYktDVVnGFRhsxi-967MvUr2MjjahTw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2024-50379: Apache Tomcat: RCE due to TOCTOU
 issue in JSP compilation

> This issue affects Apache Tomcat: from 11.0.0-M1
> through 11.0.1, from 10.1.0-M1 through 10.1.33,
> from 9.0.0.M1 through 9.0.97
>
> Users are recommended to upgrade to version 11.0.2,
> 10.1.34 or 9.0.08

Should that last fixed version be 9.0.98 ?

Nick
