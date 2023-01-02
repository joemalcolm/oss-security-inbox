Received: (qmail 5390 invoked by uid 550); 2 Jan 2023 14:33:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27907 invoked from network); 2 Jan 2023 11:51:30 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AFqh2koOsRgqfaKrd7uv4egdFv3x4a9rQlbqDhkd9X3DzIBCr38CDVLl
	mr1cUNA/6d1UywUWcyDJ26kfTiQOUCOFoB1gVz+tqg==
X-Google-Smtp-Source: AMrXdXte2AFJDa0BH98EQq2lg7VbALwGCPJNW7hPWJ6ouG+y4FC22mn+cXIyLEjPjcZjbQNcX7O423WYf3Ony9Zo+xY=
X-Received: by 2002:a81:4c07:0:b0:3e3:866c:a51b with SMTP id
 z7-20020a814c07000000b003e3866ca51bmr2951907ywa.439.1672660275494; Mon, 02
 Jan 2023 03:51:15 -0800 (PST)
MIME-Version: 1.0
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org> <Y61i4ojYhvXXx7Ap@eldamar.lan>
 <Y69d7JASugX99avX@gentoo.org> <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
 <Y7B0lbSvEhkIMdoq@gentoo.org>
In-Reply-To: <Y7B0lbSvEhkIMdoq@gentoo.org>
From: Arnout Engelen <engelen@apache.org>
Date: Mon, 2 Jan 2023 12:51:04 +0100
X-Gmail-Original-Message-ID: <CAHKPuKFDBmPF2So+g=VTkgniFGJpXHZ37kv+urCM-_j4pkjNRQ@mail.gmail.com>
Message-ID: <CAHKPuKFDBmPF2So+g=VTkgniFGJpXHZ37kv+urCM-_j4pkjNRQ@mail.gmail.com>
To: John Helmert III <ajak@gentoo.org>
Cc: oss-security@lists.openwall.com, security@apache.org, jorton@apache.org, 
	carnil@debian.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

On Sat, Dec 31, 2022 at 6:42 PM John Helmert III <ajak@gentoo.org> wrote:
> On Sat, Dec 31, 2022 at 10:54:00AM +0100, Arnout Engelen wrote:
> > On Fri, Dec 30, 2022 at 10:54 PM John Helmert III <ajak@gentoo.org> wrote:
> > > On Thu, Dec 29, 2022 at 10:50:26AM +0100, Salvatore Bonaccorso wrote:
> > > > On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> > > > > On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > > > > > A flaw in libapreq2 versions 2.16 and earlier could cause a buffer
> > > > > > overflow while processing multipart form uploads.
> > > > >
> > > > > Is there a fixed version or patch or upstream issue?
> >
> > libapreq2 2.17 was released on the same day as the advisory describing
> > the problem with 2.16 and earlier (https://httpd.apache.org/apreq/).
>
> Does it fix CVE-2022-22728? Whether or not it does isn't clear from
> the changelog [1], and I can't find a reference to the CVE elsewhere
> in the source tree.

I think https://svn.apache.org/viewvc?view=revision&revision=1894937
contained the fix for this issue. This is included in 2.17.


Kind regards,

Arnout
