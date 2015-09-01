X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1003" "Monday" "31" "August" "2015" "22:41:53" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUCRbOcpFHyU=kju+WTZju-orChnU50wOP2Tw=8V3mpUtA@mail.gmail.com>" "24" "Re: [oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015090105:41:53" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        lcamtuf@core Aug 31   24/1003  " thread-indent "\"Re: [oss-security] Terminal escape sequences - the new XSS for admins?\"\n") "<20150817202748.GA3032@openwall.com>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<CALx_OUDJbSmjcgOAe27h9k4h5dq6cHUXOTgbO9YTkCanopGzUA@mail.gmail.com>" "<20150817202748.GA3032@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9568 invoked by uid 550); 1 Sep 2015 05:43:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9549 invoked from network); 1 Sep 2015 05:43:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=xUI0xrZcrnE4cB6KI2963DN4s3nOqr6Ax/KeS7zu/Ng=;
        b=FJlUmi3eGQebv/PeGnsrDqm9O7Z5LlDFouMegr18hF8PG3PKgW7W63LnygeKqT2ix+
         q3txz/YZ4N5HMoW6kbVQUQOvVf8CCWDcjGpMPPUbYC1rdg3U+1IWE9pPCbvxpEqP8jnP
         U/jlsZbsvk4JHzTxFDroKB3ogR0+3XR+CX457e/zUdo2gU6anYA2yWUlh7Yn3rOP0nEa
         IgyjstsBsC4zOjeaPSQ7l/SZySzVl6MeUOMF2BoN7WEo1TeTZeGs0WItSQEVqDd4XNQK
         tOKz1+SBpyipN34DWosWAON8HCz4VS+pFClUe9I6Lh1GaFdsKxfDkdmytO4lvt7fjbMk
         b8xA==
X-Gm-Message-State: ALoCoQmSxbZHM5+VlXOUA5/j7kARuMb9mKnrQkmN2nDsYvHY3M0lTBo+AnInQL2bRwz5GprR1zZM
X-Received: by 10.107.14.84 with SMTP id 81mr32819089ioo.195.1441086181283;
 Mon, 31 Aug 2015 22:43:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150817202748.GA3032@openwall.com>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
 <CALx_OUDJbSmjcgOAe27h9k4h5dq6cHUXOTgbO9YTkCanopGzUA@mail.gmail.com> <20150817202748.GA3032@openwall.com>
Message-ID: <CALx_OUCRbOcpFHyU=kju+WTZju-orChnU50wOP2Tw=8V3mpUtA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 31 Aug 2015 22:41:53 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Terminal escape sequences - the new XSS for admins?
To: oss-security <oss-security@lists.openwall.com>, =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>

> This is why I am not happy about this thread's apparent decision to
> dismiss unsafe handling of likely terminal escapes (the known ranges) in
> untrusted input in individual programs as long as there are no known
> worse-than-DoS intentional features in modern terminal emulators.
> I would be happier to have this layer of security as well.  Besides, DoS
> issues are a concern too, and are obviously available as intentional
> features in typical terminal emulators.

I definitely think it deserves a closer look. Here are three recent
finds that kcwu reported after apparently testing GNU screen with
afl-fuzz:

https://savannah.gnu.org/bugs/?45713
https://savannah.gnu.org/bugs/?45715
https://savannah.gnu.org/bugs/?45714

While I suspect that command injection bugs (the thing that started
the thread) are fairly rare, I fully expect that escape sequence
handling is under-audited and that there's plenty of mem corruption
bugs to be found.

(Cc:ing Hanno in case he wants to have a look.)

/mz
