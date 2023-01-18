Received: (qmail 9667 invoked by uid 550); 18 Jan 2023 08:00:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9647 invoked from network); 18 Jan 2023 08:00:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SuzdBM6jdOzk6DMyfw0iRpBJHbEMsA5TeSmQbZ7juBQ=;
        b=DtNxLx8Jo1FLar344EvhsVZIfKbooJEH6OCwiO1z8dbtOdiaAfo3Cwd+8mRpaq5G6v
         KCq8cna8zWBt928W6xH2tj7AIKL4w0wWvjcxTPJPkSxs/jE2Da7kzSSS396NCrqLZdXp
         YrCBDK871SjaJbJEWGuXtTBsrPY+A6PO/j4Imu8qCBTwcqQ1Xbn9Uxj9geqkK0gKCtoD
         UNaSOQILysZYYY+AwdbSgNuCj2RLZ8bD8KUek1JwsmvApbZQgMpkfqIXhp+8DJG006DQ
         sru65R3uHjBrQhLBS5NWta1j4rxfvOe7mLYiewM5VXKR20MVAtyr018glMPiWqi83EgI
         Z2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SuzdBM6jdOzk6DMyfw0iRpBJHbEMsA5TeSmQbZ7juBQ=;
        b=Sbzvebd4XGwaBeNEg9N5zlMj5IW8/WemnlmHLZNoWUK+t3tkSN+T5Zt+zn1pu3iJmV
         oH8ch2uKhygkXaeOiG+eLFkKmNvaElhcoQrZvuRMbEUqZKzAt8cjhoz12xujlCLhcNOf
         DgrmOkQAkQwULj6I/+7OZ4DR2RQagw+fFeRxiM3weyun6RrXwnQjXTdCTEgvN9wxacVF
         jrJDIZhVGLdzokBP0jHRr80UCMzQfUAqdGeGy93DOEqdBgrAua4l/33Kthj/7RtteGkb
         2qD75VkMRjHHobakqsITWbsDa/s4y8ct9DX2Faw5aWTs6AWJ+jyv9QXw6bxpNDoUpUtR
         nZvQ==
X-Gm-Message-State: AFqh2koFq6eP/YZwsspr1MjTTL9E9f9a3lfOGZ3qhW+lk78czcX9pXUI
	TwZ2dQN7kHCaoQoxOcylgSvAP8u1ilXpAQ==
X-Google-Smtp-Source: AMrXdXt3KNbwLy09utHe5t3nXn7oinOfORGjbMXm9L/unKNUSO82iWaIc8skTnp4aP1DoaL/Go0BVA==
X-Received: by 2002:a17:907:76da:b0:7c1:1dc7:8837 with SMTP id kf26-20020a17090776da00b007c11dc78837mr6110348ejc.66.1674028822592;
        Wed, 18 Jan 2023 00:00:22 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 18 Jan 2023 09:00:20 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Y8enFHfWv5LQ8Whx@eldamar.lan>
References: <CAO15rPk6Uh6ZqZ=c8yjz0=53DqXQKF=fSXqDo9dLdMAy7-YS3g@mail.gmail.com>
 <Y8A+/ys+5oIRzr9V@kroah.com>
 <Y8BednLm17osifo0@gentoo.org>
 <Y8EvnDtwz6Hlq/Qs@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y8EvnDtwz6Hlq/Qs@kroah.com>
Subject: Re: [oss-security] CVE-2023-0122: Linux kernel: Pre-Auth Remote DoS
 in NVMe

Hi

On Fri, Jan 13, 2023 at 11:17:00AM +0100, Greg KH wrote:
> On Thu, Jan 12, 2023 at 01:24:38PM -0600, John Helmert III wrote:
> > On Thu, Jan 12, 2023 at 06:10:23PM +0100, Greg KH wrote:
> > > On Thu, Jan 12, 2023 at 04:12:30PM +0200, Tal Lossos wrote:
> > > > Hi all,
> > > > 
> > > > # Description
> > > > A NULL Pointer Dereference bug in nvmet_setup_auth
> > > > (drivers/nvme/target/auth.c) can be triggered remotely to cause a DoS.
> > > > Since the bug occurs in the authentication feature, it can be easily
> > > > triggered by an unauthorized client in the pre-auth stage.
> > > > Versions affected - v6.0-rc1 to v6.0-rc3 (fixed in v6.0-rc4).
> > > 
> > > Meta-comment, why are CVE's being assigned for issues found, and then
> > > fixed, in development kernel releases?  Who assigned this CVE, MITRE or
> > > someone else?
> > 
> > This information used to be available for "reserved" CVEs in the JSON
> > data in [1], but now that that's retired I'm not sure this is made
> > public anywhere.
> > 
> > [1] https://github.com/CVEProject/cvelistV5
> 
> So if we don't know who allocated it, we can't know who to ask to get it
> revoked?

According to the CVE entry now published, the assignerShortName is
"redhat" so the contact to discuss to possibly reject the CVE would be
https://www.cve.org/PartnerInformation/ListofPartners/partner/redhat
(see CNA contact email).

Hope this helps,

Regards,
Salvatore
