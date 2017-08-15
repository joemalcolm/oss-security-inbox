X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/15/8
Message-ID: <20170815193101.unvd2iexsbnilpy3@tunkki>
Date: Tue, 15 Aug 2017 22:31:01 +0300
From: Henri Salo <henri@...v.fi>
To: 连一汉 <lianyihan@....cn>
Cc: oss-security@...ts.openwall.com
Subject: Re: [CVE-2017-9608] null-point-exception happened when ffmpeg using dnxhd decoder to parsing a crafted mv file.
Content-Type: text/plain; charset=utf-8

On Mon, Aug 14, 2017 at 09:52:51AM +0000, 连一汉 wrote:
> I found a vulnerability of ffmpeg-3.3.2.
> FFmpeg could be crashed when it is parsing a crafted mov file.
> ffmpeg -c:v dnxhd -i poc.mov -y output.ts
> Use CVE-2017-9608.

Have you reported this issue to the upstream? Did you test this case against
latest development branch? https://www.ffmpeg.org/bugreports.html

-- 
Henri Salo
