Received: (qmail 3483 invoked by uid 550); 3 Jul 2024 06:26:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22274 invoked from network); 3 Jul 2024 02:01:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719972111; x=1720576911; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjiaKOKpnmrqEU2ST/MnSJ9RfodVXLS2J46jaQKH1DU=;
        b=c5djf+Dvc4NZOQzog8x8Tl/WDZ4JDtrp6EfbwqpjUvgUxd5O1VWkJliTXyjy/GOhPU
         dz1mK9Wa/n3936viiPNlisRoXRJSrnbAN2m8AKlNHENjW/9BgLEOH1/G5ufhiPGyAMa8
         FBBhD3u3uKWVaH+AbG6wcs7GFbRcyfvTo5pD70tmibKY68wUE9w5NLIUphuLlDAvAp6r
         K5MSfoKgupfoFSzmu5uE+SgF71Zx/cujIyU9CG+tDGCbLjMZLU/Bah90M9ZwQgjBYWV8
         9DhuKSPrbRMiU8HqwV2IqWGUeJ9T0Foh6010t3mjA3z48Cj14Td2AT/MPCZplQ1i98JV
         wc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719972111; x=1720576911;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TjiaKOKpnmrqEU2ST/MnSJ9RfodVXLS2J46jaQKH1DU=;
        b=gJFFkrX1mO1jauP9QpKjSN9gb8Z6TCdT+0aA6DOzKzJ3KwpyVYua6djzOY/yppRV2Y
         Fsj5BEqDU/mqQcl/LbMYO10N6UrVase7lrNGV8mrXrADBlP6OrtiFA1yNtgD8iUSf3P/
         QdxJzd/OrWYQ0ZmHrBlzfHePXwEqpexiRtdNq5dVX8HahUEE8FVnK6V4q0PFrvx1Vjwn
         Kfve6i+Bph5zqvGn+MTPcluFVkFlPyUdS2kxJWZO8ucUJYIGudFNjdptRVdCoXUCusWo
         QZJqxdQPtPJGq58M42/aCHxw5jbZ41qHndqqJ9qyl9RqZNXtqMJkWw1dEyWLaOxu1mlI
         HFrg==
X-Gm-Message-State: AOJu0YxAMR5JrE2NUXQm23h1CfQ/i6GEQWj9NqGJG92XQDT3bvhtMSju
	IETF6MK78iaWcgE4Dg/HycAuUfFcG1pGnVF6lIwfa+TA6uRl1HWDTuE5EQ==
X-Google-Smtp-Source: AGHT+IGVrq/rs8VFtqtTtKMDGchkioS8qc0LK0rFVnAvyJAJTV+QFGSXr5OM1cQ3CbjQoNweg1U5Lg==
X-Received: by 2002:a4a:e1c3:0:b0:5c4:396d:dca8 with SMTP id 006d021491bc7-5c4396de055mr10197225eaf.0.1719972110550;
        Tue, 02 Jul 2024 19:01:50 -0700 (PDT)
Message-ID: <6684B10C.3070904@gmail.com>
Date: Tue, 02 Jul 2024 21:01:48 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <20240701083838.GA12787@localhost.localdomain>
In-Reply-To: <20240701083838.GA12787@localhost.localdomain>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on glibc-based
 Linux systems

Qualys Security Advisory wrote:
> Qualys Security Advisory
>
> regreSSHion: RCE in OpenSSH's server, on glibc-based Linux systems
> (CVE-2024-6387)
>
>
> [...]
>
> ========================================================================
> SSH-2.0-OpenSSH_4.2p1 Debian-7ubuntu3 (Ubuntu 6.06.1, from 2006)
> ========================================================================
>
> [...]
>
> ------------------------------------------------------------------------
> Practice
> ------------------------------------------------------------------------
>
>     I learned everything the hard way
>         -- The Interrupters, "The Hard Way"
>
> To mount this attack against sshd, we initially faced three problems:
>
> - The House of Mind requires us to store the pointer to our fake arena
>   at address 0x08100000 in the heap; but are we able to store attacker-
>   controlled data at such a high address? Because sshd calls pam_start()
>   at the very beginning of the user authentication, we do not control
>   anything except the user name itself; luckily, a user name of length
>   ~128KB (shorter than DEFAULT_MMAP_THRESHOLD) allows us to store our
>   own data at address 0x08100000.
>
> [...]
>
> Finally, our long user name also allows us to control the potentially
> uninitialized next field of 20 different structures (through leftovers
> from temporary copies of our long user name), because pam_start() calls
> _pam_add_handler() multiple times; i.e., our large race window contains
> 20 small race windows.
>
> [...]
>   

A thought occurred to me late last night:  this exploit required the use 
of a very long fake user name (~128KB).  No legitimate account will have 
such a name; should defense-in-depth motivate limiting maximum user name 
length to some (un)reasonable value?  (The actual longest user name on 
the system cannot be used to set the limit because doing that would leak 
the length of the longest valid user name.)  I doubt any real system has 
even 256-byte-long user names, so a 1KiB limit (perhaps by default, with 
a configuration option (I propose "MaxLoginNameLen" to start a 
discussion) to raise or lower it?) would be far beyond any reasonable 
need, but would (or so it seems to me) have made at least this exploit 
much harder, if not impossible.

There may actually be a case for putting the user name into a static 
buffer here:  its length should be limited anyway to prevent abuse and 
keeping it away from the heap may be helpful as a defense-in-depth measure.

If there currently really is no limit at all, outrageously long fake 
usernames (limited only by bandwidth and LoginGraceTime?) could be 
directly used for a simple denial-of-service by consuming memory on the 
server, given sufficient bandwidth available to an attacker.


-- Jacob

