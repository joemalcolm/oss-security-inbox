X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1589" "Saturday" "2" "February" "2019" "09:12:26" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20190202081226.GA25332@eldamar.local>" "49" "Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" nil nil nil "2" "2019020208:12:26" "[oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" (number mark "        carnil@debia Feb  2   49/1589  " thread-indent "\"Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie\"\n") "<CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>" ("<CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>" "<20190201122721.GA17576@eldamar.local>" "<CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25900 invoked by uid 550); 2 Feb 2019 08:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25879 invoked from network); 2 Feb 2019 08:12:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fWLaWaGVyKkVRu3JIOAPy5ibjmo1yJZpaIvWEgqHGiE=;
        b=qmJThvnCH73fOWcIRdlkekmJmjxGppjkinqQqfUMvCR9LxzNAmjZaKrVstBbjzXwv2
         WaYJOps66zW15VXYFpdJIXovJG3GIwpHjTViT8kgTTVu41uxn90Zp7euQcxFeBPq0/Bv
         53VTKsZRggajJUm48cU4GqyaH8zlLrjGsK962LOEIDcMd82E6NaOHgBEkNtnyYSXWq0X
         bOov97+b7jt7yc3++Hhug3/3DVW5gGCaw86otB7DrqO2DDxrhin+kFqYdnNMXEPTB2XS
         FywXWlD/DTFwiXfAhWeqVhgopJwX9S8eA7Gu0T4meCJUafWX/wXLeDCwJHAoMMujAGby
         bfLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=fWLaWaGVyKkVRu3JIOAPy5ibjmo1yJZpaIvWEgqHGiE=;
        b=TTGeggIas6yYKvW8dMIBFAspV8YyZH6MECY2MQFuyPTt8dqOZ5miQgjZLbaNBzTNdp
         r9mIFP8JgS3d8tyYVzhJtiNpGRQUClslDV+wcEt/KXGTjt+mGJl2CCRWBz4dxEjcnOM2
         w0U0iDPVoEya/qrfzT5U2Z7Ek2lA4eNjc0MMn50tUMy6t2MAS1t1YNNYV7taFR168TCu
         tCFLDRASXs+gZBIJaPa9L6VguIoR+GJzvCvwptw/kEDL644DZq9Ypo0DLBlVmcP9N8Dv
         Epm4MSWnAyrxDym4aX+s1p1nMQE0TLvm7gVs7sO0ROj+DySOU8mxbdz4b1e/uwuohI7d
         7roQ==
X-Gm-Message-State: AJcUukeYi/lmN0I2n7CsJ7uQGnYR2q/IL4+3uErc/1k8SFht1w6D6zpQ
	ep4v2fXLAW7U1RDf0Ybpu5Xo2nazXCQ=
X-Google-Smtp-Source: ALg8bN76pykx1Jn70n14KapVnqM11UQjrAX/noPFLyDqvyDALvLrIVyY41/T1oAC2T3WjGBl2WahqQ==
X-Received: by 2002:a17:906:6b11:: with SMTP id q17mr23457327ejr.241.1549095148093;
        Sat, 02 Feb 2019 00:12:28 -0800 (PST)
Message-ID: <20190202081226.GA25332@eldamar.local>
References: <CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>
 <20190201122721.GA17576@eldamar.local>
 <CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Mike Jumper <mjumper@apache.org>
Date: Sat, 2 Feb 2019 09:12:26 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag
 missing from session cookie
To: oss-security@lists.openwall.com

Hi Mike,

On Fri, Feb 01, 2019 at 07:24:48PM -0800, Mike Jumper wrote:
> On Fri, Feb 1, 2019, 04:27 Salvatore Bonaccorso <carnil@debian.org wrote:
> 
> > Hi Mike,
> >
> > On Wed, Jan 23, 2019 at 02:21:30PM -0800, Mike Jumper wrote:
> > > CVE-2018-1340: Secure flag missing from Apache Guacamole session cookie
> > >
> > > Versions affected:
> > > Apache Guacamole 0.9.4 through 0.9.14
> > >
> > > Description:
> > > Prior to 1.0.0, Apache Guacamole used a cookie for client-side storage
> > > of the user's session token. This cookie lacked the "secure" flag,
> > > which could allow an attacker eavesdropping on the network to
> > > intercept the user's session token if unencrypted HTTP requests are
> > > made to the same domain.
> > >
> > > Mitigation:
> > > Users of Apache Guacamole 0.9.14 or older should upgrade to 1.0.0.
> > >
> > > Credit:
> > > We would like to thank Ross Golder for reporting this issue.
> >
> > Would it be possible to confirm, is this
> > https://issues.apache.org/jira/browse/GUACAMOLE-549
> > https://github.com/apache/guacamole-client/commit/884a9c0ee987f9cb49a69
> > ?
> >
> 
> That is the correct JIRA issue, yes, however there are multiple relevant
> commits.
> 
> With respect to the security aspect of the changes, the relevant pull
> request is:
> 
> https://github.com/apache/guacamole-client/pull/273
> 
> There are other relevant pull requests, though they deal mainly with
> eliminating cookies entirely:
> 
> https://github.com/apache/guacamole-client/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aclosed+GUACAMOLE-549

Thanks a lot!

Regards,
Salvatore
