X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1389" "Friday" "19" "February" "2016" "02:28:47" "+0000" "Gynvael Coldwind" "gynvael@coldwind.pl" "<CAAnPYQ4OJfyD9CWXVihRBDMkXU44edzWSm9mUUn5S7-tDb0hGg@mail.gmail.com>" "41" "Re: [oss-security] Re: Address Sanitizer local root" nil nil nil "2" "2016021902:28:47" "[oss-security] Re: Address Sanitizer local root" (number mark "U       gynvael@cold Feb 19   41/1389  " thread-indent "\"Re: [oss-security] Re: Address Sanitizer local root\"\n") "<56C6516E.7040808@xiphosresearch.co.uk>" ("<56C6516E.7040808@xiphosresearch.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29947 invoked by uid 550); 19 Feb 2016 02:29:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29929 invoked from network); 19 Feb 2016 02:29:08 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-type;
        bh=8c8Nu8KsN6H/FT/kx/LhUQUzZHzGKlT61o6sJv4Hjq0=;
        b=Ppx8GTBRH099urpLb4kV5xkmgsaD7hVTBg9fxD1xY66aFZBzGH5VJZxOeRs+RMqhBS
         8McfFTl1fmwBMfVig2PrHWn8sLrzFHCxRYTfLNK0Zjakuszves0MIwy+sE51bp5RzqSP
         LUUQf6AWVRYSfn7AtMVpJv0gj8959MiV5OPkUJc0SxCsn1e4EnMQuuaHNVIVe/a5gMET
         j/R7yU3I0jdAt+7vFkVZKg+LV9ycQN2DHjf2SKChDx1g3EJJxXycQ9py6bVUbNlcqXBH
         jI1ticmg8uXHbjpnlSLIqaWZ91whYCSx8aniy0vQfbFanxkh/Ou7D8IKGpkVdpSRat2v
         3KxA==
X-Gm-Message-State: AG10YOSnG7vUJHjiWrBapt/DEhLfWmt4EH61/OtGXUcFPYNQdd52DjO5gt/Aonrkf8ga/E6Q84BI67XIg7jMGA==
X-Received: by 10.25.27.12 with SMTP id b12mr4455992lfb.97.1455848937550; Thu,
 18 Feb 2016 18:28:57 -0800 (PST)
MIME-Version: 1.0
References: <56C6516E.7040808@xiphosresearch.co.uk>
In-Reply-To: <56C6516E.7040808@xiphosresearch.co.uk>
From: Gynvael Coldwind <gynvael@coldwind.pl>
Date: Fri, 19 Feb 2016 02:28:47 +0000
Message-ID: <CAAnPYQ4OJfyD9CWXVihRBDMkXU44edzWSm9mUUn5S7-tDb0hGg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11401324c4fa52052c163eed
Subject: Re: [oss-security] Re: Address Sanitizer local root

--001a11401324c4fa52052c163eed
Content-Type: text/plain; charset=UTF-8

And if that fails, there's always the ASAN_SYMBOLIZER_PATH environment
variable, which just makes the ASANified binary execute the executable you
give it (
http://clang.llvm.org/docs/AddressSanitizer.html#symbolizing-the-reports) ;)


On Fri, Feb 19, 2016 at 12:19 AM Darren Martyn <
darren.martyn@xiphosresearch.co.uk> wrote:

> Hi List,
> Figured I would add this to the thread to keep it amusing.
>
> Here is a fully functioning local root by clobbering /etc/ld.so.preload
> instead of /etc/shadow (which breaks things spectacularly). I am using a
> fairly messy "symlink spray"/"symlink carpet bombing" technique.
>
> Simply point it at a setuid-root binary compiled with asan and away it
> goes.
>
> Video: https://www.youtube.com/watch?v=jhSIm3auQMk
> PoC Code: https://gist.github.com/0x27/9ff2c8fb445b6ab9c94e
>
> Development/Testing was done on a Debian 8.3 VM that was last updated
> last week.
>
> Now, I wonder - what can actually be done to mitigate against this,
> besides "don't use ASAN in production"?
> Is there something that can be done ASAN-side?
> Because due to how ld.so.preload is parsed so, uh, forgivingly, all the
> attacker needs to control is one line in the output file. Could it check
> for symlinks before writing the log?
>
> Regards,
> Darren.
>
>

--001a11401324c4fa52052c163eed--
