Received: (qmail 28236 invoked by uid 550); 31 Dec 2022 11:45:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24097 invoked from network); 31 Dec 2022 09:54:26 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AFqh2kowgOJ5YQ8E5JMKLPiC//tRsu6/ONOuhZVKmq4VPGROrAjjbxvf
	9rCgzj+AYi4hVErgMzo+ZqCw+45/Vpy49dOUNTZ0ZA==
X-Google-Smtp-Source: AMrXdXuBiZl1sARv8UOc362AfkFE5gSNMJFpMu6Lt/XltUOA3gkd1i+rrte2MLD1GZTFbixFlLU32wfCyVoglNCrKJo=
X-Received: by 2002:a81:7d03:0:b0:3eb:447b:56cc with SMTP id
 y3-20020a817d03000000b003eb447b56ccmr4782274ywc.296.1672480451270; Sat, 31
 Dec 2022 01:54:11 -0800 (PST)
MIME-Version: 1.0
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org> <Y61i4ojYhvXXx7Ap@eldamar.lan> <Y69d7JASugX99avX@gentoo.org>
In-Reply-To: <Y69d7JASugX99avX@gentoo.org>
From: Arnout Engelen <engelen@apache.org>
Date: Sat, 31 Dec 2022 10:54:00 +0100
X-Gmail-Original-Message-ID: <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
Message-ID: <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
To: John Helmert III <ajak@gentoo.org>
Cc: security@apache.org, jorton@apache.org, carnil@debian.org, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

On Fri, Dec 30, 2022 at 10:54 PM John Helmert III <ajak@gentoo.org> wrote:
> On Thu, Dec 29, 2022 at 10:50:26AM +0100, Salvatore Bonaccorso wrote:
> > On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> > > On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > > > A flaw in libapreq2 versions 2.16 and earlier could cause a buffer
> > > > overflow while processing multipart form uploads.
> > >
> > > Is there a fixed version or patch or upstream issue?

libapreq2 2.17 was released on the same day as the advisory describing
the problem with 2.16 and earlier (https://httpd.apache.org/apreq/).


Kind regards,

Arnout
