Received: (qmail 17783 invoked by uid 550); 30 Oct 2022 11:42:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32674 invoked from network); 29 Oct 2022 21:07:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cmlh-id-au.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n3tAqXKj2PObedKl3BWqj307oeole7P0Dfa0MwJ3FWc=;
        b=bHLgwbF4cV91BNJF/wC6feGBYimpsFbKyWRwLsqK2hypUofSaXVCDPXlCGfF/oKLnE
         aw+K1MG34hCeeOuS6VpNO2ZfGpYurapWz6r4UZGC8pRUlQk6BckumsZOHDy/eCLpvQ29
         xSvL7AIITbkwFHBdao/w0J9EPka7rhOGHiV/QNholN5SEkGEwPFJwVrRa3nWvxY9KU02
         7Whijrk9drferJKXtY97CkAxoWxSJyVbrDx572vij3OAI2Bdsao6G9eFIXauvHguXLxP
         hAY1ZgA2GLb6GVJ03DgENNf/wFzu0pCal8UZi8S4FDg3RTDvhaZverd+OjGb+tz3fiHA
         XlsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3tAqXKj2PObedKl3BWqj307oeole7P0Dfa0MwJ3FWc=;
        b=uWGgdrJtebY0QwBTWAMexXeBshvInnOTvjirdsN7IcHHPxcOnlhK5DEA/HUCMXAYWT
         eQJu/eGwlXAaXf45VXAzhqyTX/HpCpDVPPn48ex4QW1fZ4un8mpBJEPi7SWYUjiIhcV1
         +TN6NBi7A7RDhgSQulUlACmFivhFzzl2SNctQsMdkBcWq1NXf+Jkon+5J/Ey1R2OWRiR
         yuyTHApIrGV7E/BCqm/P9OoBpNPc1hKQeyWjS1W56iswh9IJyy9oanJ4gutBzZIGRz6T
         4GPECHzgGzXSLtcumY5cQDw1hN7WtOTWL6cFhagmR0RvOEYPsFXRHAyJm633QY7PkYEf
         hbTQ==
X-Gm-Message-State: ACrzQf3MyBRVswlV1O3GRMcbYgGDMvOB97IEdVUD6RCQr+q7xb4gOU1m
	f3XITD+5ldoyckomtIACFogWZMIKQsvTZHdQ2PJ+/XVZNx80VQ==
X-Google-Smtp-Source: AMsMyM5ueC1iaW4bVr5rgnceFzJQIT7RUmlfjIIuSUfZFSHgrJJ8hEHvbMCsD9PtiHtmvzKGPAkrRK+i+uNTki0vgfw=
X-Received: by 2002:a17:906:730c:b0:791:997f:d65d with SMTP id
 di12-20020a170906730c00b00791997fd65dmr5608099ejc.18.1667077636692; Sat, 29
 Oct 2022 14:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <db0d3f4e-ea16-83f0-2a2c-8186f42af180@openssl.org> <20221026151737.rtmp5eatjf5uqgnb@mutt-hbsd>
In-Reply-To: <20221026151737.rtmp5eatjf5uqgnb@mutt-hbsd>
From: Christian Heinrich <christian.heinrich@cmlh.id.au>
Date: Sun, 30 Oct 2022 07:37:05 +1030
Message-ID: <CAGKxTUQhsNLx3jmkm6-1tG_2Ru0zXJDS3xERuj4TiiAX3C4Rdw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: openssl-announce@openssl.org, openssl-users@openssl.org, 
	openssl-project@openssl.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

Shawn,

On Thu, 27 Oct 2022 at 02:00, Shawn Webb <shawn.webb@hardenedbsd.org> wrote:
> I don't see anything on the CERT Vince site. Is there any way we could
> coordinate a response via CERT?

This is addressed within the "Prenotification policy" of
https://www.openssl.org/policies/general/security-policy.html


-- 
Regards,
Christian Heinrich

http://cmlh.id.au/contact
