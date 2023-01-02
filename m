Received: (qmail 14055 invoked by uid 550); 2 Jan 2023 16:19:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14037 invoked from network); 2 Jan 2023 16:19:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/cql/hBAj8G4EpWJlK9mt+e5yO6LEUNSYKIh0AJFevQ=;
        b=Wq7yrHx1UItWzQOeD8LgcBU+RqoNAifXuAYgkjsBm4/H5p1oSToTjuNXes8DqHuehe
         7UgJINVMxtz+4F6Qyi5qOKGUiUql2farBJO9nNgLaTYT3T3Um4EKkMQVfs0D/UWMsxJx
         0RDiN7hc4jbrS051i0+lBnHWiIEsxfZ4l3555jxugryK/SS5FSaUVJnfnK3LjIZjDQG3
         Oob/D/3j4g1OXFSDDT0nWXfa7nNf3GyJwe0sjr21Jb2kQ+rQo8+jXPyLO7t49Pmvr8kf
         tgJzie1zy7ISM1UAvpPgFn/WPeNuWzCq2kTt0NVIMgUQywkx8Px+KFQhbDx+96EowbMA
         q65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cql/hBAj8G4EpWJlK9mt+e5yO6LEUNSYKIh0AJFevQ=;
        b=ht5Od1tAr/RM3AKyIP3A+g6eNal+S8OOcYJ/IoZVHQB5A3Dj3QDlh5wmoq2X/IdwnV
         qU/cqdnBESFuqvKcyb1swLtCSvQJ6L4TbHX78e/6NnLw0+vjucwHtZqKOJGPmixACvjw
         LSa7UgFcmifGM85s7w/mBR87DqdOsnKoO8FMQqUm6gyaM/5YtEKMvgbUbfVPgIMQflHV
         xAdM7f3FjnxsLU8RJce2ARzRUJkr5rH6zYtF3U/dDYoWZ4dzZoDNgvNHvfIWYqDL0Zhb
         5fLO22DviT3v1bBvSmeLWybh70VaMa1WfrN5QaG6khVne7D2qTYNO9f5lhTfLdAVZ4Fb
         J4oQ==
X-Gm-Message-State: AFqh2krnbVtCTrGOkHPAMbsPoNl6PblnIITT7ek2InJncYMJ6l1/gxtg
	UFBsR1Q1qeoNA0gdnBjkc4g=
X-Google-Smtp-Source: AMrXdXsKl3XZ45chaBCs6ViUtSvSvAHp77M2fjur6h6ijB9U4SUvtfIEulYMY6L/uV47qRZfu1G9ig==
X-Received: by 2002:adf:e88f:0:b0:29c:e3b0:838b with SMTP id d15-20020adfe88f000000b0029ce3b0838bmr1217192wrm.15.1672676371502;
        Mon, 02 Jan 2023 08:19:31 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 2 Jan 2023 17:19:29 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: Arnout Engelen <engelen@apache.org>
Cc: John Helmert III <ajak@gentoo.org>, security@apache.org,
	jorton@apache.org, oss-security@lists.openwall.com
Message-ID: <Y7MEEZ8v8rhptsuL@eldamar.lan>
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org>
 <Y61i4ojYhvXXx7Ap@eldamar.lan>
 <Y69d7JASugX99avX@gentoo.org>
 <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
 <Y7B0lbSvEhkIMdoq@gentoo.org>
 <CAHKPuKFDBmPF2So+g=VTkgniFGJpXHZ37kv+urCM-_j4pkjNRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHKPuKFDBmPF2So+g=VTkgniFGJpXHZ37kv+urCM-_j4pkjNRQ@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

Hi Arnout,

On Mon, Jan 02, 2023 at 12:51:04PM +0100, Arnout Engelen wrote:
> On Sat, Dec 31, 2022 at 6:42 PM John Helmert III <ajak@gentoo.org> wrote:
> > On Sat, Dec 31, 2022 at 10:54:00AM +0100, Arnout Engelen wrote:
> > > On Fri, Dec 30, 2022 at 10:54 PM John Helmert III <ajak@gentoo.org> wrote:
> > > > On Thu, Dec 29, 2022 at 10:50:26AM +0100, Salvatore Bonaccorso wrote:
> > > > > On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> > > > > > On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > > > > > > A flaw in libapreq2 versions 2.16 and earlier could cause a buffer
> > > > > > > overflow while processing multipart form uploads.
> > > > > >
> > > > > > Is there a fixed version or patch or upstream issue?
> > >
> > > libapreq2 2.17 was released on the same day as the advisory describing
> > > the problem with 2.16 and earlier (https://httpd.apache.org/apreq/).
> >
> > Does it fix CVE-2022-22728? Whether or not it does isn't clear from
> > the changelog [1], and I can't find a reference to the CVE elsewhere
> > in the source tree.
> 
> I think https://svn.apache.org/viewvc?view=revision&revision=1894937
> contained the fix for this issue. This is included in 2.17.

Thank you!

So apart https://svn.apache.org/r1894937 one would probably as well
need

https://svn.apache.org/r1894940 (non-functional change)
https://svn.apache.org/r1894977

and

https://svn.apache.org/r1895054

Regards,
Salvatore
