Received: (qmail 12272 invoked by uid 550); 30 Apr 2024 07:41:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12253 invoked from network); 30 Apr 2024 07:41:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714462893; x=1715067693; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AsqymBIF/gpM/Q2HEyqUQ65U1E9h9X8Dvts4gLh9KIc=;
        b=Z8XaQbML9qFnLsEcY7HaSyFyprjcweCdtA3No/RGXw3yFITscgsIcbg1gGRG/sq+cu
         x+h8jbEG7Bw8fGT+bUmlifS5BHnsnHVJ41VNHC1HGxrcOjSPMdlI2+XUacp8BHaexvTp
         KjctYwq9lIEcKzgQVoiD7aQVW5WaCUbfK0aJBpGk85gqYYbRVna6QVKBTSwpjNOx0mQj
         JxTC1zDb+XNDsKhcySqKq9NKN1mgnR9xZRZnl+qsfr/EQx8PLY2KcbLDfMpVjlh0+Ut2
         R2myMUSUjk0fHXDuAFhz4OZg6w/2Qy1Q0zKxQt2TrUM9f0kX7Yq5EvU4j7R0O0NOn8+m
         nQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714462893; x=1715067693;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AsqymBIF/gpM/Q2HEyqUQ65U1E9h9X8Dvts4gLh9KIc=;
        b=am28OAeaHXvUhHHn0L+JnjhyPvgVABWkvcK+6YIbjDYPkv5JtV+v+VQsM7jchbzE7C
         H1HylDf3Xaa8Ov1yddT0m7PIjASoKI7IWx6WrkAZg5Uv9le+K1hZRqr7KoSrVDV2W+y5
         kywn/8tRjj+8v93Z4IvvfVkATHYTsyT+AO74v9XuBiGxTS4UyznSX6zhcJBdhUdjpcVo
         m2hvyQ99HeVfrgDrIA/+/Cu+639+NUthCOQzSAby8PuEM+rYeoeyytyd4LoS5S3jqrmj
         KVrv5bKmrXxn1oYBhpj7ScNNakJw/HwJg6MVJt436I6ubR2PwS+LvVmpp9WWkTD/++Wo
         7ScA==
X-Gm-Message-State: AOJu0Yxzyq5dNXuB5pDrA2J/QrexoHXkXJg+iR2mQ4PstcOSsVKFJCVz
	W2VuI++2JHLgtQral4JYjwuuVCBfD3UZF9Ny4gkjMKdNVJoro2ezTSHi/axw
X-Google-Smtp-Source: AGHT+IEvSP5d/+nc0PnnCkG3jICJCPrg+ONVz14gtr20mBNAZSBjiSxnnWlZj6pHLJPA9iDswRf7XQ==
X-Received: by 2002:a17:906:48d4:b0:a55:5620:675c with SMTP id d20-20020a17090648d400b00a555620675cmr1085613ejt.34.1714462893128;
        Tue, 30 Apr 2024 00:41:33 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 30 Apr 2024 09:41:31 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZjCgq5y_tKM0oXW7@eldamar.lan>
References: <5222127.EKZ5pzy0G1@sinistra.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5222127.EKZ5pzy0G1@sinistra.local>
Subject: Re: [oss-security] libksieve (used by kmail/kontact) sent password
 as username

On Thu, Apr 25, 2024 at 06:10:54PM +0200, Jonas Schäfer wrote:
> Hello list,
> 
> Managesieve is a protocol to configure the email filtering system Sieve via 
> TCP/IP. It is typically authenticated just like IMAP is. The managesieve 
> client implementation in KDE (libksieve) had a bug which used the password as 
> username.
> 
> That exposed the password in plaintext server logs, as usernames are commonly 
> logged on failed login attempts.
> 
> This bug has existed for several years and made it into multiple Debian 
> releases. It has only recently been fixed upstream [1] and even more recently 
> been fixed in Debian [2] (stable package updates still pending). As this bug 
> has been documented in the internet at various places [3] [4] but I haven't 
> seen any mention of it here yet, I thought sharing it here made sense.
> 
> As far as I know, no CVE has been allocated for this.

FTR, https://www.cve.org/CVERecord?id=CVE-2023-52723 was assigned for
this issue.

Regards,
Salvatore
