Received: (qmail 30654 invoked by uid 550); 19 Oct 2023 22:53:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22386 invoked from network); 19 Oct 2023 22:44:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697755452; x=1698360252; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qDQ0Sh8e45MdkJABU5JYBklY+cQ6mT2PQpU5oPkXb2c=;
        b=TFUUjBUIDz1xUh4inyNmS/02WjQJd3PgRfTrYZAzSeTdLq9ccv+H/daIRek5wQVRmo
         486CtFWR9Js0/CTWPRCu760muVUbHDpvLZ9a/mIQ+GA3xtMNKUDz1kJkGA6FQsp5EP+a
         Rm+QDQFP5/Wdm3wqfVh8IRONsM8zAGp7pCAN8QBYIQGC1Ob21rPYesHezPxa4MHZfotc
         rB8Rbs1JmcouYc8XpcHVvOuYoXk2dZUzmb9sVoY6xdNOTGlt0dNB3qC7XmDutS8v3EhI
         CL0rC7ry6cdmeeJXwJw1GhrwcEnVV5tRzbuTxpMwt1RqZQ6PfJvxDZ1dPSQHFo/HaXAl
         MSHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697755452; x=1698360252;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDQ0Sh8e45MdkJABU5JYBklY+cQ6mT2PQpU5oPkXb2c=;
        b=iB2duFLU/2P2wTJ0G3+wF8jY9PLmopASdTA323hoPgICxQp9jEqK6NwYLhvg+x8IXz
         VG9bo5mZAnxG9EDpYwCq3dmpsOoc00hM+gf5JZ9cZw/c4rxJ1e3jBxD5AvpU9NV/64as
         6DReCezZ076noqwbOSHGkS5O3FSzXBTCuagFOr1dQnQXwNg6B9pMP2oRUs2WtfKdqZCY
         boESOrt/6iaI1EujEP6nQw1TVjAgeUv1tLx+STrysNZKMeGKtv23bHETWUwjoMxSHHC1
         ZxEMw6PbNvI6zBe5RR0yhDys61iER38BIep1Nf9PNRqD33oUVtq5TW7wJObeUbc1PXus
         oQcA==
X-Gm-Message-State: AOJu0YzFhVgvwjKLdMx1gFThdgs76VM66iXS3x1tN32hyH+tMGo+rlJA
	Q6yr7E8VRptktpdVBs1H5ppcLoCp8Aw=
X-Google-Smtp-Source: AGHT+IEEaWtVP8qQj1xniGHKAYFAFNbsw5r5zcDyakx6mt99JK8Qn7wDY4gkqTWA83kXXH74N/JoDQ==
X-Received: by 2002:a05:600c:444a:b0:401:c338:ab94 with SMTP id v10-20020a05600c444a00b00401c338ab94mr143952wmn.29.1697755452168;
        Thu, 19 Oct 2023 15:44:12 -0700 (PDT)
Message-ID: <7039466aa03ec8a90e1ce3a2ae983421.a13627b7@limousine.hussar>
Date: Fri, 20 Oct 2023 01:44:10 +0300
From: Turistu <turistu@gmail.com>
To: oss-security@lists.openwall.com
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
 <20231019165354.kkjoxdbedeodyfik@yuggoth.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019165354.kkjoxdbedeodyfik@yuggoth.org>
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Thu, Oct 19, 2023 at 04:53:55PM +0000, Jeremy Stanley wrote:
> On 2023-10-19 17:04:10 +0100 (+0100), Sam Bull wrote:
> [...]
> > Also a problem with shell security. If you paste something with

That's not a problem with "shell security". Paste is just a form of
**trusted user input** (just as keyboard input). The bracketed-paste
and other features are for convenience, they're not supposed to
help against a rogue X11 app (who could just as well simulate keyboard
input with the XTest X11 extension instead of complicating itself
with setting up selections that the user has to paste).

> > line breaks into bash, it executes them. If you paste the same
> > into fish, it doesn't (it'll display the multi-line input and
> > expect you to hit the enter key to execute it as a command).
> 
> That observation may be outdated. At least my bash 5.2.15 on Debian
> does not execute pasted newlines, it treats it as a multi-line
> command and waits for an actual enter keypress

Indeed, as already described in my report. Bracketed-paste is the default
in bash on all recent systems.

> (tested inside a few
> different terminal emulators including vanilla xterm, so pretty sure
> it's not being mitigated at that layer).

It pretty much **is** mitigated at that layer. If xterm itself weren't
filtering out the ESC (ascii 0x1b) character in the pasted data, then
the bracketed-paste feature of bash or zsh could've been easily bypassed
by inserting a "\x1b[201~" escape (= end of pasted data) in the payload.
(As already mentioned in the report too).

Anyways, the examples were meant just as ... examples, as like for
illustration. I've just chosen them because they were the simplest
and cutest.

But there are a thousand more ways for an attacker to leverage that hole
in Firefox. Many programs (including Firefox itself!) could be easily
crashed by garbage data from the clipboard. Attacker-controlled data
could find its way into shell scripts via `var=$(xsel)`, etc.
