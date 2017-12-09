X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1718" "Friday" "8" "December" "2017" "19:18:53" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1512778733.15005.59.camel@gmail.com>" "45" "Re: [oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" nil nil nil "12" "2017120900:18:53" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" (number mark "U       danielmicay@ Dec  8   45/1718  " thread-indent "\"Re: [oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1\"\n") "<20171208090949.j6zlcrgv6djmwq4l@mwanda>" ("<CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>" "<20171207111718.GA1230@kroah.com>" "<20171208090949.j6zlcrgv6djmwq4l@mwanda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7559 invoked by uid 550); 9 Dec 2017 00:19:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7541 invoked from network); 9 Dec 2017 00:19:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nftWrCzXYxWW32PqJW53mRmKlMcJfj9Cof+xJTYKQ5Q=;
        b=aCI31C2tozsU3BUM6V15riiOFvh6j/2505oRqh9GiWjocDnvLsjPK5UdYSQopEX90k
         n8oSgbMrGyfY8mdwiSXxnIXB5MDLnAbMeqn+3zy93QVtlS9R3XnoSx/dGhDJ4J6u6tmB
         kNqXzK6ND1eTJFAmpEaQSX/39z4ihtvje42n5CFSByWVhJKLPWGS6Wk1lhKPLaKOr8aT
         adevzbRXE74mrnnURbbXHYFeghEktOeANFmNy8PhbOftcAenr6fWTcR1KhFXuZVZtLEa
         tEN0NCaB4xjt6KlInuqAcrTxFl0m7FV/ZVH+vfb2ofhNSPnnISV2Ezgk2VmZE0HMO+Rc
         tX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nftWrCzXYxWW32PqJW53mRmKlMcJfj9Cof+xJTYKQ5Q=;
        b=L68UKFzP47HUiC7DAPJTGGr3b8+tx7FtMjLH1Xkpp7ADdl39PAWNGVSQRIKf+ffO+K
         2FxZYvJUC4tVy8E2JtqAIO3tFOjanA+4q7iXUaPknLcPNZgeAxyy4JCsv90R9DN41tu7
         NqeoMx2anhzWlUL+j5vanvqnTVmA2w9jklqrLUrW4C26bTyd4TTNq5D8C7wExuUrMnb7
         LrLS4RPKJSQe2PHzoXC9Oy3FZAtC6IctUYY9YqvhtWsEyWv42UcCTXvgeX0di0gFyfBB
         f+c/92ZemKJV2OKryaYu2oJPSoXBOhbHX8IHIQdS+lBuiqmY/tGR1q8drDgySyuLbdWk
         fIFQ==
X-Gm-Message-State: AKGB3mJg/lX0/7Ifo4XG+j9xpoi3zsx3aSbzBivbNmzAke6W0ECSV8lw
	S+q/bupZ534rK/1zxfUxx5yad2p5
X-Google-Smtp-Source: AGs4zMY2PwNXGHvAssnnQfYb+oy+zdVlxWphJIR6cFSo3y8D6wL7vCar5ImA3Zo3UjXVieQzVjKT0A==
X-Received: by 10.36.94.202 with SMTP id h193mr7692071itb.129.1512778735869;
        Fri, 08 Dec 2017 16:18:55 -0800 (PST)
Message-ID: <1512778733.15005.59.camel@gmail.com>
From: Daniel Micay <danielmicay@gmail.com>
To: oss-security@lists.openwall.com, Greg KH <greg@kroah.com>
Cc: at zhou <zhouat2017@gmail.com>, security@kernel.org,
 secalert@redhat.com,  security@suse.com, tglx@linutronix.de,
 linux-distros@vs.openwall.org
Date: Fri, 08 Dec 2017 19:18:53 -0500
In-Reply-To: <20171208090949.j6zlcrgv6djmwq4l@mwanda>
References: 
	<CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>
	 <20171207111718.GA1230@kroah.com> <20171208090949.j6zlcrgv6djmwq4l@mwanda>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: signed integer overflow in common_timer_get
 on linux 4.15.0-rc1

On Fri, 2017-12-08 at 12:09 +0300, Dan Carpenter wrote:
> On Thu, Dec 07, 2017 at 12:17:18PM +0100, Greg KH wrote:
> > On Thu, Dec 07, 2017 at 06:01:43PM +0800, at zhou wrote:
> > > Hi all,
> > > 
> > > credit   to   L5@360vulcan team
> > > 
> > > I fuzzed the linux kernel and find signed integer overflow on
> > > linux
> > > 4.15.0-rc1+.
> > > the crash log can see below, the .config and the poc file ,please
> > > see the
> > > attachments.
> > 
> > Odd, doesn't seem to affect a 4.9 or 4.15-rc2 kernel here on my
> > machines, is there something specific in the .config that might be
> > triggering this?
> > 
> 
> Greg, you're running with UBSAN?
> 
> I've always wondered how UBSAN was going to work because there are
> *so*
> many harmless integer overflows in the kernel.  That's my main
> challenge
> with trying to use static analysis for integer overflows.
> 
> regards,
> dan carpenter

There are options for marking intended overflows to start moving towards
it being more useful. There's no_sanitize for marking intended overflow,
etc. at a function scope. The overflow intrinsics bypass the checks so
they can be used to mark specific operations as having intended overflow
for more clarity and better coverage.

Of course, people would need to agree that it has enough value to be
worth putting in this effort. It can improve code readability despite
the extra verbosity in these cases too, especially with good taste when
choosing no_sanitize vs. marking specific operations.

Android uses both signed + unsigned overflow checks in production for
their media stack via the trapping mode (debugging mode used more
broadly) so it can be quite successful and can go beyond just using it
for debugging.
