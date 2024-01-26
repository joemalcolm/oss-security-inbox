Received: (qmail 15450 invoked by uid 550); 26 Jan 2024 23:01:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15425 invoked from network); 26 Jan 2024 23:01:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706310222; x=1706915022; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cp8pgcBCgBAumktp1NmIGkk+Yw14azBD6m6LnMp6D8g=;
        b=PmIa3Xw253wnIY8+A6vYOIm/XzPrD0V/UWHJdDfyCDYej0SjJqAB2gAJ2/G5RLGkUB
         XYTlxTjTorPgkYfcLAaTgh4Y8vvpUy/q1CojtEU/se8vqT/GB3Q8R755ndp9gN/aS7By
         J1gLC9AmsX3N5jMsamUwNeK8SPqJLHhWXW17hlv1pgeVd9sw/fDzpFyPtAsxuKEl2/Rt
         OJF/B9c/zKtRh/c+5mK1hrI5gfDrTk12hMYuux3RtT5kNRbRe2sV+N3soJBRxqp3MwKk
         ee7KGlfEJwvM/N0qUToPHqDr9z4At7vxJg0q8yBHhBxokNWt3OYrElNtEF9dyfkIorOz
         hwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310222; x=1706915022;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cp8pgcBCgBAumktp1NmIGkk+Yw14azBD6m6LnMp6D8g=;
        b=SMbYqumgAZ3r+p/FWKf7iUkgAIuk0wID8FRT8lZzmYMxryPJ6/QUOXm2GrGTttnb3g
         7f9cbsFx3d8XaoVHWsZtIkq+fdPxOodp8HsC2f2NZXqXbO45W8WMLSOof5+S28S2WFmu
         I+TnkJXa/BwZS+CaywDMe/nwjW0GHYm2dGWKpkhBw+0DIC1/Q+HBpcsJ2W8FMVQ73+tp
         tmscA9PdkIbY44xrlq9/Y1wfGF0uapcpOjvhZtog3hxzPiJfyUaIwsioFt8mG6qVLh8B
         V58AVXPixB0ApXiRFNvTkTO+rniuOM6eaQnhdwfQ85GnSrljPbLa5gTHrGVuG8WBNr7F
         B91w==
X-Gm-Message-State: AOJu0YxMv4i3Tsk4JY0OaT+z4UTUdDeTcT0IEj7dYFxOFfyUlD+8NcaI
	JSGMmDa3UHht8lM4Z7Ys+FaIUz7R3H6WUgK0Wl3R2Z8GqDiuLbQJOaJ7RQ0m
X-Google-Smtp-Source: AGHT+IGxwSXUxuKDIyTxsHQcXkSLDdNREkp2iJf//JTOT2xB5Msn4Pnq1d9+BmSnph274AmXsIc3Gw==
X-Received: by 2002:aa7:9886:0:b0:6dd:897b:4ff1 with SMTP id r6-20020aa79886000000b006dd897b4ff1mr621567pfl.33.1706310222451;
        Fri, 26 Jan 2024 15:03:42 -0800 (PST)
Message-ID: <47f2f72f-302d-2bdc-447d-0d970d9f8b15@gmail.com>
Date: Sat, 27 Jan 2024 10:03:38 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <aa1585dd-d109-463e-9639-9b6f576a3f1e@oracle.com>
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <aa1585dd-d109-463e-9639-9b6f576a3f1e@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Numerous unconfirmed FOSS CVEs disclosed on FD
 mailing list



On 1/27/24 08:53, Alan Coopersmith wrote:
> 
> Unfortunately, many of the email titles are misleading as they represent
> bugs other than NULL pointer dereferences.  For instance,
> "NULL pointer dereference in __glXGetDrawableAttribute() of Mesa" from
> https://seclists.org/fulldisclosure/2024/Jan/50 points to
> https://gitlab.freedesktop.org/mesa/mesa/-/issues/9857 which is an
> out-of-bounds read that would segfault long before it could cause the
> pointer to wrap around to a NULL value.

Most fields of the Graphviz issue are also incorrect. I will reply to 
that thread clarifying them.

> While I can't speak for all the projects involved, I can speak for the
> X.Org maintainers & security team, and I can say that we were not
> consulted or informed about this CVE filing - if I wasn't on the FD
> mailing list, I wouldn't even know it had happened.  The CNA responsible
> has not yet published the CVE to the CVE database yet, so we can't yet
> file a dispute, but once they do, I plan to request that they withdraw
> CVE-2023-45916 for xedit, as there is no security boundary crossed here
> and the bug doesn't allow someone to do anything they otherwise couldn't.

We (the Graphviz maintainers) were also not consulted/informed. Though 
we do not plan to contest the CVE.
