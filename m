X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["410" "Monday" "7" "March" "2016" "18:53:33" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>" "7" "Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?" "^Date:" nil nil "3" "2016030717:53:33" "[oss-security] Cgit XSS \"vulnerability\" has no CVE?" (number mark "        Jason@zx2c4. Mar  7    7/410   " thread-indent "\"Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?\"\n") "<20160305174103.GE6474@more-magic.net>" ("<20160305174103.GE6474@more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26186 invoked by uid 550); 7 Mar 2016 17:53:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26165 invoked from network); 7 Mar 2016 17:53:47 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to
	:content-type; s=mail; bh=pPPeO9ph5jGWogt/EFkBvV8EfmY=; b=ZJIzpP
	mPKACso4ZBTapRO9nXMF/svIKn8/JCo2dlX82a9bLo5E8+ogBTCtWSWvX654EGTY
	DarRjqPtrd0uxJvjg3sNDJPRBh91fNhU6bweV0JsGtFd4CgLUQdXWXCKwffIGVfV
	9HE6NUhdfojY6VK6hiQDp4TfMqeRg02Xr+E4JsWtOvxQ8yRbUWJ46DjUNYbm3WoF
	CSfPVDcWp2BG2+qeSavgbY++CyUzZgyrO9FRU1q5zLvVjsvTAchVH0HIUFqZZXmt
	mLRAZ8SOe2n4ML2WiF0pDtr115QCMFqWMQqETB+kG7Bcpkp/ymhZ2ZnIkRL/mrqW
	SWn4uy7QyLQEFSNg==
X-Gm-Message-State: AD7BkJJ/rp61do3+HHxjj1hhOiBN2C4fp6e+FABo0z/UdLMmdgCVeSPHD8a4Gkq6KSD+4TVzsTnPhdUN0Rck+w==
MIME-Version: 1.0
X-Received: by 10.194.123.102 with SMTP id lz6mr26883429wjb.2.1457373214096;
 Mon, 07 Mar 2016 09:53:34 -0800 (PST)
In-Reply-To: <20160305174103.GE6474@more-magic.net>
References: <20160305174103.GE6474@more-magic.net>
X-Gmail-Original-Message-ID: <CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>
Message-ID: <CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 7 Mar 2016 18:53:33 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Cgit XSS "vulnerability" has no CVE?
To: oss-security <oss-security@lists.openwall.com>

On Sat, Mar 5, 2016 at 6:41 PM, Peter Bex <peter@more-magic.net> wrote:
> This allows for an XSS attack by anyone with write access: If you can
> push to a git repository for which the "txt2html" converter is activate,
> you can create a README or README.txt and insert arbitrary HTML.

The XSS situation in those release notes does not cover what you've
described here. You're conflating two separate things.
