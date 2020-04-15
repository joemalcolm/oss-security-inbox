X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["978" "Wednesday" "15" "April" "2020" "13:31:43" "-0600" "Taylor Blau" "ttaylorr@github.com" "<20200415193143.GB39059@syl.local>" "26" "[oss-security] Re: CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server" "^Cc:" nil nil "4" "2020041519:31:43" "[oss-security] Re: CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server" (number mark "        ttaylorr@git Apr 15   26/978   " thread-indent "\"[oss-security] Re: CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server\"\n") "<20200415185944.GA18943@openwall.com>" ("<20200415185944.GA18943@openwall.com>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20308 invoked by uid 550); 15 Apr 2020 20:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5768 invoked from network); 15 Apr 2020 19:31:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=github.com; s=google;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RftRZKvIfFEACUYNsnVBmXQgxiPdbI1uWGS6xDNFfZY=;
        b=Iowo9W2eH3i1TrBU2h93vl/zCwnyXAOkGb32Ywu9yNAR5ge5C3QTFVnT2kK25qLwgu
         igS71+5CvevTiGyaGtqj8V//jYZLlsjosQjv1dITvAZO0Y4f+bquZlCy6m0QOeOpKfM8
         nnVMXFv6aK/wWvMJ45JSx53rXQfdbg10+Uxm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RftRZKvIfFEACUYNsnVBmXQgxiPdbI1uWGS6xDNFfZY=;
        b=aPA8MDOMpJUdbd6eAbRNdIUrCZwM3DrwhFTgKrgBO99O9BV/SQUFyZmrc5uCzQCtPD
         bmk9NWL6LYzgnbJkrFY9sRqrjQuXTlefW5V6jzFrGJ/k/XR38G4LyRc7SxdqiHne/cPa
         k+d6J9hQhLtABK5Q+m0WotU7S7fbN7c6LCzuhsjWGjnwp/ERDQzBZ5Tms2iq2Ug+mswq
         A6wXxCY1qLShz4L49Ayck6ek2ffnqkroAkM+VgHzOsNZksa/fju3Lc6fWVeiBZT4qzp+
         D5prEK3SdSAh+jkazMMA90bw9HAWRaDN5sLooaAW2HP+KZkHAdzQUzeX+VtkPOAILOsh
         j9Ng==
X-Gm-Message-State: AGi0PuZscKEgexFmYF07qlXAdGT/0woaGfYCzMwiyKHgGbArcXi6LjwK
	zCZYQ2Sz1j/UKDuaPznCYjoeLryGlNQ=
X-Google-Smtp-Source: APiQypI9HEEOzqeFDynEBwjpERHhMNod7HDIR5HBfRXq84gZosVhrFseaVQ/LAwB/cNrjJRDJFst5w==
X-Received: by 2002:a17:902:9a8a:: with SMTP id w10mr6458132plp.218.1586979104788;
        Wed, 15 Apr 2020 12:31:44 -0700 (PDT)
X-Google-Original-From: Taylor Blau <me@ttaylorr.com>
Message-ID: <20200415193143.GB39059@syl.local>
References: <20200415185944.GA18943@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200415185944.GA18943@openwall.com>
Cc: oss-security@lists.openwall.com
Date: Wed, 15 Apr 2020 13:31:43 -0600
From: Taylor Blau <ttaylorr@github.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2020-5260: Git: malicious URLs may cause Git to present
 stored credentials to the wrong server
To: Solar Designer <solar@openwall.com>

Hi all,

On Wed, Apr 15, 2020 at 08:59:44PM +0200, Solar Designer wrote:
> Hi,
>
> Taylor Blau brought this to the distros list a week ago (thanks!), but
> unfortunately failed to follow the distros list policy (despite of being
> specifically informed of that requirement by distros list members,
> twice) to post the information to oss-security on the public disclosure
> date/time.  So as list admin, after a delay of more than a day, I am
> taking over and do this (being unhappy that I have to do it for others).

My sincerest apologies for not sending this to oss-security in the
appropriate time. We (the git-security) list had discussed that I would
do so, and clearly it had slipped my mind.

The remainder of Alexander's guidance is correct from our perspective.
I'll make sure to avoid this mishap in the future by remembering to
email this list more promptly. Thanks, and sorry again.

> Quoting Taylor's original notification to distros:
>
> [snip]

Thanks,
Taylor
