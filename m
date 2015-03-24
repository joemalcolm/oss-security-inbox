X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Tuesday" "24" "March" "2015" "16:07:19" "-0400" "Eric Windisch" "ewindisch@docker.com" "<CAAZDpLcguYi_qQNHopS5-25CXPU_6oSGoCbVQE+5UuNGYbAsgQ@mail.gmail.com>" "42" "Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" nil nil nil "3" "2015032420:07:19" "[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" (number mark "        ewindisch@do Mar 24   42/1413  " thread-indent "\"Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier\"\n") "<5511AD55.8040006@redhat.com>" ("<5510F66A.9030202@redhat.com>" "<871tke8ngu.fsf@mid.deneb.enyo.de>" "<5511AD55.8040006@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17872 invoked by uid 550); 24 Mar 2015 23:56:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3374 invoked from network); 24 Mar 2015 20:07:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=amKOorgD51Sxc+jNVOiDF0kjYue0S0YHTniW0mb2w9o=;
        b=dIYwc7ts2o7XNrsqRGihdNcPIOOultvt0fqCGCtzT88wM3y3/y0y6yV4EItVhD3Rrq
         L6JqsTpy6f3x4jZrQwrDl/rGceSzx8r71Bz7Ocr++riJe3saWKJ1vJALWq9D9goh193C
         PJU/SpETe8GkVKMrvHLxzAN/ditKfDGyaPPTrnZdPaO6DQKZSHG3Dd8CZU2E0APss+of
         4f8fFo7kmDUHXUNNBWFvi6UHl0MYLwUgc+IGD0GukLzLII9TbhSkxGxq9DgDvcQLxy1Y
         JA/9Z83SA+t4459NSUksW4TOq3Rluc5XfxNMm3tjLqQWbDHUipkXcCZAemMoClOqV+5n
         RCZg==
X-Gm-Message-State: ALoCoQlMh4GQpwvqCyH0jEsUfO1Oj3F+COm/WZJLKp13F2ABbjOmZUPLoyNeat9FoeN+bLCUN6Ih
MIME-Version: 1.0
X-Received: by 10.112.155.196 with SMTP id vy4mr5440707lbb.56.1427227639600;
 Tue, 24 Mar 2015 13:07:19 -0700 (PDT)
X-Originating-IP: [72.78.105.19]
In-Reply-To: <5511AD55.8040006@redhat.com>
References: <5510F66A.9030202@redhat.com>
	<871tke8ngu.fsf@mid.deneb.enyo.de>
	<5511AD55.8040006@redhat.com>
X-Google-Sender-Auth: Rjodwes3X-TVPQEBSJsN8yIfMII
Message-ID: <CAAZDpLcguYi_qQNHopS5-25CXPU_6oSGoCbVQE+5UuNGYbAsgQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0112cac278ef8a05120e54ae
Date: Tue, 24 Mar 2015 16:07:19 -0400
From: Eric Windisch <ewindisch@docker.com>
Reply-To: oss-security@lists.openwall.com
Sender: eric@windisch.us
Subject: Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in
 >=1.5 and possibly earlier
To: oss-security@lists.openwall.com

--089e0112cac278ef8a05120e54ae
Content-Type: text/plain; charset=UTF-8

>
>
> tjay@  (our docker guy) verified they were fixed as you can see from his
> comments in the bugs.
>
> This is an example of why we need to clean these old things out. Nobody
> really cares about them, and in all likelihood they got fixed by upstream
>

It would seem so, yes.

For the 'tmp' issue, we were contacted at Docker about tmp directory usage
during building or running of tests for Docker itself. It is not clear if
CVE-2014-0047 is a reflection of this, but it appears so. In that specific
case, we performed triage and determined that either no such abuses of tmp
existed at the time, or that those uses of tmp were run within containers
in such a way that no vulnerability existed.



> > (CVE-2014-0048)
> > Could this be a dupe of the index.docker.io registry misconfiguration
> > that had at least one redirect to http:// (now fixed) for the actual
> > (unverified) image data?
>
> No, this was stuff like downloading debian signing keys over http rather
> than https, and other sensitive content in similarly unsafe ways.


>From the descriptions I've read here, I had also thought this was a
duplicate of CVE-2014-5277 (HTTP downgrade attack against registry).

Both of these reports precede the establishment of a focused security team
and process at Docker.

Regards,
Eric Windisch

--089e0112cac278ef8a05120e54ae--
