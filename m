X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Wednesday" "6" "July" "2016" "11:01:13" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160706090113.GA3916@eldamar.local>" "20" "Re: [oss-security] Browsing and attaching images considered harmful in Linux" "^Cc:" nil nil "7" "2016070609:01:13" "[oss-security] Browsing and attaching images considered harmful in Linux" (number mark "        carnil@debia Jul  6   20/747   " thread-indent "\"Re: [oss-security] Browsing and attaching images considered harmful in Linux\"\n") "<CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>" ("<CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5737 invoked by uid 550); 6 Jul 2016 09:01:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5719 invoked from network); 6 Jul 2016 09:01:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9gPux+lDaSMnPDqaf5gotCVHsZU3Sx/wHvqu5ScqbTE=;
        b=b8B2ysh6EaU89ztasN8xY3MuRoRs6hKqv4ZS9WYB+2PmVmnuuFF5MlD4GFqBa0Btjx
         4tnt70zCsK4QbBrGXVh8YuLz212YtP2KsZ6/rqtFKqofaKsBkQ2xLg+vCeqkitOGjZku
         hYUr94T0f8Hd6AydA+Jj2Cu3QmPtE4HgAnAK8yvIe7P3nAZkbiPJrtIgKVe11WGYSAUl
         vZAjkYymPzuTYz54EtypdvQgdza45ni+ZQInrHkNUYJv8SGX4nNeyGTsgaRIvCZ6pEvX
         nvVvLLvNnea0UUu5S7ds0ZNO0wDobp1ckV6aIP2b82Pn3mrv6Q6Rwlz2GmmYlv6LV7sa
         4L1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=9gPux+lDaSMnPDqaf5gotCVHsZU3Sx/wHvqu5ScqbTE=;
        b=jwihUzk9bAePz4Ltv1f6YjDgJD0apIpjyctXqzPRsYRwsAewVPuc/BqC9YCx8Vfeib
         GSydCcxSdtZmtECdVzsAuMiytjChJuS8YFEx//6U0jaX525ve9S+DNrPXpj9hcpfPUjB
         2/lpWn0BC0OEO0HiCuUJEOaOpmGuRab69GQjU1elz3QluUg6Rri/qE68wKDx+pGHWg7z
         k9lZcu2h37YGPvqU57B/YyMJ+8fbUtAse/7Oqr3pqUQTPidWbq0LDwxrHSqoQtQUwD7U
         TOwmhB21TtgDhBBeC2hEO1zzm+PACS7nZM9/LUc7WDSwoMLWyLf5UB/CB7yL7mcGHCG+
         hgrg==
X-Gm-Message-State: ALyK8tK6dK7MeATlTt9YnLamPP9mSd0fzT8IZc+hy5ZuthpN6TMR2exCcZGaPuREqZsrTQ==
X-Received: by 10.195.11.40 with SMTP id ef8mr19347670wjd.137.1467795661702;
        Wed, 06 Jul 2016 02:01:01 -0700 (PDT)
Message-ID: <20160706090113.GA3916@eldamar.local>
References: <CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: oss-security@lists.openwall.com
Date: Wed, 6 Jul 2016 11:01:13 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Browsing and attaching images considered harmful
 in Linux
To: Gustavo Grieco <gustavo.grieco@gmail.com>

Hi

On Mon, Jul 04, 2016 at 09:13:05PM +0200, Gustavo Grieco wrote:
> Fortunately, this issue is already solved in the last revision of
> librsvg2 (AFAIK, this issue has no CVE, so please MITRE assign one if
> suitable). Nevertheless, I reported such vulnerability to Mozilla more
> than a month ago hoping that they will disable the svg support in the
> open/attach widget. After some discussion, it was marked as WONTFIX.
> While i understand why, i still feel it can be productive to discuss
> this here.

If I correctly bisected with the reproducer, then the fix should be
around
https://git.gnome.org/browse/librsvg/commit/?id=0035e95118a60c0cd3949c2300472d805e16a022
(2.40.7).

If anyone can confirm that would be great.

Regards,
Salvatore
