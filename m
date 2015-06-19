X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1173" "Thursday" "18" "June" "2015" "23:12:12" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVWKmbss3+7MjzGDgq49oexrprxE=125H4d2TMk128t0Q@mail.gmail.com>" "38" "[oss-security] Re: CVE request: Content type spoofing in ruby gem paperclip <4.2.2" nil nil nil "6" "2015061906:12:12" "[oss-security] Re: CVE request: Content type spoofing in ruby gem paperclip <4.2.2" (number mark "        reed@reedlod Jun 18   38/1173  " thread-indent "\"[oss-security] Re: CVE request: Content type spoofing in ruby gem paperclip <4.2.2\"\n") "<CALPTtNXEAzgdNyfFe-c7D07eLEp27Zv3Pxqa7-mGWAoq-_0w_g@mail.gmail.com>" ("<CALPTtNXEAzgdNyfFe-c7D07eLEp27Zv3Pxqa7-mGWAoq-_0w_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11668 invoked by uid 550); 19 Jun 2015 06:12:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11650 invoked from network); 19 Jun 2015 06:12:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=BDwtN7Sg0/k8gWfXcBpTKAnVnSnyJ+mKDXfWNrN5o2s=;
        b=VrP1XkqqBoYofkobbYUwJ/98PAPFjzA0bVX0pZhzOeo7ARGM+ddbdl7zrmkY1vp/gX
         FgwQPlthrUrKFs8NQcdkOyKEmDHSQx+ghQkKcJR6n+OmzqxCtlleSOPEsAJmsHbGSnSQ
         IYMAd4v/1CdccoVN80mkYa5bwHyYPu5rEHHfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=BDwtN7Sg0/k8gWfXcBpTKAnVnSnyJ+mKDXfWNrN5o2s=;
        b=ZEMzBj42IEpD7IjRk7tYxQ9igIxzJ3CPXSss1pKYbikdQl8a7xzIqtJrv3dELXE5k/
         MnU+yAKUDk3dwvItqoAat66aPK5dEguznE9UnENr+vfu89BV3zIrQoiKlTbaEzmeADQa
         kUDpm5JmwAwohoJkgYtEuuhIe/XLyFEhF6WZs3CxYA9G/NflgnBb/uz/r2+ttMVkcLX6
         nT83uurpORAi18ePp7+YI2f0i2hddEtC3R/fvYzHEog1qLLHLG0bc+rVkW3EUe5PONZ5
         tvAgfLuHCVCs7BQ/Ib/+30igP2AA4qFc9b9x5aIsYKjLHfXNWfggQrRWScWBjIFYSsyP
         lkGg==
X-Gm-Message-State: ALoCoQnoP32lpm9DO3ak3QmEB7wOLHiLrqS/EyjyOa7yy0Vz0KNFjCVPp5iOEHQELlqjdBw9PVeq
X-Received: by 10.129.134.131 with SMTP id w125mr3127398ywf.115.1434694354552;
 Thu, 18 Jun 2015 23:12:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALPTtNXEAzgdNyfFe-c7D07eLEp27Zv3Pxqa7-mGWAoq-_0w_g@mail.gmail.com>
References: <CALPTtNXEAzgdNyfFe-c7D07eLEp27Zv3Pxqa7-mGWAoq-_0w_g@mail.gmail.com>
Message-ID: <CALPTtNVWKmbss3+7MjzGDgq49oexrprxE=125H4d2TMk128t0Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114efe805d5cc50518d8cf60
Date: Thu, 18 Jun 2015 23:12:12 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Content type spoofing in ruby gem paperclip <4.2.2
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a114efe805d5cc50518d8cf60
Content-Type: text/plain; charset=UTF-8

OSVDB noticed that this seems to be CVE-2015-2963

http://jvn.jp/en/jp/JVN83881261/index.html (no idea why they call it an
XSS)

https://robots.thoughtbot.com/paperclip-security-release is the official
notification and just references the commit message.

~reed

On Thu, Jun 18, 2015 at 1:56 AM, Reed Loden <reed@reedloden.com> wrote:

> Saw this in paperclip's NEWS file, and I couldn't find a CVE for it.
>
>
> https://github.com/thoughtbot/paperclip/commit/9aee4112f36058cd28d5fe4a006d6981bd1eda57
>
> """"
> There is an issue where if an HTML file is uploaded with a .html
> extension, but the content type is listed as being `image/jpeg`, this
> will bypass a validation checking for images. But it will also pass the
> spoof check, because a file named .html and containing actual HTML
> passes the spoof check.
>
> This change makes it so that we also check the supplied content type. So
> even if the file contains HTML and ends with .html, it doesn't match the
> content type of `image/jpeg` and so it fails.
> """"
>
> Fixed in paperclip 4.2.2.
>
> ~reed
>

--001a114efe805d5cc50518d8cf60--
