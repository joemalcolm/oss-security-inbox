Received: (qmail 26435 invoked by uid 550); 26 Oct 2023 21:54:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21852 invoked from network); 26 Oct 2023 20:11:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698351094; x=1698955894; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=T/8o6U40TGm4zIueZT6e3nrcbllth/wVUy98/cqOb9o=;
        b=V/ZUdgc5eIii+WKuz9QxMAHYYgmTcuZjqbgFSh8Gl1ExTeR8G203RqD4OYkF9B+S1l
         1h7keMQ4vgnn1IfWrHY1UnyrEcgMzLW4XF+/tpFzvV5FXE4S7t7z00j3X1qMRfPC2PLv
         CXDM317GHqrKuJXJlbuV6OZGRKoTX1ygRiKgG1YiRTZdUFS5OYkvyAYoFRSXib9C/FtL
         e/i2JlqjL8dM3l6dQFrmax+Hoy8d4SokUo21PRYmj+sEcOYbprOmjSrtpdXn0QAnE51O
         FoNkYoqcHK7m8V1rzGUkrYRsDfCoBHkdQft6EqAaMOj2Z0FffLFEVjwbEShEZDe+GpuG
         4D6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698351094; x=1698955894;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/8o6U40TGm4zIueZT6e3nrcbllth/wVUy98/cqOb9o=;
        b=vcmgwKAtkfYhtd52JA/anuuDck9cplzycEZQ8RsEw8J1iW9WEZIxk1xlVh+kYxxU+C
         clSxRdeff/dw9alAo2WS3GLBO4W0cQlv2F4rwAooDwEOHS5AgFSMCFVdpV7Shj3PPawU
         KbaNvUAx0CFRxI64i4WQrSE3yM0Xv5XakRbNb4g9NmUxICbS1F3rv9Tak07Z3wrBsmxX
         jdP9oXQv/eZgt60S764KgOFWOy8I0Gz53+SOW3/OvJCeABnQXr23C+zG24/uFL0nDay8
         u20WhVqV0z7OGtrvhAa8f6TFcnas265dKVVyXZyKmpsSW0Ijg2omh5wG1rScMXsiO+AU
         AS7Q==
X-Gm-Message-State: AOJu0Yz3FGpo278Khz5BWxeFBqs75mKgZzinWH9whND3t9O6l3KJmo17
	GZm6MzTZdJ6olY3lOLdbJqPegNXfu78=
X-Google-Smtp-Source: AGHT+IGPlWj3Kn0c/KxY0LJKm0QuIVkMdJ3Lzf0SUweSfnkThv1LbvmDt0+giYvZkITU74qpFGq03A==
X-Received: by 2002:a19:ee11:0:b0:508:1edf:92f with SMTP id g17-20020a19ee11000000b005081edf092fmr323243lfb.40.1698351094418;
        Thu, 26 Oct 2023 13:11:34 -0700 (PDT)
Message-ID: <841313aeae2c595e9ed3cf2f7197a7c3.939be4cb@humanizers.horsehide>
Date: Thu, 26 Oct 2023 23:11:32 +0300
From: Turistu <turistu@gmail.com>
To: oss-security@lists.openwall.com
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Tue, Oct 17, 2023 at 03:17:36AM +0300, turistu wrote:
> ### Firefox Patch
> ```
> diff -r 9b362770f30b layout/generic/nsFrameSelection.cpp
> --- a/layout/generic/nsFrameSelection.cpp	Fri Oct 06 12:03:17 2023 +0000
> +++ b/layout/generic/nsFrameSelection.cpp	Sun Oct 08 11:04:41 2023 +0300
> @@ -3345,6 +3345,10 @@
>      return;  // Don't care if we are still dragging.
>    }
>  
> +  if (aReason & nsISelectionListener::JS_REASON) {
> +    return;
> +  }
> +
>    if (!aDocument || aSelection.IsCollapsed()) {
>  #ifdef DEBUG_CLIPBOARD
>      fprintf(stderr, "CLIPBOARD: no selection/collapsed selection\n");
> ```
> 
> The idea of this patch was to *always* prevent javascript from indirectly
> messing with the primary selection via the Selection API. However, it turned
> out that the `JS_REASON` flag was not reliable; if javascript calls some
> function like `addRange()` or `selectAllChildren()` while the user has started
> dragging but hasn't released the mouse button yet, that code will be called
> *without* that flag but with the text set by javascript, not the text
> selected by the user. However, I think that this patch is still enough

They have recently added a (functionally identical) patch to mozilla-central:
https://hg.mozilla.org/mozilla-central/rev/88e0043c5aa4234dada941ac2fd0ded875210508

So the most egregious issue should be fixed in their "nighly" pre-release
version of firefox soon.

I have updated my write-up with that and more info at:
https://github.com/turistu/odds-n-ends/blob/main/firefox/pastejack.md
